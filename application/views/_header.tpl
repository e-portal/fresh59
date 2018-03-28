<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="ie ie6 lte9 lte8 lte7"><![endif]-->
<!--[if IE 7]>
<html class="ie ie7 lte9 lte8 lte7"><![endif]-->
<!--[if IE 8]>
<html class="ie ie8 lte9 lte8"><![endif]-->
<!--[if IE 9]>
<html class="ie ie9 lte9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ru"><!--<![endif]-->
<head>
    {include file=_head.tpl}
</head>
<body>
{literal}
<!-- Yandex.Metrika counter -->
<script type="text/javascript"> (function (d, w, c) {
        (w[c] = w[c] || []).push(function () {
            try {
                w.yaCounter173141 = new Ya.Metrika({
                    id: 173141,
                    clickmap: true,
                    trackLinks: true,
                    accurateTrackBounce: true,
                    webvisor: true
                });
            } catch (e) {
            }
        });
        var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () {
            n.parentNode.insertBefore(s, n);
        };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://cdn.jsdelivr.net/npm/yandex-metrica-watch/watch.js";
        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else {
            f();
        }
    })(document, window, "yandex_metrika_callbacks"); </script>
<noscript>
    <div><img src="https://mc.yandex.ru/watch/173141" style="position:absolute; left:-9999px;" alt=""/></div>
</noscript> <!-- /Yandex.Metrika counter -->{/literal}


