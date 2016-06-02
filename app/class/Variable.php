<?php

class Variable {

	public function get($name, $default = '') {

		$stm = Flight::db()->prepare("
			SELECT `value` FROM `variables`
			WHERE `name`=:name
			LIMIT 1
		");

		$stm->bindValue('name', $name, PDO::PARAM_STR);
		$stm->execute();
	    $data = $stm->fetchColumn();

	    if ($data) return unserialize($data);
	    else return $default;
	    
	}

	public function set($name, $value) {

		$_value = serialize($value);

		$stm = Flight::db()->prepare("
			SELECT `id` FROM `variables`
			WHERE `name`=:name
			LIMIT 1
		");

		$stm->bindValue('name', $name, PDO::PARAM_STR);

		$stm->execute();
	    $data = $stm->fetchColumn();

	    if (!$data) {
			$stm = Flight::db()->prepare("
				INSERT INTO `variables`(`name`,`value`)
				VALUES (:name, :value)
			");	
	    } else {
			$stm = Flight::db()->prepare("
				UPDATE `variables` SET `value`=:value
				WHERE `name`=:name
			");	    	
	    }

		$stm->bindValue('name', $name, PDO::PARAM_STR);
		$stm->bindValue('value', $_value, PDO::PARAM_STR);  	    
	    $stm->execute();

	    return $value;
	}
}