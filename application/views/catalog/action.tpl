{include file=_header.tpl}

<div class="h1_holder span-12 no_margin">
    <h1>Акционные модели1</h1>
</div>

{literal}
<style type="text/css">
    #refund_electrolux:hover::after {
     content: attr(data-title);
     position: absolute; /* Абсолютное позиционирование */
     left: -85px; top: 80px; /* Положение подсказки */
     z-index: 1; /* Отображаем подсказку поверх других элементов */
     background: rgba(91,222,113,0.9); /* Полупрозрачный цвет фона */
     font-size: 12px; /* Размер текста подсказки */
     padding: 5px 10px; /* Поля */
     color: white;
     text-shadow: white 0 0 1px;
     transform: rotate(-15deg);
     line-height: 12px;
     border-radius: 10px;
     width: 120px;
     box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }

    #refund_electrolux_gift:hover::after {
     content: attr(data-title);
     position: absolute; /* Абсолютное позиционирование */
     left: -48px; top: -90px; /* Положение подсказки */
     z-index: 1; /* Отображаем подсказку поверх других элементов */
     background: rgba(91,222,113,0.9); /* Полупрозрачный цвет фона */
     font-size: 12px; /* Размер текста подсказки */
     padding: 5px 10px; /* Поля */
     color: white;
     text-shadow: white 0 0 1px;
     transform: rotate(20deg);
     line-height: 12px;
     border-radius: 10px;
     width: 120px;
     box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }
</style>
{/literal}

