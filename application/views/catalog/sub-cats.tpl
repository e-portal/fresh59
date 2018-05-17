<div class="container">
    {if $pages->totalItemCount > 0}
        <div class="options wrap">

            {php}echo $this->navigation($this->menu)->breadcrumbs()->setPartial(array('catalog/breadcrumbs.tpl', 'default'));{/php}


            <div class="liner cent">
                <span>
                    {if $seo_h1}
                        {$seo_h1}
                    {else}
                        {php} echo $this->menu->findOneBy('active', true);{/php}
                    {/if}
                </span>
            </div>
            <div class="base-options">

                {*----------SORT----------*}
                {include file='catalog/subs-nav.tpl'}
                {*----------SORT----------*}

                <div class="right-options">
                    <div class="selec">
                        <p>Сортировать по:</p>


                        <div id=selectyBoxi>
                            <p class=valueTags name=selects>цена по возростанию<span></span></p>
                            <ul id=selectyMenuBoxi>
                                <li class=options>цена по убыванию</li>
                                <li class=options>популярные</li>
                                <li class=options>только в наличии</li>
                            </ul>
                        </div>
                    </div>


                    <div class="share">
                        <p>Текущие акции:</p>

                        <div class="share-main">
                            <div class="share-item active">Вернем до 30%</div>
                            <div class="share-item">С подарками</div>
                            <div class="share-item">Вместе дешевле</div>
                        </div>


                    </div>


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
                                            <m>{$item.rent_index}</m>
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

                        <div class="d" style="clear: both"></div>


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
                                <a class="pagin-number active-pagin-number" href="{$firstPageUrl}">1</a>
                                <span>...</span>
                            {/if}
                            {if $pages->pagesInRange}
                                {foreach from=$pages->pagesInRange item=p key=k}
                                    {if $pages->current!=$k}
                                        <a class="pagin-number"
                                           href="{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}">{$k}</a>
                                    {else}
                                        <span class="pagin-number pagin-number-active">{$pages->current}</span>
                                    {/if}
                                {/foreach}
                            {/if}
                            {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                                <span>...</span>
                                <a class="pagin-number"
                                   href="{$firstPageUrl}/page/{$pages->pageCount}">{$pages->pageCount}</a>
                            {/if}

                            {if $pages->current < $pages->pageCount}
                                <a class="blocks-pagination-forward blocks-pagination-arrow"
                                   href="{$firstPageUrl}/page/{$pages->current+1}"></a>
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
                        <!--            End pagination-->
                    {/if}


                    <div class="owls interest">
                        {*----------ARTICLES----------*}
                        <div class="container">
                            <a class="blue" href="/articles">Все советы<span class="linn"></span></a>
                            <div class="liner"><span>Полезно и интересно</span></div>
                            <div class="owl-main">

                                <div class="owl interest-slide">

                                    {foreach from=$articles item=article}
                                        <div class="items">
                                            <a href="/articles/{$article.url|mblower}">

                                                {if isset($article.img) }
                                                    <img src="/assets/img/articles/{$article.img}">
                                                {else}
                                                    <img src="/assets/img/articles/art{1|rand:6}.png">
                                                    {*<img src="/assets/img/noimage.png">*}

                                                {/if}

                                                {*<h4>{$article.title|default:'title'}</h4>*}
                                                <h4>{$article.announce|default:'announce'}</h4>

                                                <div class="item-comen">
                                                    <div class="clock">
                                                        <img src="/assets/img/clock.png" alt="">
                                                        <p>{mdates arr=$article.date}</p>
                                                    </div>
                                                    <div class="clock">
                                                        <img src="/assets/img/chat.png" alt="">
                                                        <p>423</p>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    {/foreach}

                                </div>

                            </div>
                        </div>
                        {*----------ARTICLES----------*}
                        <div class="interest-sale">
                            <p class="ad-blue">Самые выгодные покупки</p>
                            <p class="ad-cheaper">У нас дешевле! <br> скидки <b>до 60%</b></p>
                            <div><img src="/assets/img/interest-sale.png" alt="sale"></div>
                        </div>
                    </div>

                    {*-----------LAST VIEWED-----------*}
                    {include file='layouts/slider_view.tpl' small=true}
                    {*-----------LAST VIEWED-----------*}


                </div>
            </div>
        </div>
    {else}
        <div class="not-found">
            <p>По заданным параметрам ничего не найдено</p>
            <div class="khob khob-back">Вернуться назад</div>
        </div>
    {/if}
    <!-- SEO -->
    <div class="fashion wrap">
        {$seo_text_bottom|default:''}
    </div>
    <!-- SEO -->
    {include file='layouts/orig.tpl'}
</div>
<div class="doww"><img src="/assets/img/verh.png" alt=""></div>