<div class="main_block holder_{$zf.params.controller}_{$zf.params.action}{if $manager} holder_logged{/if}">
    <!-- HEADER  -->
    <div class="span-16 site_panel">
        <div class="site_panel_left_side">
            <a href="https://590.ua/" class="main_page_link">Главная</a>
            {if $login}
            <span class="autorization_link autorization_name"><a href="/auth"><span class='strong'>{$login}</span></a> / <a
                        href="/auth/exit">Выйти</a></span>
            {else}
            <a href="#login" class="autorization_link" data-toggle="modal">Авторизация</a>
            {/if}
        </div>
        <div class="site_panel_right_side">
            <span>Принимаем:</span>
            <img src="/assets/media/visa.png" width="34" height="20" alt="visa">
            <img src="/assets/media/visa-2.png" width="34" height="20" alt="visa2">
            <img src="/assets/media/maestro.png" width="34" height="20" alt="maestro">
            <img src="/assets/media/master-card.png" width="34" height="20" alt="master-card">
        </div>
    </div>
    <div class="span-16 logo">
        <a class="logo_img" href="https://590.ua/">
            <img src="/assets/media/logo.png" width="177" height="68" alt="590.ua logo">
        </a>
        <div class="middle">
            <div class="top">
                <div class="social_links">
                    <a rel="nofollow" href="https://www.facebook.com/590.ua" target="_blank"><img
                                src="/assets/media/fb.png" width="20" height="20" alt="fb"></a>
                    <a rel="nofollow" href="http://vk.com/ua590" target="_blank"><img src="/assets/media/vk.png"
                                                                                      width="20" height="20"
                                                                                      alt="vk"></a>
                    <a rel="nofollow" href="https://twitter.com/590Ua" target="_blank"><img
                                src="/assets/media/twiter.png" width="20" height="20" alt="twitter"></a>
                    <a rel="nofollow" href="https://plus.google.com/101839783687775705263?rel=author"><img
                                src="/assets/media/google.png" width="20" height="20" alt="google"></a>
                </div>
            </div>
            <div class="bottom">
                <form action="/catalog/search" method="post" name="searchForm" class="search">
                    <div class="penta"></div>
                    <input autocomplete="off" type="text" placeholder="Поиск..." id="searchtext" name="searchtext"
                           {if $searchtext}value="{$searchtext}" {/if}>
                    <button type="submit" class="button_v1">Найти</button>
                </form>
                <div class="search-modal">
                    <ul></ul>
                </div>
            </div>
        </div>
        <div class="contacts cities">
            <div class="region-choose">

                <div class="btn-group">
                    <span class="btn btn-mini city-button"
                          data-toggle="dropdown">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <span class="data-current-city">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {foreach from=$regions item=region}{if $region.active}<span
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   id="this_city_name"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   style="font-weight: bold;">{$region.name}</span>{/if}{/foreach}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   <i class="caret"></i>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           </span>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               </span>
                    <ul class="dropdown-menu data-region-list">
                        {foreach from=$regions item=region}
                        <li><a href="#" id="region_{$region.id}" data-phone='{$region.phone}'
                               onclick="selectRegion({$region.id})">{$region.name}</a></li>
                        {/foreach}
                    </ul>
                </div>
                <div class="phones">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <span class="data-phones ringo-phone">{foreach from=$regions item=region}{if $region.active}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {if $region.id==1}<span
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   style="font-size: 15px;float: left;line-height: 19px;margin-left: 70px;"><img
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       style="width: 16px;height: 16px;position: absolute;top: 31px;left: 50px;"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       src="/images/icons/vodafone.png">(050) 590-0-590<br><img
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       style="width: 18px;height: 18px;position: absolute;top: 49px;left: 49px;"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       src="/images/icons/phone.png">(044) 223-8-520<br><img
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       style="width: 16px;height: 16px;position: absolute;top: 67px;left: 50px;"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       src="/images/icons/kievstar.png">(067) 590-0-591</span>{else}<span>{$region.phone}</span>{/if}{/if}{/foreach}</span>
                </div>
                {foreach from=$regions item=region1}{if $region1.active}
                {if $region1.id==1}
                <div class="days">
                    <p style="float: right;margin-right: 30px;margin-top: -3px;">пн - чт: 9:30 - 18:00<br>пт-вс: 10:00 -
                        18:00<br>Call центр</p>
                    <p class="work-time__region hide">пн - пт: 9:00 - 18:00, сб, вс: выходной</p>
                </div>
                {else}
                <div class="days">
                    <p>пн - чт: 9:30 - 18:00, пт-вс: 10:00 - 18:00 Call центр</p>
                    <p class="work-time__region hide">пн - пт: 9:00 - 18:00, сб, вс: выходной</p>
                </div>
                {/if}{/if}{/foreach}
            </div>
        </div>
    </div>

    <div class="span16">Официальный представитель бытовой техники в Украине</div>

    <!--Menu top-->
    <div class="span-16 top_menu">
        <div class="menu_wrapper">
            <ul>
                {foreach from=$topmenu item=menutop name=topmenu}
                {if $menutop.type=='text'}
                <li><a href="https://590.ua/page/{$menutop.alias}">{$menutop.label|translate}</a></li>
                {/if}
                {if $menutop.type=='link'}
                <li><a href="https://590.ua{$menutop.param}">{$menutop.label|translate}</a></li>
                {/if}
                {/foreach}
            </ul>
            <div class="shadow"></div>
        </div>

        <div class="basket">
            <a id="data-basket-order" {if $zf.params.action=='order' || $zf.params.action=='paybycard' ||
               $zf.params.action=='thankyou'}style="pointer-events: none;cursor: default;color: #999;"{/if}
            href="#data-basket" class="basket_info {if $basketStats.amount > 0}active {/if}data-openBasket
            shopping-cart-lnk">
            <span class="count data-basket-amount">{$basketStats.amount}</span>&nbsp;
            <span>товаров на сумму</span>&nbsp;
            <span class="summ data-basketSumm" id="summm_all">{$basketStats.summ}</span>&nbsp;
            <span><span class='strong'>{$smarty.session.Currency.title}</span></span>
            </a>
            <div class="currency_selector custom_select" style="visibility: hidden;">
                <select id="currencies_select" onchange="if (this.value) window.location.href=this.value">
                    {foreach from=$currencies item=currency name=currencies}
                    {if $currency.id==$smarty.session.Currency.active}
                    <option selected="selected">{$currency.name}</option>
                    {else}
                    <option value="/catalog/changecurrency/id/{$currency.id}">{$currency.name}</option>
                    {/if}
                    {/foreach}
                </select>
            </div>
        </div>
    </div>
    <!-- END HEADER -->

    <div class="span-16 central_block">
        <div class="span-4 sidebar">

            <ul class="action" style="display: none;">
                <li><a href="/catalog/sets">Акционные комплекты<img src="/assets/media/star.png" width="45" height="35"
                                                                    alt="star"></a></li>
            </ul>
            <ul class="toggle_sidebar">
                <li><a href="javascript:void(0)" onclick="$('.sidebar ul.sidebar').slideToggle();">Каталог товаров</a>
                </li>
            </ul>
            {php} echo
            $this->navigation()->menu($this->menu)->setPartial('menu3.tpl')->setMinDepth(1)->setMaxDepth(2);{/php}
            {if $zf.params.controller=='catalog' && $zf.params.action=='item'}
            {literal}
            <script>
                $(document).ready(function () {
                    var itemCurrentID = {;
                    /literal}{$item.id}{literal};
                    if (itemCurrentID && $('.other-items-box .data-item-' + itemCurrentID)) {
                        $('.other-items-box .data-item-' + itemCurrentID).parent().click();
                        $('.other-items-box .data-item-' + itemCurrentID).addClass('item-current');
                    }
                });
            </script>
            {/literal}
            {if $otherItems}
            <div class="other-items">
                <div class="other-items-head">Другие модели</div>
                <div class="other-items-box">
                    <ul>
                        {foreach from=$otherItems item=brand}
                        <li>
                            <span>{$brand.brand}</span>
                            <ul>
                                {foreach from=$brand.items item=itemtopsale}
                                <li class="data-item-{$itemtopsale.id}">
                                    <em><a href="/{$cat_info.subdomain}{iurl assoc.cat_latin=$itemtopsale.cat_latin_single assoc.parent=$itemtopsale.parentname assoc.cat=$itemtopsale.cat_onename assoc.brand=$itemtopsale.brand assoc.item=$itemtopsale.name}"
                                           {if $itemtopsale.id_availability== 2 || $itemtopsale.id_availability==
                                           3}class="disabled"
                                           rel="tooltip" {/if} {if $itemtopsale.id_availability ==
                                        2}data-original-title="Наличие уточняйте"{/if} {if $itemtopsale.id_availability
                                        == 3}data-original-title="Под заказ"{/if}>{$itemtopsale.name}</a></em>
                                    {if $itemtopsale.acttype=='gift'}
                                    <i class="mini-icon mini-icon-gift" rel="tooltip"
                                       data-original-title="Подарок"></i>
                                    {/if}
                                    {if $itemtopsale.specprice && ($itemtopsale.bdprice > $itemtopsale.price) &&
                                    (($itemtopsale.bdprice - $itemtopsale.price)/$itemtopsale.price > 0.01)}
                                    <i class="mini-icon mini-icon-sale" rel="tooltip"
                                       data-original-title="Скидка"></i>
                                    {/if}
                                    {if $itemtopsale.bestprice > $itemtopsale.price}
                                    <i class="mini-icon mini-icon-price" rel="tooltip"
                                       data-original-title="Лучшая цена"></i>
                                    {/if}
                                </li>
                                {/foreach}
                            </ul>
                        </li>
                        {/foreach}
                    </ul>
                </div>
            </div><!-- / .other-items -->
            {/if}
            {/if}
            {include file=_filter.tpl}
            {if $banners}
            {foreach from=$banners item=banner}
            <div class="banner-aside" id="banner_{$banner.id}">
                <a href="/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83"
                   title="{$banner.name}"><img style="width: 279px;" src='/uploads/{$banner.filename}'
                                               alt="{$banner.filename}"/></a>
            </div>
            {/foreach}
            {/if}
            {if $page=='payment'}
            <div class="banner-aside">
                {literal}
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- 590_оплата -->
                <ins class="adsbygoogle"
                     style="display:inline-block;width:200px;height:200px"
                     data-ad-client="ca-pub-7416138730155689"
                     data-ad-slot="9782349057"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
                {/literal}
            </div>
            {/if}

            {if $zf.params.controller=='catalog' && $zf.params.action=='cat' && !$finalCat}
            {if $topsales_items}
            <div class="top_sales_block">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <span class="title">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {if $zf.params.controller=='catalog' && $zf.params.action=='item' && $altItems}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Похожие модели
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {else}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Топ продаж
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {/if}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 </span>
                <div class="top_sales_subblock">
                    {foreach from=$topsales_items item=item name=topsales_items}
                    <div class="top_sales_item">
                        <a href="{iurl assoc.subdomain=$item.subdomain assoc.parent=$item.parentname assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}">
                            <img {if $item.imgid}src="/images/catalog/{$item.imgid}_s.{$item.imgext}"
                                 {else}src="{$url.img}/no-image.jpg" {/if} alt="{$item.name}-{$item.brand}"/>
                        </a>
                        <a href="{iurl assoc.subdomain=$item.subdomain assoc.parent=$item.parentname assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}">{$item.brand}
                            {$item.name}</a>
                        <span class="description">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>
                        {if $item.id_availability == 1}
                        <span class="in_stock_status">Есть в наличии</span>
                        {/if}
                        {if $item.id_availability == 2}
                        <span class="out_stock_status">Наличие уточняйте</span>
                        {/if}
                        {if $item.id_availability == 3}
                        <span class="un_order"><a href="/articles/4" target="_blank"
                                                  title="Как получить товар под заказ">Под заказ</a></span>
                        {/if}
                        <span class="price_sidebar">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</span>
                        {if $smarty.foreach.topsales_items.first}<i class="topsale-icon"></i>{/if}
                    </div>
                    {/foreach}
                </div><!-- / .top-sale --></div>
            {/if}
            {/if}
        </div><!-- /.sidebar -->
        <div class="span-12 content">