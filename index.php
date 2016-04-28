<?php
session_start();

require_once 'app/bootstrap.php';


//Flight::render('body', array('title' => 'Hello, i`m body'), 'body_content');
//Flight::render('layout', array('title' => 'Home Page'));

//$_SESSION['uid'] = 20;
Flight::start();
// if (isset($_SESSION['uid'])) {
// 	die();
// } else die('@');//User::login();

