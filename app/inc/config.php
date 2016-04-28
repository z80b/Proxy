<?php

Flight::set('config', [
	'login' => 'root',
	'password' => '123',

	'data_server' => 'http://flight.dev/api/test',

	'db' => [
		'host' => 'localhost',
		'base' => 'proxi',
		'user' => 'root',
		'pass' => '',
		'charset' => 'utf8'
	],

	'public' => [
		'css' => 'styles.css',
		'script' => 'script.js',
	],
]);