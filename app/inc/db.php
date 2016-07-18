<?php

$cfg = Flight::get('config')['db'];

$connect_str = sprintf('mysql:host=%s;dnbname=%s;charset=%s', $cfg['host'], $cfg['base'], $cfg['charset']);

Flight::register('db', 'PDO', array($connect_str, $cfg['user'], $cfg['pass']), function($db){
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->query('use proxi');
});