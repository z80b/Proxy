<?php

class Test {
	
	public function getData() {
		$data = [
			'status' => 1,
			'data' => [
				'message' => 'All right',
				'error' => 0,
			],
		];
		Flight::json($data);
	}	
}