{assign var="number_of_element" value=0}
            <div id="category_block_view_listing" class="span-12 no_margin">
                {foreach from=$items item=item name=catitems}
                    {if $article && $smarty.foreach.catitems.iteration == 21 && !$zf.params.page}
                        <div class="span-4 category_block_view_item">
                        {assign var="iteration_action" value=0}
                            {foreach from=$item_id_electrolux_action item=foo}
                                {if $item.id2 == $foo}
                                    <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: block;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                {/if}
                                {assign var="iteration_action" value=$iteration_action+1}
                            {/foreach}
                            <div class="cat-item__article">
                                <div class="cat-item__article-inner">
                                    <h3><a href="/articles/{$article.url}">{$article.announce}</a></h3>
                                    <div class="cat-item__article-text">{$article.short_text}</div>
                                </div>
                                <a href="/articles/{$article.url}">Читать далее</a>
                            </div>
                            <i class="article-icon"></i>
                        </div>
                    {/if}

                    {if $smarty.foreach.catitems.iteration == 3}
                        {if $catId == '28' || $catId == '29'}
                            <div class="span-4 category_block_view_item">
                            {assign var="iteration_action" value=0}
                                {foreach from=$item_id_electrolux_action item=foo}
                                    {if $item.id2 == $foo}
                                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: none;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                    {/if}
                                    {assign var="iteration_action" value=$iteration_action+1}
                                {/foreach}
                                <a href="/articles/%D0%9C%D0%BE%D0%B9%D0%BA%D0%B8-%D0%B8-%D1%81%D0%BC%D0%B5%D1%81%D0%B8%D1%82%D0%B5%D0%BB%D0%B8-%D0%B2-%D0%BA%D1%80%D0%B5%D0%B4%D0%B8%D1%82-%D0%BF%D0%BE%D0%B4-0">
                                    <img src="/images/blanco0.jpg" alt="">
                                </a>
                            </div>
                        {elseif in_array($cat->parent, array(7,17)) && in_array($zf.params.brand,array(1,3,13))}
                            <div class="span-4 category_block_view_item">
                            {assign var="iteration_action" value=0}
                                {foreach from=$item_id_electrolux_action item=foo}
                                    {if $item.id2 == $foo}
                                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: none;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                    {/if}
                                    {assign var="iteration_action" value=$iteration_action+1}
                                {/foreach}
                                <img src="/images/banner/banner-le-zan-aeg.jpg" alt="">
                            </div>
                        {/if}
                    {/if}

                    {if $smarty.foreach.catitems.iteration == 21}
                        {if $catId == '45'}
                            <div class="span-4 category_block_view_item">
                            {assign var="iteration_action" value=0}
                                {foreach from=$item_id_electrolux_action item=foo}
                                    {if $item.id2 == $foo}
                                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: none;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                    {/if}
                                    {assign var="iteration_action" value=$iteration_action+1}
                                {/foreach}
                                <a href="/landing/electrolux/ergorapido/landing.html">
                                    <img src="/landing/electrolux/ergorapido/assets/img/landing.jpg" alt="Пылесос Electrolux Ergorapido купить" title="Пылесос Electrolux Ergorapido">
                                </a>
                            </div>
                        {/if}
                    {/if}

                    {if $smarty.foreach.catitems.iteration == 21}
                        {if $catId == '12'}
                            <div class="span-4 category_block_view_item">
                            {assign var="iteration_action" value=0}
                                {foreach from=$item_id_electrolux_action item=foo}
                                    {if $item.id2 == $foo}
                                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: none;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                    {/if}
                                    {assign var="iteration_action" value=$iteration_action+1}
                                {/foreach}
                                <a href="/landing/hansa/landing.html">
                                    <img src="/landing/hansa/images/9.png" alt="Варочная поверхность Hansa купить" title="Варочная поверхность Hansa" style="left:-10px;max-width:278px;position:relative;">
                                </a>
                            </div>
                        {/if}
                    {/if}

                    {if $item.bonus_amount > 0}
                        <div class="span-4 category_block_view_item" data-qtip="1">
                            {assign var="iteration_action" value=0}
                                {foreach from=$item_id_electrolux_action item=foo}
                                    {if $item.id2 == $foo}
                                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: none;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                    {/if}
                                    {assign var="iteration_action" value=$iteration_action+1}
                                {/foreach}
                    {else}
                        <div class="span-4 category_block_view_item">
                        {assign var="iteration_action" value=0}
                            {foreach from=$item_id_electrolux_action item=foo}
                                {if $item.id2 == $foo}
                                    <span {if $item.acttype=='gift'}id="refund_electrolux_gift"{else}id="refund_electrolux"{/if} data-title="Повертаємо гроші для оплати комунальних послуг" style="display: none;
    text-align: center;
    color: #f9ebf3;
    font-size: 16px;
    font-weight: bold;
    position: absolute;
    margin-top: 80px;
    margin-left: 150px;
    z-index: 1;
    transform: rotate(15deg);
    background-color: #0878C2;
    border-radius: 10px;
    padding: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    {if $item.acttype=='gift'}
    transform: rotate(-20deg) !important;
    margin-top: 215px !important;
    margin-left: 125px !important;
    {/if}
    width: 90px;">повернемо {$cashback_electrolux_action[$iteration_action]} грн</span>
                                {/if}
                                {assign var="iteration_action" value=$iteration_action+1}
                            {/foreach}
                    {/if}

                    {if $login == 'old version'}

                        {if $smarty.foreach.catitems.iteration <= 4 && $smarty.foreach.catitems.iteration <= $smarty.foreach.catitems.total}
                            <div style="display:none"><!--cartdname-->{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}<!--/cartdname--></div>
                        {/if}
                        <div class="prev_bonus" style="display:none">
                            Купив {$item.brand} {$item.name} у нас, Вы получаете +{$item.bonus_amount|round}грн на бонусный счет к цене!
                        </div>

                        {if $item.bestprice > $item.price || $item.id2==41385}
                            <i title="Лучшая цена" class="sale-icon sale-icon-price"></i>
                        {/if}
                        {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price) > 1) && !($item.sale==1 && $item.d90==-1)}
                            <i title="Акционная цена" class="sale-icon sale-icon-discount"></i>
                        {/if}
                        {if $item.sale==1 && $item.d90==-1}
                            <i title="Распродажа" class="sale-icon sale-icon-sale"></i>
                        {/if}
                    {else}
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

