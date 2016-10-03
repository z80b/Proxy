<?php

class Http {
	static public $url;

	const error = [
        'error' => 1,
		'description' => 'file_get_contents not work',
        'data' => [],
    ];

	public function getData( &$data ) {
        $config = Flight::get('config');
        $link = self::createLink($config['data_server'], $data);
		return self::get($link);
	}

	public function get($link) {
        try {
			$curlSession = curl_init();
			curl_setopt($curlSession, CURLOPT_URL, $link);
			curl_setopt($curlSession, CURLOPT_BINARYTRANSFER, true);
			curl_setopt($curlSession, CURLOPT_RETURNTRANSFER, true);

			$response = curl_exec($curlSession);
			
			curl_close($curlSession);			
            return $response;//file_get_contents($link);
        } catch(Exception $e) {       
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