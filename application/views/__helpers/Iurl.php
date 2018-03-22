<?php

class Zend_View_Helper_Iurl extends Zend_View_Helper_Abstract {

    public function iurl($params) {
        if ($params['subdomain']) {
            $url = "https://590.ua/{$params['subdomain']}/";
        } else {
            $url = '/';
        }
        if (empty($params['cat_latin'])) {
            $url .= str_replace(' ','-',$params['parent']);
            $url .= '/'.str_replace(' ','-',$params['cat']);
            $url .= '/'.str_replace(' ','-',$params['brand']);
            $url .= '-'.str_replace(array(' ','/'),array('-',''),htmlspecialchars($params['item']));
        } else {
            $url .= str_replace(' ','-',$params['cat_latin']);
            $url .= '/'.str_replace(' ','-',$params['brand']);
            $url .= '-'.str_replace(array(' ','/'),array('-',''),htmlspecialchars($params['item']));
        }
        return mb_strtolower($url);
    }
}