.oplata_chast_icon_{/literal}{$number_of_element}{literal}, .bonus_on_card_{/literal}{$number_of_element}{literal}, .oplata_rassrochka_icon_{/literal}{$number_of_element}{literal}, .waranty_zirtal_{/literal}{$number_of_element}{literal}, .best_price_icon_{/literal}{$number_of_element}{literal}{
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
.waranty_zirtal_{/literal}{$number_of_element}{literal}{cursor: default !important;}
.bonus_on_card_{/literal}{$number_of_element}{literal}{margin-top: 70px;}
.oplata_chast_icon_{/literal}{$number_of_element}{literal}{margin-top: 107px;}
.oplata_rassrochka_icon_{/literal}{$number_of_element}{literal}{margin-top: 144px;}
.waranty_zirtal_{/literal}{$number_of_element}{literal}{margin-top: 181px;}
.best_price_icon_{/literal}{$number_of_element}{literal}{margin-top: 218px;}
.trdein_icon_{/literal}{$number_of_element}{literal}{margin-top: 235px; margin-left: 130px; position: absolute; z-index: 4; cursor: help;}
.black_friday_{/literal}{$number_of_element}{literal}{margin-top: 185px;margin-left: 160px; position: absolute; z-index: 4; cursor: help;}

@-moz-document url-prefix()
{
    .black_friday_{/literal}{$number_of_element}{literal}{margin-top: 185px;margin-left: -70px; position: absolute; z-index: 4; cursor: help;}
}
{/literal}

{if $item.acttype != 'gift'} {literal}
    .black_friday_{/literal}{$number_of_element}{literal}{margin-top:60px !important;} {/literal}
{/if}

{if $item.id_availability != 1} {literal}
    .waranty_zirtal_{/literal}{$number_of_element}{literal}{margin-top:107px !important;} {/literal}
{/if}

{if $item.id_availability != 1} {literal}
    .best_price_icon_{/literal}{$number_of_element}{literal}{margin-top:144px !important;} {/literal}
{/if}

{if $item.id_brand != '26'} {literal}
    .best_price_icon_{/literal}{$number_of_element}{literal}{margin-top:181px !important;} {/literal}
{/if}

{if $item.id_brand != '26' && $item.id_availability != 1} {literal}
    .best_price_icon_{/literal}{$number_of_element}{literal}{margin-top:107px !important;} {/literal}
{/if} {literal}

    .overlay_icons{
      display:none;
      position: absolute;

    }
    .bonus_on_card_{/literal}{$number_of_element}{literal}:hover .overlay_icons,
    .oplata_chast_icon_{/literal}{$number_of_element}{literal}:hover .overlay_icons,
    .oplata_rassrochka_icon_{/literal}{$number_of_element}{literal}:hover .overlay_icons,
    .best_price_icon_{/literal}{$number_of_element}{literal}:hover .overlay_icons,
    .trdein_icon_{/literal}{$number_of_element}{literal}:hover .overlay_icons,
    .black_friday_{/literal}{$number_of_element}{literal}:hover .overlay_icons{
        display: block;
    }
</style>
<script type="text/javascript">
    function hide_icons_bonus(i)
{
if(document.getElementsByClassName('oplata_chast_icon_'+i)[0])
    document.getElementsByClassName('oplata_chast_icon_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0])
    document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('waranty_zirtal_'+i)[0])
    document.getElementsByClassName('waranty_zirtal_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon_'+i)[0])
    document.getElementsByClassName('best_price_icon_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "3";
}
    function show_icons_bonus(i)
{
if(document.getElementsByClassName('oplata_chast_icon_'+i)[0])
    document.getElementsByClassName('oplata_chast_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0])
    document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('waranty_zirtal_'+i)[0])
    document.getElementsByClassName('waranty_zirtal_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon_'+i)[0])
    document.getElementsByClassName('best_price_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "4";
}

    function hide_icons_oplata_chast(i)
{
if(document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0])
    document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('waranty_zirtal_'+i)[0])
    document.getElementsByClassName('waranty_zirtal_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon_'+i)[0])
    document.getElementsByClassName('best_price_icon_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "3";
}
    function show_icons_oplata_chast(i)
{
if(document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0])
    document.getElementsByClassName('oplata_rassrochka_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('waranty_zirtal_'+i)[0])
    document.getElementsByClassName('waranty_zirtal_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon_'+i)[0])
    document.getElementsByClassName('best_price_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "4";
}

    function hide_icons_oplata_rassrochka(i)
{
if(document.getElementsByClassName('waranty_zirtal_'+i)[0])
    document.getElementsByClassName('waranty_zirtal_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('best_price_icon_'+i)[0])
    document.getElementsByClassName('best_price_icon_'+i)[0].style.zIndex = "0";

if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "3";
}
    function show_icons_oplata_rassrochka(i)
{
if(document.getElementsByClassName('waranty_zirtal_'+i)[0])
    document.getElementsByClassName('waranty_zirtal_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon_'+i)[0])
    document.getElementsByClassName('best_price_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "4";
}

    function hide_icons_best_price(i)
{
if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "3";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "3";
}
    function show_icons_best_price(i)
{
if(document.getElementsByClassName('trdein_icon_'+i)[0])
    document.getElementsByClassName('trdein_icon_'+i)[0].style.zIndex = "4";

if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "4";
}

    function hide_icons_best_tradein(i)
{
if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "3";
}
    function show_icons_best_tradein(i)
{
if(document.getElementsByClassName('black_friday_'+i)[0])
    document.getElementsByClassName('black_friday_'+i)[0].style.zIndex = "4";
}

    function hide_icons_black_friday_(i)
{
if(document.getElementsByClassName('oplata_chast_icon_'+(i+1))[0])
    document.getElementsByClassName('oplata_chast_icon_'+(i+1))[0].style.zIndex = "3";

if(document.getElementsByClassName('oplata_rassrochka_icon_'+(i+1))[0])
    document.getElementsByClassName('oplata_rassrochka_icon_'+(i+1))[0].style.zIndex = "3";

if(document.getElementsByClassName('waranty_zirtal_'+(i+1))[0])
    document.getElementsByClassName('waranty_zirtal_'+(i+1))[0].style.zIndex = "3";

if(document.getElementsByClassName('best_price_icon_'+(i+1))[0])
    document.getElementsByClassName('best_price_icon_'+(i+1))[0].style.zIndex = "3";

if(document.getElementsByClassName('bonus_on_card_'+(i+1))[0])
    document.getElementsByClassName('bonus_on_card_'+(i+1))[0].style.zIndex = "3";
}
    function show_icons_black_friday_(i)
{
if(document.getElementsByClassName('oplata_chast_icon_'+(i+1))[0])
    document.getElementsByClassName('oplata_chast_icon_'+(i+1))[0].style.zIndex = "4";

if(document.getElementsByClassName('oplata_rassrochka_icon_'+(i+1))[0])
    document.getElementsByClassName('oplata_rassrochka_icon_'+(i+1))[0].style.zIndex = "4";

if(document.getElementsByClassName('waranty_zirtal_'+(i+1))[0])
    document.getElementsByClassName('waranty_zirtal_'+(i+1))[0].style.zIndex = "4";

if(document.getElementsByClassName('best_price_icon_'+(i+1))[0])
    document.getElementsByClassName('best_price_icon_'+(i+1))[0].style.zIndex = "4";

if(document.getElementsByClassName('bonus_on_card_'+(i+1))[0])
    document.getElementsByClassName('bonus_on_card_'+(i+1))[0].style.zIndex = "4";
}
</script>
{/literal}

    {assign var="margin_top_icon" value=0}
    {if $item.bonus_amount<=0}{assign var="margin_top_icon" value=$margin_top_icon-40}{/if}
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

{if $item.bonus_amount>0}<div onmouseover="hide_icons_bonus({$number_of_element})" onmouseout="show_icons_bonus({$number_of_element})" class="bonus_on_card_{$number_of_element}"><img src="/images/hint/piggy-bank.png" style="position: absolute;margin-left: -29px;margin-top: 1px;">вернем<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.bonus_amount|round} грн.</span><div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <a href="https://590.ua/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83" target="_blank"><h1 title="Узнать подробнее...">Оплачивай бонусами</h1></a>
     <a href="https://590.ua/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83" target="_blank"><img title="Узнать подробнее..." src="/images/hint/bonus.jpg"></a>
     <p>Вы можете получить бонусную карточку на которой можно накапливать и тратить бонусы в оплате товара на нашем сайте (1 бонус приравнивается к 1 грн.)<br><br>Бонусный счет можно использовать для полной или частичной оплаты последующих заказов в нашем интернет-магазине.<br><br>Карточку постоянного покупателя могут использовать все члены Вашей семьи, а также друзья.</p></div>
