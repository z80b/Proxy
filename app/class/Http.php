<?php

class Http {
	static public $url;

	const error = [
        'error' => true,
        'data' => [],
    ];

	public function getData( &$data ) {
        $config = Flight::get('config');
        $link = self::createLink($config['data_server'], $data);
		return self::get($link);
	}

	public function get($link) {
        try {
            $response = file_get_contents($link);
            return $response;
        } catch(Exception $e) {
#            App::debug($e);
             die();            
            return self::error;
        }
	}

	private function createLink($url = '', $data = []) {
		$params = [];

		if (isset($data['url'])) {
			$url = $data['url'];
			unset($data['url']);
		}

		foreach ($data as $key => $value) {
			$params[] = $key. '=' .$value;
		}

		return $url . '?' . implode('&', $params);	
	}
}