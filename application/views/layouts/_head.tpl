<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{include file='seo/title.tpl'}</title>
    <link rel="shortcut icon" href="/assets/img/favicon.png" type="image/x-icon">
    <link href="//fonts.googleapis.com/css?family=Roboto:400,700&amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/slick.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/assets/css/product.css">
    <link rel="stylesheet" href="/assets/css/order.css">
    <link rel="stylesheet" href="/assets/css/small-page.css">
    <link rel="stylesheet" href="/assets/css/media.css">
    <link rel="stylesheet" href="/assets/css/header.css">
    {if isset($css_int) }
    {$css_int}
    {/if}
    <link rel="stylesheet" href="/assets/css/mob-version.css">
</head>
<body class="{$body_class|default:'no title'}" style="position: fixed">
<!--preloader -->
<div class="preloader">
    <div class="load-9">

        <div class="spinner">
            <div class="bubble-1"></div>
            <div class="bubble-2"></div>
            <div class="bubble-3"></div>
        </div>
    </div>
</div>
<!--/preloader -->