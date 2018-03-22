<?php

class Zend_View_Helper_Js extends Zend_View_Helper_Abstract {
	
	public function js($fileNames = NULL) {
		if (!is_array($fileNames)) {
			$fileNames = array($fileNames);
		}
        $defaults = array('bootstrap','texterrors','select2','select2_locale_ru','validation/jquery.validationEngine', 'validation/jquery.validationEngine-ru', 'jquery/jquery.keyfilter-1.7.min','jquery/jquery.cookie.js','jquery/jquery.search','menu','functions','common','jquery/jquery.maskedinput-1.2.2', 'zoom');
        $fileNames = array_merge($fileNames,$defaults);
        foreach ($fileNames as $fileName) {
			$path = $_SERVER['DOCUMENT_ROOT'] . '/js/' . $fileName . '.js';
			if (file_exists ($path)) {
				$hash .= filemtime($path) . $fileName;
			}
		}

		$hash = md5($hash);
		if (file_exists("{$_SERVER['DOCUMENT_ROOT']}/js/tmp/{$hash}.js"))
			return "/js/tmp/{$hash}.js";
		else {
			foreach ($fileNames as $fileName) {
			    $path = $_SERVER['DOCUMENT_ROOT'] . '/js/' . $fileName . '.js';
				$css .= file_get_contents($path);
			}
			$minifier = new Minify_JSMin($css);
			$minCss = $minifier->minify($css);
			file_put_contents("{$_SERVER['DOCUMENT_ROOT']}/js/tmp/{$hash}.js", $minCss);
			return "/js/tmp/{$hash}.js";
		}
	}
}