</div></div></div>{/if}
{if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}
{if $item.id_availability == 1}<div onmouseover="hide_icons_oplata_chast({$number_of_element})" onmouseout="show_icons_oplata_chast({$number_of_element})" class="oplata_chast_icon_{$number_of_element}"><img src="/images/hint/oplata_chast.png" style="position: absolute;margin-left: -32px;margin-top: 1px;">от <span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.price/$rent_index*$curs_evro_smarty|round}</span><br><span style="font-size: 10px;font-weight: bold;font-style: italic;"> грн./мес.</span><div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
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

<div onmouseover="hide_icons_oplata_rassrochka({$number_of_element})" onmouseout="show_icons_oplata_rassrochka({$number_of_element})" class="oplata_rassrochka_icon_{$number_of_element}"><img src="/images/hint/oplata_rassrochka_icon.png" style="position: absolute;margin-left: -32px;margin-top: 1px;">от <span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span><br><span style="font-size: 10px;font-weight: bold;font-style: italic;"> грн./мес.</span><div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><h1 title="Узнать подробнее...">МГНОВЕННАЯ РАССРОЧКА</h1></a></noindex>
     <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank"><img title="Узнать подробнее..." src="/images/hint/oplata_rassrochka.jpg"></a></noindex>
     <p>Покупайте товары в рассрочку до 24 месяцев с небольшой ежемесячной комиссией от стоимости товара.</p>
     </div>
