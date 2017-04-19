<?php

/**
* 
*/
class User {

	static public function start($route) {
		$request = Flight::request();
		$urls = ['/login', '/auth', '/api/getdata', 'api/test']; 
		if (in_array($request->url, $urls)) return true;
		else if (self::is_authorized()) return true;
		else {
			if ($request != '/api/getdata') {
				Flight::redirect('/login');
			}
		}
		return false;
	}

	static private function access($login, $password) {
		$config = Flight::get('config');
		$accounts = $config['accounts'];
		return isset($accounts[$login]) && $accounts[$login] == $password;
	}

	static public function auth() {
		$request = Flight::request()->data;
		if (self::access($request->login, $request->password)) {
			$_SESSION['uid'] = md5($request->login .':'. $request->password);
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

	static public function is_authorized() {
		if (isset($_SESSION['uid']) || User::authorizedByGet()) return true;
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
			} else die('!!!');
		}		
	}

}