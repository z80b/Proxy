<?php

require 'vendor/autoload.php';
require 'inc/config.php';
require 'inc/db.php';
require 'router.php';

Flight::path(__DIR__.'/class');

Flight::set('flight.views.path', __DIR__ . '/tpls');
FLight::set('flight.views.extension', '.tpl');

Flight::render('head', array (
	'styles' => '<link rel="stylesheet" href="/public/styles.css">',
), 'head_content');


Flight::map('renderBody', function($tpl, $params = [], $aliase = '') {
	$defaults = [
		'title'   => '',
		'styles'  => ['/public/styles.css'],
		'scripts' => null,
		'page' => 0,
		'limit' => 5,
	];

	$params = array_merge($defaults, $params);

	Flight::render($tpl, $params, 'body_content');
	Flight::render('paginator', $params, 'paginator_content');
	Flight::render('layout', $params);
});