</div></div></div>
{/if}

{if $item.id_brand == '26' && $item.id_category != 60}
<div class="waranty_zirtal_{$number_of_element}"><img src="/images/hint/waranty_zirtal.png" style="position: absolute;margin-left: -26px;margin-top: 1px;">гарантия<br><span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">36 мес.</span></div>
{/if}

{if $item.bestprice > $item.price || $item.id2==41385}
<div onmouseover="hide_icons_best_price({$number_of_element})" onmouseout="show_icons_best_price({$number_of_element})" class="best_price_icon_{$number_of_element}"><img src="/images/hint/thumbs_up.png" style="position: absolute;margin-left: -29px;margin-top: 1px;">лучшая<br><span style="font-weight: bold;font-size: 10px;font-style: italic;">цена</span><div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <h1>Отличный выбор</h1>
     <img src="/images/hint/best_price.jpg">
     <p>Мы отследили цены во многих интернет магазинах по этому товару. И смело можем утверждать, что наша цена является лучшей!<br>Товары, на которых Вы заметили иконку с пальцем вверх - достойны Вашего внимания :)</p>
     </div>
</div></div></div>
{/if}
</div>
{if $item.acttype != 'gift' && $item.x_index == '1' || $item.id == '21465'}
<div onmouseover="hide_icons_best_tradein({$number_of_element})" onmouseout="show_icons_best_tradein({$number_of_element})" class="trdein_icon_{$number_of_element}"><img src="/images/icons/zamena_catalog.png" style="position: absolute;margin-left: -29px;margin-top: 1px;"><div class="overlay_icons" style="margin-top: -460px;margin-left: -201px;font-style: italic;">
    <div class="wrapper_body"><div class="cbm_wrap ">
     <noindex><a href="https://590.ua/articles/zamena" rel="nofollow" target="_blank"><h1 title="Узнать подробнее...">Замена (Trade-in)</h1></a></noindex>
     <noindex><a href="https://590.ua/articles/zamena" rel="nofollow" target="_blank"><img title="Узнать подробнее..." src="/images/hint/tradein_description.jpg"></a></noindex>
     <p>Вы имеете следующую выгоду:<br>1. Весомая скидка на технику<br>2. Бесплатная доставка в квартиру<br>3. Бесплатное подключение<br>4. Вывоз и утилизация старой техники<br><br>Все это, в течении короткого времени мы сделаем сами, тем самым освободив Вас от хлопот и дополнительных финансовых расходов.</p>
     </div>
