<?php
// include_once("seoshield-client/main.php");
$host = $_SERVER['HTTP_HOST'];

$part_uri = explode('?', $_SERVER['REQUEST_URI']);
$lowerURI = strtolower($part_uri[0]);
$standartURI = $part_uri[0];
if ($standartURI != $lowerURI) {
    header("HTTP/1.1 301 Moved Permanently");
    header("Location: http://{$host}" . $lowerURI);
    die();
}

if (strpos($_SERVER['REQUEST_URI'], '//') !== false) {
    $newRequestUri = preg_replace('#/+#', '/', $_SERVER['REQUEST_URI']);
    header("Location: http://{$host}" . $newRequestUri);
    die();
}

if (preg_match('#(\.html|htm|php)$#', $_SERVER['REQUEST_URI'])) {
    $newRequestUri1 = preg_replace('#(\.html|htm|php)$#', ' ', $_SERVER['REQUEST_URI']);
    header("Location: http://{$host}" . $newRequestUri1);
    die();
}

// if ($_SERVER['REMOTE_ADDR'] == '95.67.45.2') {
//     if (!isset($_COOKIE["draw_ajax_filters"])) {
//         if (preg_match('/(\\/availability\\/1|\\/specprice\\/only|\\/sale\\/only)/is', $_SERVER['REQUEST_URI'])) {
//             $newRequestUri2 = preg_replace('/(\\/availability\\/1|\\/specprice\\/only|\\/sale\\/only)/is', '', $_SERVER['REQUEST_URI']);
//             header("Location: http://{$host}" . $newRequestUri2);
//             die();
//         }
//     }
//     // setcookie ("draw_ajax_filters", "", time() - 3600);
// }

if (urldecode($_SERVER['REQUEST_URI']) == '/refrigerators-Side-by-Side') {
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: http://590.ua/vt/built-in-refrigerators-side-by-side');
    die();
}

function __redirect($subdomain) {
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: http://590.ua/' . $subdomain);
    die();
}

switch (urldecode($_SERVER['REQUEST_URI'])) {
	case '/Встраиваемая-техника':           __redirect('vt'); break;
    case '/Отдельностоящая-техника':        __redirect('ot'); break;
    case '/Мелкая-бытовая-техника':         __redirect('smallbt'); break;
    case '/Красота-и-здоровье':             __redirect('beauty'); break;
    case '/Бытовая-электроника':            __redirect('elektronika'); break;
    case '/Техника-для-уборки':             __redirect('cleaning'); break;
    case '/Кухонная-посуда':                __redirect('kitchen'); break;
    case '/Климатическая-техника':          __redirect('climate'); break;
    case '/Мойки-и-смесители':              __redirect('bathroom'); break;
    case '/Бытовая-химия':                  __redirect('chemistry'); break;
    case '/Персональная-цифровая-техника':  __redirect('gadgets'); break;
    case '/Аксессуары':                     __redirect('accessories'); break;
    case '/Детская-мебель':                 __redirect('furniture'); break;
}

if (strpos($_SERVER['REQUEST_URI'], 'index')) {
    $url = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    $url = str_replace(array('index', '.php', '.html', '.htm'), '', $url);
    $url = trim($url, '/');
    header("HTTP/1.1 301 Moved Permanently\r\n");
    header("location: http://{$url}");
    die();
}

$uri = preg_replace("/\?.*/i", '', $_SERVER['REQUEST_URI']);
if (strlen($uri) > 1) {
    if (rtrim($uri, '/') != $uri) {
        header("HTTP/1.1 301 Moved Permanently");
        header('Location: http://' . $_SERVER['SERVER_NAME'] . str_replace($uri, rtrim($uri, '/'), $_SERVER['REQUEST_URI']));
        exit();
    }
}

$arr_uri = explode('/', trim($_SERVER['REQUEST_URI'], '/'));
$uri = $arr_uri[0];

// if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']) && strtotime($_SERVER['HTTP_IF_MODIFIED_SINCE']) >= $last_modified_time) {
//     header('HTTP/1.1 304 Not Modified');
//     die;
// }
// header('Last-Modified: ' . gmdate('D, d M Y H:i:s', $last_modified_time) . ' GMT');

// Define application host
defined('APPLICATION_HOST')
|| define('APPLICATION_HOST', $host);

// Указание пути к директории приложения
defined('APPLICATION_PATH')
|| define('APPLICATION_PATH',
    realpath(dirname(__FILE__) . '/application'));

// Определение текущего режима работы приложения
defined('APPLICATION_ENV')
|| define('APPLICATION_ENV',
    (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV')
        : 'production'));
// Настройка автозагрузчика
set_include_path(realpath(dirname(__FILE__) . '/../../library'));
require_once "Zend/Loader/Autoloader.php";

Zend_Loader_Autoloader::getInstance()->registerNamespace('Alcotec_');
Zend_Loader_Autoloader::getInstance()->registerNamespace('Bvb_');
Zend_Loader_Autoloader::getInstance()->registerNamespace('Cruiser_');
Zend_Loader_Autoloader::getInstance()->registerNamespace('PHPExcel_');
Zend_Loader_Autoloader::getInstance()->registerNamespace('Minify_');
// Создание объекта приложения, начальная загрузка, запуск
$application = new Alcotec_Application(
    APPLICATION_ENV,
    APPLICATION_PATH . '/configs/application.ini'
);
//ini_set('display_errors',1);
// seo_shield_start_cms();
$application->bootstrap()->run();
