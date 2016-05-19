<?php

class App extends Flight {

	static $lines_per_page = 10;

	public function getData() {

		$defaults = [
			'area' => 0,
			'birth' => '',
			'patron' => '',				
			'name' => '',
			'fam' => '',
		];

		$query = array_merge($defaults, array_diff_key($_GET, [ 'auth' => NULL ]));

		$response = json_decode(Http::getData($query), true);

		if (isset($response['status'])) {

			$stm = Flight::db()->prepare("
				INSERT INTO  getdata (`login`, `fam`, `name`, `patron`, `date_birth`, `date_ins`, `area`, `request_ok`)
				VALUES (:fam, :name, :patron, :birth, CURRENT_DATE(), :area, :status);
			");

			$stm->bindValue('fam',    $query['fam'],        PDO::PARAM_STR);
			$stm->bindValue('name',   $query['name'],       PDO::PARAM_STR);
			$stm->bindValue('patron', $query['patron'],     PDO::PARAM_STR);
			$stm->bindValue('birth',  $query['birth'],      PDO::PARAM_STR);
			$stm->bindValue('area',   $query['area'],       PDO::PARAM_INT);
			$stm->bindValue('status', $response['status'],  PDO::PARAM_INT);

			$stm->execute();

			Flight::json($response);
		} else Flight::json(Http::error);
	}

	public function viewData() {

		$query = Flight::request()->query;
		if (isset($query['page'])) {
			$page = $query['page'];
		} else $page = 1;

		$stm = Flight::db()->prepare("
			SELECT SQL_CALC_FOUND_ROWS d.fam, d.name, d.fam, d.patron, d.date_birth, d.request_ok, r.name AS `region`
			FROM `getdata` AS `d`
			LEFT JOIN `regions` AS `r` ON `r`.`id` = `d`.`area`
			LIMIT :offset, :count
		");
		$stm->bindValue('offset', ($page - 1) * self::$lines_per_page, PDO::PARAM_INT);
		$stm->bindValue('count', self::$lines_per_page, PDO::PARAM_INT);
		$stm->execute();
	    $data = $stm->fetchAll();

	    $rs = Flight::db()->query("SELECT FOUND_ROWS()");
	    $count = $rs->fetchColumn();

	    $variables = [
	    	'title'  => 'Dashboard',
	    	'data'   => $data,
	    	'page'   => $page,
	    	'limit'  => self::$lines_per_page,
	    	'count'  => $count,
	    	'offset' => ($page - 1) * self::$lines_per_page,
    	 ];

	    Flight::renderBody('body', $variables);
	}

	public function debug($var)	{
		die('<pre>'. print_r($var, true) .'</pre>');
	}

	public function serverInfo() {
		Flight::renderBody('server', [ 'data' => $_SERVER, 'title' => 'Server variables' ]);
	}

	
}