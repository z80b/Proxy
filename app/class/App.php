<?php

class App {

	static $lines_per_page = 10;

	public function getData() {

		$request_date = date('Y-m-d H:i:s');

		$defaults = [
			'area' => 0,
			'birth' => '',
			'patron' => '',
			'name' => '',
			'fam' => '',
			'response' => '',
		];

		$config = Flight::get('config');

		$query = array_merge($defaults, array_diff_key(self::decode($_GET), [ 'auth' => NULL ]));

		$_response = Http::getData($query);

		if (is_array($_response)) $response = $_response;
		else {
			$response = json_decode($_response, true);
		}

		if (isset($response['error']) && intval($response['error']) == 0) {


			$stm = Flight::db()->prepare("
				INSERT INTO  getdata (`login`,`fam`, `name`, `patron`, `date_birth`, `date_ins`, `area`, `request_ok`, `response_date`, `response`)
				VALUES ('',:fam, :name, :patron, :birth, :request_date, :area, :status, now(), :response);
			");

			$stm->bindValue('fam',    $query['fam'],        PDO::PARAM_STR);
			$stm->bindValue('name',   $query['name'],       PDO::PARAM_STR);
			$stm->bindValue('patron', $query['patron'],     PDO::PARAM_STR);
			$stm->bindValue('birth',  self::correctDate($query['birth']),      PDO::PARAM_STR);
			$stm->bindValue('area',   $query['area'],       PDO::PARAM_INT);
			$stm->bindValue('status', (isset($response['error']) && $response['error']) ? 0 : 1,  PDO::PARAM_INT);
			$stm->bindValue('request_date', $request_date,  PDO::PARAM_STR);
			$stm->bindValue('response', json_encode($response, JSON_UNESCAPED_UNICODE),  PDO::PARAM_STR);

			$stm->execute();

			if (isset($config['fields'])) {
				$response = self::translateFields($response, $config['fields']);
			}

			Flight::json($response);
		} else Flight::json(Http::error);
	}

	public function json($data, $code = 200, $encode = false, $charset = 'utf-8') {
		Flight::json(json_encode($data, JSON_UNESCAPED_UNICODE), $code, $encode, $charset);
	}

	public function getAllData() {
		$stm = Flight::db()->prepare("
			SELECT d.fam, d.name, d.fam, d.patron, d.date_birth, d.request_ok, r.name AS `region`, r.response_date AS `response_date`
			FROM `getdata` AS `d`
			LEFT JOIN `regions` AS `r` ON `r`.`id` = `d`.`area`
		");
		$stm->execute();

	    $data =  $stm->fetchAll(PDO::FETCH_ASSOC);
	    App::json($data);
	}

	private function decode($params) {
		$_params = array();
		foreach ($params as $key => $param) {
			if (mb_detect_encoding($param, array('utf-8', 'windows-1251')) != 'UTF-8') {
				$_params[$key] = iconv('windows-1251', 'utf-8', $param);
			} else $_params[$key] = $param;
		}
		return $_params;
	}

	private function correctDate($date) {
		$dt = explode('/', $date);
		if (count($dt) == 3) {
			return "{$dt[2]}-{$dt[0]}-{$dt[1]}";
		}
		return '0000-00-00';
	}

	public function viewData() {

		$query = Flight::request()->query;
		if (isset($query['page'])) {
			$page = $query['page'];
		} else $page = 1;

		$stm = Flight::db()->prepare("
			SELECT SQL_CALC_FOUND_ROWS d.fam, d.name, d.fam, d.patron, d.date_birth, d.request_ok, r.name AS `region`,  d.response_date AS `response_date`
			FROM `getdata` AS `d`
			LEFT JOIN `regions` AS `r` ON `r`.`id` = `d`.`area`
			LIMIT :offset, :count
		");
		$stm->bindValue('offset', ($page - 1) * self::$lines_per_page, PDO::PARAM_INT);
		$stm->bindValue('count', self::$lines_per_page, PDO::PARAM_INT);
		$stm->execute();
	    $data = $stm->fetchAll(PDO::FETCH_ASSOC);

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

	private function translateFields($_response, &$_fields) {
	    function translateItem($data, $_fields) {
	        $new_data = array();
	        foreach ($data as $key => $value) {
	            if ($_fields[$key]) $new_data[$_fields[$key]] = $value;
	            else $new_data[$key] = $value;
	        }
	        return $new_data;
	    }
	    $new_data = array();
	    foreach ($_response['data'] as $key => $item) {
	        $new_data[$key] = translateItem($item, $_fields);
	    }
	    $_response['data'] = $new_data;
	    return $_response;
	}
}
