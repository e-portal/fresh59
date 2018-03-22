<?php

class Zend_View_Helper_Url2 extends Zend_View_Helper_Url {

    public function url2(array $urlOptions = array(), $name = null, $reset = false, $encode = true) {
        $frontController = Zend_Controller_Front::getInstance();
        $requestParams = $frontController->getRequest()->getParams();

        // Получаем все переданные параметры
        $params = array_diff_key(
            $frontController->getRequest()->getParams(),
            array('controller', 'action', 'catid'));

        //Меняем значение параметров на нужные
        foreach ($urlOptions as $key => $val) {
            $params[$key] = $val;
        }

        if (isset($params['catid'])) {
            if (strpos($frontController->getRequest()->getRequestUri(),'only-filters')!==FALSE) {
                $params['only-filters'] = NULL;
            }
        }
        
        // Сортируем параметры
        ksort($params);

        //Возвращаем Url с отсортированными параметрами
        $url = urldecode(parent::url($params, $name, true));

        return mb_strtolower($url);
    }
}
