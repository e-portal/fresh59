<?php

class Zend_View_Helper_Css extends Zend_View_Helper_Abstract
{

    public function css($fileNames)
    {
        if (!is_array($fileNames)) {
            $fileNames = array($fileNames);
        }

        $defaults = array('common', 'bootstrap', 'jquery.validate', 'zoom', 'select2');
        $fileNames = array_merge($fileNames, $defaults);

        $hash = '';
        foreach ($fileNames as $fileName) {
            if (!empty($fileName)) {
                $path = $_SERVER['DOCUMENT_ROOT'] . '/styles/' . $fileName . '.css';
                if (file_exists($path)) {
                    $hash .= filemtime($path) . $fileName;
                }
            }
        }

        if (!is_dir("{$_SERVER['DOCUMENT_ROOT']}/styles/fresh_tmp")) {
            mkdir("{$_SERVER['DOCUMENT_ROOT']}/styles/fresh_tmp", 0777);
        }

        $hash = md5($hash);
        if (file_exists("{$_SERVER['DOCUMENT_ROOT']}/styles/fresh_tmp/{$hash}.css"))
            return "/styles/fresh_tmp/{$hash}.css";
        else {
            $css = '';
            foreach ($fileNames as $fileName) {
                $path = $_SERVER['DOCUMENT_ROOT'] . '/styles/' . $fileName . '.css';
                $css .= file_get_contents($path);
            }
            $minifier = new Minify_CSS();
            $minCss = $minifier->minify($css);
            file_put_contents("{$_SERVER['DOCUMENT_ROOT']}/styles/fresh_tmp/{$hash}.css", $minCss);
            return "/styles/fresh_tmp/{$hash}.css";
        }
    }
}