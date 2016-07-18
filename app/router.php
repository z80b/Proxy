<?php

Flight::route('/auth',        ['User', 'auth']);
Flight::route('*',            ['User', 'checkAccess']);
Flight::route('/login',       ['User', 'login']);
Flight::route('/logout',      ['User', 'logout']);

Flight::route('/',            ['App', 'viewData']);
Flight::route('/api/getdata', ['App', 'getData']);
Flight::route('/server',      ['App', 'serverInfo']);

Flight::route('/api/test',    ['Test', 'getData']);

