<?php

Flight::set('config', [
	'login' => 'root',
	'password' => '123',

	'accounts'=> [
		'root'=> '321',
		'user'=> 'user'
	],

	'data_server' => 'https://raw.githubusercontent.com/z80b/Proxy/master/test_big.txt',
#        'data_server' => 'http://fssp.dackb.ru/api/test',
#       'data_server' => 'http://nagios.ckb.ru/api/getdata',
#        'data_server' => 'http://fssp.dackb.ru/test.txt/',       

	'db' => [
		'host' => 'localhost',
		'base' => 'proxy',
		'user' => 'root',
		'pass' => '123',
		'charset' => 'utf8'
	],

	'public' => [
		'css' => 'styles.css',
		'script' => 'script.js',
	],

	'fields' => [
		'OrgName' => 'OrgAddr',
		'NumberWithDate' => 'IspProizv',
		'Document' => 'IspDocCourt',
		'Article' => 'FinishIPDateReason',
		'Subject' => 'DebtReasonSumm',
		'Departament' => 'FsspAddr',
		'ContactFace' => 'FsspContact',
	]
]);