<?php

class Zend_View_Helper_Price extends Zend_View_Helper_Abstract {

	protected $_currencies;

	public function __construct() {
		$this->_currencies = Zend_Registry::get('currencies');
	}

	public function price($price, $currencyId = 6, $amount = 1) {
    	$currencyNamespace = new Zend_Session_Namespace('Currency');

    	if (is_array($currencyId)) {
            if (!isset($price['currency'])) {
                $currencyId = array_keys($currencyId);
                $currencyId = $currencyId[0];
            } else {
                $currencyId = $price['currency'];
            }
    	}
    	if (is_array($price)) {
            if (!isset($price['price'])) {
                $price = array_keys($price);
                $price = $price[0];
            } else {
                $price = $price['price'];
            }
    	}
    	if (is_array($amount)) {
    		$arr = array_keys($amount);
    	    $amount = reset($arr);
    	}
    	$result = $price * ($this->_currencies[$currencyId]['rate'] / $this->_currencies[$currencyNamespace->active]['rate']);
        $koef = $this->_currencies[$currencyId]['rate'] / $this->_currencies[6]['rate'];
        if (Alcotec_AuthFrontend::getInstance()->getUser()->type=='pap-club') {
            $koef+= 0.0015;
        }
        return $currencyNamespace->active == 4 ? round($result / $koef) * (int)$amount : round($result / $koef)*(int)$amount;
    }
}