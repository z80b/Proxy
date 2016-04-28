<?php

/**
* 
*/
class User {

	public function auth() {
		if (self::authorized()) {
			$_SESSION['uid'] = md5($_SERVER['UNIQUE_ID']);
			Flight::redirect('/');
		} else self::logout();
	}

	public function login() {
		Flight::renderBody('login', [ 'title' => 'Login page' ]);
	}

	public function logout() {
		unset($_SESSION['uid']);
		Flight::redirect('/');
	}

	public function authorized() {
		$c = Flight::get('config');
		$q = Flight::request();
		return $q->data['login'] == $c['login'] && $q->data['password'] == $c['password'];		
	}

	public function authorizedByGet() {
		if (isset($_GET['auth'])) {
			$c = Flight::get('config');
			$q = explode(':', $_GET['auth']);
			return $q[0] == $c['login'] && $q[1] == $c['password'];
		}
		return false;
	}

	public function checkAccess() {
		if (isset($_SESSION['uid']) || User::authorizedByGet()) { 
			return true;
		} else {
			User::login();
			return false;		
		}		
	}

}