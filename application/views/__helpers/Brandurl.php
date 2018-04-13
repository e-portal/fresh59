<?php

class Zend_View_Helper_Brandurl extends Zend_View_Helper_Abstract
{

    public function brandurl($params)
    {
        if ($params['subdomain']) {
            $url = "http://fresh.590.ua/{$params['subdomain']}/";
        } else {
            $url = '/';
        }

        if (empty($params['brand'])) {
            $url .= str_replace(' ', '-', $params['cat_latin']) . 's';
        } else {
            $url .= str_replace(' ', '-', $params['cat_latin']);
            $url .= '/brand';
            $url .= '/' . str_replace(' ', '-', $params['brand']);
        }

        return mb_strtolower($url);
    }
}
