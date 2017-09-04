<?php

Flight::route('*',            ['User', 'start'], true);

Flight::route('/auth',        ['User', 'auth']);
Flight::route('/login',       ['User', 'login']);
Flight::route('/logout',      ['User', 'logout']);

Flight::route('/',            ['App', 'viewData']);
Flight::route('/api/getdataUL', ['App', 'getData']);
Flight::route('/server',      ['App', 'serverInfo']);

Flight::route('/api/test',    ['Test', 'getData']);