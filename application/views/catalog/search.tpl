{include file='layouts/_header.tpl'}

<div class="container">

    <div class="bread-crumbs breadcrumbs mobile-display-none wrap" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Поиск "{$searchtext}"</span>
            <meta itemprop="position" content="2">
        </div>
    </div>
    <h1 class="liner cent"><span>РЕЗУЛЬТАТЫ ПОИСКА “<em>{$searchtext}</em>”</span></h1>
    <div class="ourr left-right-banner">
        <div class="left-banner">
            <div class="left-banner-content">
                <img src="/assets/img/sliders/left-banner.png" alt="">
                <div class="slider-contain">
                    <div class="head-item">
                        <a href=""><img src="/assets/img/logo.png" alt=""></a>
                        <span>Покупать очень просто!</span>
                    </div>
                    <div class="slider-text">
                        <span>Программа лояльности</span>
                        <div>для постоянных покупателей</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-banner">
            {assign var=pages value=$paginator->getPages()}
            {if $pages->totalItemCount > 0 || $brand}
                <div class="one-content">
                    {if $brand && $brandTree}
                        <div class="search-list-res">
                            <h3 class="">РЕЗУЛЬТАТЫ ПОИСКА В КАТЕГОРИЯХ ПО БРЕНДУ “<em>{$brand.name}</em>”</h3>
                            {foreach from=$brandTree key=parent item=children name=tree}
                                <ul class="search-item">
                                    {$parent}
                                    {foreach from=$children item=child key=key}
                                        <li>
                                            <a href="/catalog/cat/{$key}/brand/{$brand.id}">{$child} ({$counts[$key]}
                                                )</a>
                                        </li>
                                    {/foreach}
                                </ul>
                            {/foreach}
                        </div>
                    {/if}

                    {if $pages->totalItemCount > 3 && !$brand && !$zf.params.catid}
                        <div class="search-list-res">
                            <h3 class="">РЕЗУЛЬТАТЫ ПОИСКА В КАТЕГОРИЯХ “<em>{$searchtext}</em>”</h3>
                            {foreach from=$categories key=parent item=children name=tree}
                                <ul class="search-item">
                                    {$parent}
                                    {foreach from=$children item=child key=key}
                                        <li>
                                            <a href="{url assoc.catid=$key assoc.searchtext=$searchtext param=search}">
                                                {$child}
                                            </a>
                                        </li>
                                    {/foreach}
                                </ul>
                            {/foreach}
                        </div>
                    {/if}




                    <div>
                        <h3 class="">РЕЗУЛЬТАТЫ ПОИСКА ПО ТОВАРАМ “<em>{$searchtext}</em>”</h3>
                        <div class="under-senn">

                            {foreach from=$items item=item name=catitems}
                                {*<pre>
                                {$item|@debug_print_var}
                                    </pre>
                                {php}
                                    die;
                                {/php}*}
                                <div class="item-senn more-senn">
                                    <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                                       tabindex="-1" class="sench">

                                        <div class="in-stock">
                                            {*----------in stock--------*}
                                            {if $item.id_availability == 1}
                                                <h5 class="green">В наличии</h5>
                                            {elseif $item.id_availability == 3}
                                                <h5 class="bluee">Под заказ</h5>
                                            {else}
                                                <h5 class="gray">Наличие уточняйте</h5>
                                            {/if}
                                            {*----------in stock--------*}
                                            <div class="prod-code">Код: {$item.id}</div>
                                        </div>

                                        <h4>
                                            {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}
                                        </h4>
                                        <div class="centr">
                                            <div class="itee-imgg">
                                                {if $item.imgid}
                                                    <img src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}"
                                                         title="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}"
                                                         alt="{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name} - catalog">
                                                {else}
                                                    <img src="/images/noimage.jpg" alt="{$item.brand} {$item.name}"/>
                                                {/if}
                                            </div>
                                            {if $item.bonus_amount>0}
                                                <div class="itee">
                                                    <img src="/assets/img/izee0.png" alt="">
                                                    <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                                </div>
                                            {/if}
                                            <div class="itee">
                                                <img src="/assets/img/izee1.png" alt="">
                                                <em>{$item.rent_index}</em>
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
                                                    <div class="numeral">
                                                        <img src="/assets/img/present-img.png" alt="present"></div>
                                                    <p>Подарок!</p>
                                                    <img src='/images/catalog/{gift assoc.id=$item.actid}'/>
                                                </div>
                                            {/if}
                                        </div>

                                    </a>
                                    <div class="front-wrap">
                                        <div class="front">
                                            {$item.short_info|truncate:1024}
                                        </div>
                                        <a class="morr">Больше +</a>
                                    </div>
                                    <a href="/" class="otzv" tabindex="-1">
                                        <div class="left-otzv">
                                            <img src="/assets/img/patr.png" alt="">
                                        </div>
                                        <div class="right-otzv">
                                            <span>10 отзывов</span>
                                        </div>
                                    </a>
                                    <div class="bakk">
                                        <div class="left-bakk">
                                            {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                                                <p class="oldPrice">{price $item.bdprice} {$smarty.session.Currency.title}</p>
                                                <p class="newPrice">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</p>
                                            {else}
                                                <p>{price $item.price $item.id_currency} {$smarty.session.Currency.title}</p>
                                            {/if}
                                        </div>
                                        <div class="right-bakk">
                                            {if $item.id_availability == 1}
                                                <a class="open-in-popup add-to-cart bask acty"
                                                        {include file='layouts/cart-item.tpl' cart_item=$item}
                                                   tabindex="-1">
                                                    <span>В корзину</span>
                                                </a>
                                            {else}
                                                <a class="open-in-popup add-to-cart bask acty blue-bask"
                                                        {include file='layouts/cart-item.tpl' cart_item=$item}
                                                   tabindex="-1"><span>Под заказ</span></a>
                                            {/if}
                                        </div>
                                    </div>

                                    <div class="hovv">
                                        <div class="news">
                                            <div class="left-butt">
                                                <span tabindex="-1">В избранное</span>
                                            </div>
                                            <div class="right-butt" data-id="{$item.id}">
                                                <span tabindex="-1">Сравнение</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}

                        </div>
                        <!--            START pagination-->
                        {if $pages->pageCount > 1}
                            <div class="blocks-pagination">
                                <a class="blocks-pagination-more">
                                    Показать еще<img src="/assets/img/arrow-circle.png" alt="more">
                                </a>
                                {if $pages->current > 1}
                                    <a class="blocks-pagination-back blocks-pagination-arrow"
                                       href="{if $pages->current-1=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$pages->current-1}{/if}"></a>
                                {/if}
                                {if $pages->firstPageInRangeNum!=1}
                                    <a class="pagin-number active-pagin-number"
                                       href="/catalog/search/{$searchtext}/{$firstPageUrl}">1</a>
                                    <span>...</span>
                                {/if}
                                {if $pages->pagesInRange}
                                    {foreach from=$pages->pagesInRange item=p key=k}
                                        {if $pages->current!=$k}
                                            <a class="pagin-number"
                                               href="/catalog/search/{$searchtext}{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}">{$k}</a>
                                        {else}
                                            <span class="pagin-number pagin-number-active">{$pages->current}</span>
                                        {/if}
                                    {/foreach}
                                {/if}
                                {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                                    <span>...</span>
                                    <a class="pagin-number"
                                       href="/catalog/search/{$searchtext}{$firstPageUrl}/page/{$pages->pageCount}">
                                        {$pages->pageCount}
                                    </a>
                                {/if}

                                {if $pages->current < $pages->pageCount}
                                    <a class="blocks-pagination-forward blocks-pagination-arrow"
                                       href="/catalog/search/{$searchtext}{$firstPageUrl}/page/{$pages->current+1}"></a>
                                {/if}
                                <div class="blocks-pagination-empty">
                                    <div id=selectyPagination class="blocks-pagination-selecty">
                                        <p class=valueTagsPag name=selects>Показать по 24</p>
                                        <ul id=selectyMenuPagination>
                                            <li class=optionsPag>Показать по 16</li>
                                            <li class=optionsPag>Показать по 32</li>
                                            <li class=optionsPag>Показать по 64</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        {/if}
                        <!--            End pagination-->


                        {if !$brand}
                            <div>
                                Найдено <span>{$pages->totalItemCount}</span> записей.
                            </div>
                        {/if}
                    </div>

                </div>
            {else}
                <div class="not-found">
                    <p>По заданным параметрам ничего не найдено</p>
                    <a href="javascript:history.back(-1)" class="khob khob-back">Вернуться назад</a>
                    {if $maybe}
                        Возможно, вы имели ввиду
                        <a class="link" href="https://590.ua/catalog/search/{$maybe|htmlspecialchars}">{$maybe}</a>
                    {/if}
                </div>
            {/if}
        </div>
    </div>


    {include file='layouts/slider_view.tpl'}

    {include file='layouts/orig.tpl'}
    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>

</div>

{include file='layouts/_footer.tpl'}