</div></div></div>
{/if}


{if $login=='акция рождество' || $login=='Гальченко Владимир'}
{assign var="iteration_celebration" value=0}
{foreach from=$item_id_temporary_celebration item=foo}
   {if $item.id == $foo  && $item.acttype!='gift'}
   <div onmouseover="hide_icons_black_friday_({$number_of_element})" onmouseout="show_icons_black_friday_({$number_of_element})" class="black_friday_{$number_of_element} grow-rotate"><img class="pulse" src="/images/hint/black.png" style="position: absolute;margin-left: -29px;margin-top: 1px;"><div style="
        color: #9f2234;
            position: absolute;
            margin-top: 47px;
            margin-left: 4px;
            font-size: 12px;
            transform: rotate(-6deg);
            font-weight: bold;
            font-family: sans-serif;
            width: 80px;
            text-align: center;
">{$summ_temporary_celebration[$iteration_celebration]} грн.</div><div class="overlay_icons" style="margin-top: -475px;margin-left: -128px;font-style: italic;">
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
                        <div class="head">
                            <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}" onclick="onProductClickEcommerce({$item.id})">{$item.brand} {$item.name}</a>
                            <span class="description">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>

                            {if !($item.archive == 1 && $item.id_availability == 3) }
                                {if $item.id_availability == 1}
                                    <span class="in_stock_status">
                                        <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии
                                    </span>

                                {elseif $item.id_availability == 2 && $item.qrm>0} <link itemprop="availability" href="http://schema.org/InStock"/>
                                    <span style="font-weight: bold;color: #0D8ABC;">Наличие уточняйте</span>

                                {elseif $altItem.id_availability == 2 && $item.qrm==0 || $item.qrm==""} <span class="order_stock_status">
                                        <a style="color: red;" class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">
                                            <link itemprop="availability" href="http://schema.org/PreOrder"/>Под заказ
                                        </a>

                                {elseif $item.id_availability == 3}
                                    <span class="order_stock_status">
                                        <a class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">
                                            <link itemprop="availability" href="http://schema.org/PreOrder"/>Под заказ
                                        </a>
                                    </span>

                                {elseif $item.id_availability == 4}
                                    <span class="in_stock_status" rel="tooltip" data-placement="top" data-original-title="Есть в наличии, доставку уточняйте." title="Есть в наличии, доставку уточняйте.">
                                        <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии, доставку уточняйте.
                                    </span>
                                {else} <link itemprop="availability" href="http://schema.org/InStock"/>
                                    <span style="font-weight: bold;color: #0D8ABC;">Наличие уточняйте</span>{/if}
                            {/if}
                        </div>
                        <div class="image_holder">
                            {if $item.imgid}
                                <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}" title="{$item.brand} {$item.name}" onclick="onProductClickEcommerce({$item.id})">
                                    <img itemprop="image" src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}" title="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}" alt="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name} - catalog"/>
                                </a>
                            {else}
                                <img src="/images/noimage.jpg" alt="{$item.brand} {$item.name}"/>
                            {/if}
                        </div>
                        {if $item.acttype=='gift'}
                            <div class="gift">
                                <div class="products_container_image_wrap">
                                    <a href="#gift-modal-{$item.id}" data-toggle="modal" class="gift-txt-lnk data-getActInfo" id="i_{$item.id}"><img src="/images/catalog/{gift assoc.id=$item.actid}" alt="">
                                    </a>
                                </div>
                                <span>Подарок</span>
                            </div>
                        {/if}

                        {if $item.id_availability == 1}
{if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}
                        <!-- Credit Logo -->
                            <div class="credit_logo_pp" style="{if $login == 'Гальченко Владимир'}display:none;{/if}position:absolute;margin-top:410px;margin-left:190px">
                                <img src="/images/icons/privatbank_pp_{$rent_index}_logo.png" width="60" title="Кредит Оплата Частями Приватбанк" alt="Кредит Оплата Частями Приватбанк">
                            </div>
                        <!-- Credit Logo End -->
                        {/if}

                        {if $catId == 26 || $catId == 25 || $catId == 209 || $catId == 102 || $catId == 18 || $catId == 24 || $catId == 212 || $catId == 37 || $catId == 314 || $catId == 21 || $catId == 36 || $catId == 322 || $catId == 12 || $catId == 16 || $catId == 88 || $catId == 210 || $catId == 211 || $catId == 175 || $catId == 10 || $catId == 15 || $catId == 155 || $catId == 39 || $catId == 213 || $catId == 11 || $catId == 13 || $catId == 34 || $catId == 302 || $catId == 67}
                            {if $item.acttype !== 'gift' && $item.x_index == '1' || $item.id == '21465'}
                                <div class="zamena-catalog" style="{if $login != 'old version'}display:none;{/if}position:absolute;margin-top:255px;margin-left:105px">
                                  <a href="/articles/zamena">
                                    <img src="/images/icons/zamena_catalog.png" rel="tooltip" data-original-title="При покупке техники по системе Trade-in, Вы имеете выгоду в: 1) Весомая скидка на технику; 2) Бесплатная доставка в квартиру; 3) Бесплатное подключение; 4) Вывоз и утилизация старой техники. Все ето, в течении короткого времени мы сделаем сами, тем самым освободив Вас от хлопот и дополнительных финансовых расходов." alt="zamena">
                                  </a>
                                </div>
                            {/if}
                        {/if}

                        {if $item.acttype=='gift'}
                            <div class="action_terms">
                                <a href="#gift-modal-{$item.id}" data-toggle="modal" class="gift-txt-lnk data-getActInfo" id="i_{$item.id}">Условия акции
                                    <img src="/assets/media/akcija.png" alt="акция">
                                </a>
                            </div>
                        {else}
                            <div class="action_terms"></div>
                        {/if}
                        <span class="full_description">{if $zf.params.catid == 189}{$item.short_info|replace:'Стиральная машина':''}{else}{$item.short_info|truncate:270}{/if}</span>
                        <!--<span class="style_price">Цена:</span><br>--><!-- Цена 18.01 -->
                        {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                            <span style="font-size: 25px;" class="price_sidebar old">{price $item.bdprice}</span>
                            <span style="font-size: 35px; margin-left: 7px;margin-right: 15%;" class="price_sidebar new priceForEcommerce">{price $item.price $item.id_currency} <span class="currency">{$smarty.session.Currency.title}</span></span>
                        {else}
                            <span style="
    float: left;
    font-size: 35px;
    margin-left: 10px;
    color: #0d8abc;
    margin-right: 40%;" class="price_sidebar priceForEcommerce">{price $item.price $item.id_currency}
                                <span class="currency">{$smarty.session.Currency.title}</span>
                            </span>
                        {/if}

                            <!--{if $item.id_programm==3}<p class="manager-pr">Салонная программа</p>{/if}-->

                        {if $manager && $login!="Гальченко Владимир"}
                            {if ($item.price > $item.bestprice) && $item.cost*1.1 < $item.bestprice}
                                <p class="category-price">Первая
                                    цена {math equation="(x-y)/x*100" x=$item.price y=$item.bestprice} </p>
                            {/if}
                            {if $item.rent}<p class="category-price">Категория
                                цены {if $item.rent > 25}1{elseif $item.rent > 12.5}2{elseif $item.rent > 7.5}3{else}{/if}</p>{/if}
                            <p class="cat-manager-price">
                                Розница -
                                <span class='strong'>{price $item.roznprice $item.id_currency} {$smarty.session.Currency.title}</span>
                                Скидка - {$item.realDiscount|round}%
                            </p>
                            <p>{$item.qrm}, {$item.qty_z}
                                , {if $item.rqrm}{$item.rqrm}{else}-{/if}{if $login == 'Сергей Гринюк' || $login == 'Vadyus' || $login == 'Vitaliy Shyshko'}{if $item.rent},({$item.rent|round}){/if},[{$item.sold}]{/if}</p>
                        {/if}
{literal}
<style type="text/css">
    .btn:hover{
        background-position: 0 -30px !important;
    }
</style>
{/literal}
                        <span class="cat-item-buy">
                            {if !in_array($item.id, $basketStats.ids)}
                                <a style="
    float: left;
    margin-top: 10px;
        margin-left: -11px;
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;" href="#data-basket" data-productErommerceId="{$item.id}" onclick="addToCart({$item.id})" data-toggle="modal" class="btn btn-info data-AddToCart data-itemId-{$item.id}">
                                    <i class="icon-shopping-cart icon-white"></i>
                                    <span>{if $item.id_availability == 1}Купить{else}Заказать{/if}</span>
                                </a>
                            {else}
                                <a style="
    float: left;
    margin-top: 10px;
    margin-left: -11px;
    background-image: linear-gradient(to bottom, #f7a81e, #f89406);
    background-color: #f7a81e;" href="#data-basket" data-productErommerceId="{$item.id}" onclick="addToCart({$item.id})" data-toggle="modal" class="btn btn-warning data-AddToCart data-itemId-{$item.id}">
                                    <i class="icon-shopping-cart icon-white"></i>
                                    <span>В корзине</span>
                                </a>
                            {/if}
                        </span>
                        <p class="cat-item-compare">
                            <span title="Добавить в список сравнения" id="comp_{$item.id}" data-id='{$item.id}' data-category='{$item.cat|mblower}' class="data-toggleCompare{if in_array($item.id, $compareItems)} checked{/if}" data-url="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}">
                                <!--<i>в список сравнения</i>-->
                            </span>
                        </p>
{if $item.id_availability == 1}
{if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}
{literal}
<div style="{/literal}{if $login == 'Гальченко Владимир'}display:none;{/if}{literal}
    color: #40bc59;
    font-weight: 900;
    float: left;
    margin-left: 51px;
    line-height: 14px;
    font-size: 12px;
    text-align: center;
    margin-top: -25px;
">от {/literal}{$item.price/$rent_index*$curs_evro_smarty|round}{literal}<br>грн./мес</div>
{/literal} {/if}
                        {if $item.id_brand == '26' && $item.id_category != 60 && $login == 'old version'}<i class="guarantee-icon"></i>{/if}

                        <!-- / .cat-item1 --></div>
{assign var="number_of_element" value=$number_of_element+1}
                {/foreach}
                <!-- / .products --></div>

                <div class="clear"></div>
<!--{if $login == 'Гальченко Владимир'}
{debug}
{/if}-->
{include file=_footer.tpl}