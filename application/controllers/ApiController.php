<?php

class ApiController  extends Zend_Controller_Action {

	public function getpostmatAction() {
		$phone = $this->_getParam('phone');
		$url = 'https://bpk-postamat.privatbank.ua/api/GetPostmatByClientPhone?phone=' . $phone;
		echo json_encode($this->_makeRequest($url));
		die;
	}

	public function getpostmatcitiesAction() {
		// $phone = $this->_getParam('phone');
		$url = 'https://bpk-postamat.privatbank.ua/api/GetPostamatsByServiceId?fmt=json&service=1';
		$cache = Zend_Registry::get('cache');
		$postamats = $cache->load('pb_postamats');
		if (empty($postamats)) {
			$postamats = $this->_makeRequest($url);
			$cache->save(json_encode($postamats), 'pb_postamats');
		} else {
			$postamats = json_decode($postamats);
		}
		$result = [];
		$currentCity = 'Харьков';

		array_map(function($item) use ($currentCity, &$result) {
			if (strpos($item->address, $currentCity . ',') !== false) {
				$result[] = $item;
			}
		}, $postamats->postamats);
		echo '<pre>';
		var_dump($result);
		// echo json_encode($this->_makeRequest($url));
		die;
	}

	private function _makeRequest($url) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		    'Content-Type: application/json; charset=UTF-8;',
		    'Accept: application/json;',
		    'Accept-Encoding: UTF-8;'
		));
		curl_setopt($ch, CURLOPT_URL, $url);
		// curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
		// curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
		// curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($object));
		// curl_setopt($ch, CURLOPT_POST, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		return json_decode(curl_exec($ch));
	}

	public static function getnewposts() {
		return ['key' => 'value'];
	}
}