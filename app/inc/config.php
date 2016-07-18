<?php

Flight::set('config', [
	'login' => 'user1',
	'password' => '3qIQ76XbmE',

#	'data_server' => 'http://flight.dev/api/test',
#        'data_server' => 'http://fssp.dackb.ru/api/test',
#       'data_server' => 'http://nagios.ckb.ru/api/getdata',
        'data_server' => 'http://fssp.dackb.ru/test.txt/',       

	'db' => [
		'host' => 'localhost',
		'base' => 'proxi',
		'user' => 'root',
		'pass' => '123123qwe',
		'charset' => 'utf8'
	],

	'public' => [
		'css' => 'styles.css',
		'script' => 'script.js',
	],

	'fields' => [
		'FIOWithBirth' => 'FIODATEADDR',
		'NumberWithDate' => 'IspProizv',
		'Document' => 'IspDocCourt',
		'Article' => 'FinishIPDateReason',
		'Subject' => 'DebtReasonSumm',
		'Departament' => 'FsspAddr',
		'ContactFace' => 'FsspContact',
	]
]);