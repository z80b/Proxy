<?php

/**
* 
*/
class User {

	static public function auth() {
		if (self::authorized()) {
			$_SESSION['uid'] = md5($_SERVER['UNIQUE_ID']);
			Flight::redirect('/');
		} else self::logout();
	}

	static public function login() {
		Flight::renderBody('login', [ 'title' => 'Login page' ]);
	}

	static public function logout() {
		unset($_SESSION['uid']);
		Flight::redirect('/');
	}

	static public function authorized() {
		$c = Flight::get('config');
		$q = Flight::request();
		return $q->data['login'] == $c['login'] && $q->data['password'] == $c['password'];		
	}

	static public function authorizedByGet() {
		if (isset($_GET['auth'])) {
			$c = Flight::get('config');
			$q = explode(':', $_GET['auth']);
			return $q[0] == $c['login'] && $q[1] == $c['password'];
		}
		return false;
	}

	static public function checkAccess($route) {
		if (isset($_SESSION['uid']) || User::authorizedByGet()) {
			return true;
		} else {
			if (isset($_SERVER['REDIRECT_URL']) && $_SERVER['REDIRECT_URL'] == '/api/test') return true;
			if (isset($_SERVER['REDIRECT_URL']) && $_SERVER['REDIRECT_URL'] != '/api/getdata') {
				User::login();
				return false;
			} else die();
		}		
	}

}