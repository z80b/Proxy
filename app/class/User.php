<?php

class User {

	static public function start($route) {
		$request = Flight::request();
		$urls = ['/login', '/auth', '/logout', '/api/getdata', 'api/test']; 
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
		Flight::renderBody(null, [ 'title' => 'Login page', 'popup' => 'login' ]);
	}

	static public function logout() {
		unset($_SESSION['uid']);
		Flight::renderBody(null, [ 'title' => 'Logout page', 'popup' => 'logout' ]);
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

}