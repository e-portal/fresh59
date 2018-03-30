{include file='layouts/_header.tpl'}

<div class="h1_holder span-12 no_margin">
    <h1>Акционные модели</h1>
</div>

{assign var="number_of_element" value=0}
<div id="category_block_view_listing" class="span-12 no_margin">
    {foreach from=$items item=item name=catitems}
    {if $article && $smarty.foreach.catitems.iteration == 21 && !$zf.params.page}
        <div class="span-4 category_block_view_item">
            {assign var="iteration_action" value=0}
            {foreach from=$item_id_electrolux_action item=foo}
                {if $item.id2 == $foo}
                    <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                          data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                        грн</span>
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
                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                              data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                            грн</span>
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
                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                              data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                            грн</span>
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
                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                              data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                            грн</span>
                    {/if}
                    {assign var="iteration_action" value=$iteration_action+1}
                {/foreach}
                <a href="/landing/electrolux/ergorapido/landing.html">
                    <img src="/landing/electrolux/ergorapido/assets/img/landing.jpg"
                         alt="Пылесос Electrolux Ergorapido купить" title="Пылесос Electrolux Ergorapido">
                </a>
            </div>
        {/if}

        {if $catId == '12'}
            <div class="span-4 category_block_view_item">
                {assign var="iteration_action" value=0}
                {foreach from=$item_id_electrolux_action item=foo}
                    {if $item.id2 == $foo}
                        <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                              data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                            грн</span>
                    {/if}
                    {assign var="iteration_action" value=$iteration_action+1}
                {/foreach}
                <a href="/landing/hansa/landing.html">
                    <img src="/landing/hansa/images/9.png" alt="Варочная поверхность Hansa купить"
                         title="Варочная поверхность Hansa">
                </a>
            </div>
        {/if}
    {/if}

    {if $item.bonus_amount > 0}
    <div class="span-4 category_block_view_item" data-qtip="1">
        {assign var="iteration_action" value=0}
        {foreach from=$item_id_electrolux_action item=foo}
            {if $item.id2 == $foo}
                <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                      data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                    грн</span>
            {/if}
            {assign var="iteration_action" value=$iteration_action+1}
        {/foreach}
        {else}
        <div class="span-4 category_block_view_item">
            {assign var="iteration_action" value=0}
            {foreach from=$item_id_electrolux_action item=foo}
                {if $item.id2 == $foo}
                    <span {if $item.acttype=='gift'}id="refund_electrolux_gift" {else}id="refund_electrolux"{/if}
                          data-title="Повертаємо гроші для оплати комунальних послуг">повернемо {$cashback_electrolux_action[$iteration_action]}
                        грн</span>
                {/if}
                {assign var="iteration_action" value=$iteration_action+1}
            {/foreach}
            {/if}

            {if $login == 'old version'}

            {if $smarty.foreach.catitems.iteration <= 4 && $smarty.foreach.catitems.iteration <= $smarty.foreach.catitems.total}
                <div>
                    <!--cartdname-->{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand}
                    {$item.name}<!--/cartdname--></div>
            {/if}
            <div class="prev_bonus">
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
            <div>
                {else}
                <div>
                    {/if}

                    {if $item.bonus_amount>0}
                    <div onmouseover="hide_icons_bonus({$number_of_element})"
                         onmouseout="show_icons_bonus({$number_of_element})"
                         class="bonus_on_card_{$number_of_element}"><img src="/images/hint/piggy-bank.png"
                        >вернем<br><span
                        >{$item.bonus_amount|round}
                            грн.</span>
                        <div class="overlay_icons">
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
                    {if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}
                    {if $item.id_availability == 1}
                        <div onmouseover="hide_icons_oplata_chast({$number_of_element})"
                             onmouseout="show_icons_oplata_chast({$number_of_element})"
                             class="oplata_chast_icon_{$number_of_element}"><img src="/images/hint/oplata_chast.png"
                            >от
                            <span>{$item.price/$rent_index*$curs_evro_smarty|round}</span><br><span
                            > грн./мес.</span>
                            <div class="overlay_icons">
                                <div class="wrapper_body">
                                    <div class="cbm_wrap ">
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow" target="_blank">
                                                <h1
                                                        title="Узнать подробнее...">Оплата частями</h1></a></noindex>
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow"
                                                    target="_blank"><img
                                                        title="Узнать подробнее..." src="/images/hint/op_chast.png"></a>
                                        </noindex>
                                        <span>Этот товар Вы сможете оплатить частями. Без переплат!</span><br>
                                        <span>Все что Вам нужно:</span>
                                        <span>1. Наличие карты ПриватБанк.</span>
                                        <noindex><a href="https://chast.privatbank.ua/" rel="nofollow"
                                                    target="_blank"><img
                                                        title="Узнать подробнее..."
                                                        src="/images/hint/cardprivat.png"></a>
                                        </noindex>
                                        <span>2. Доступный лимит.</span>
                                        <span>Узнать максимальную суму покупки по сервису очень просто. Нужно отправить SMS сообщение на номер 10060 с текстом chast</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div onmouseover="hide_icons_oplata_rassrochka({$number_of_element})"
                             onmouseout="show_icons_oplata_rassrochka({$number_of_element})"
                             class="oplata_rassrochka_icon_{$number_of_element}"><img
                                    src="/images/hint/oplata_rassrochka_icon.png"
                            >от <span
                            >{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span><br><span
                            > грн./мес.</span>
                            <div class="overlay_icons"
                            >
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
                        <div class="waranty_zirtal_{$number_of_element}">
                            <img src="/images/hint/waranty_zirtal.png">гарантия<br>
                            <span>36 мес.</span>
                        </div>
                    {/if}

                    {if $item.bestprice > $item.price || $item.id2==41385}
                        <div onmouseover="hide_icons_best_price({$number_of_element})"
                             onmouseout="show_icons_best_price({$number_of_element})"
                             class="best_price_icon_{$number_of_element}"><img src="/images/hint/thumbs_up.png"
                            >лучшая<br><span
                            >цена</span>
                            <div class="overlay_icons"
                            >
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
                        >
                        <div class="overlay_icons">
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
                                >
                                <div>{$summ_temporary_celebration[$iteration_celebration]} грн.
                                </div>
                                <div>
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
                                                скидками.<br><strong>Внимание:
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
                    {/foreach}{/if}
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
                    <span>Наличие уточняйте</span>

                    {elseif $altItem.id_availability == 2 && $item.qrm==0 || $item.qrm==""} <span
                            class="order_stock_status">
                                        <a class="on-order" target="_blank" href="/articles/4"
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
                                    <span>Наличие уточняйте</span>{/if}
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
                    {if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}
                    <!-- Credit Logo -->
                    <div class="credit_logo_pp"
                    >
                        <img src="/images/icons/privatbank_pp_{$rent_index}_logo.png" width="60"
                             title="Кредит Оплата Частями Приватбанк" alt="Кредит Оплата Частями Приватбанк">
                    </div>
                    <!-- Credit Logo End -->
                {/if}

                {if $catId == 26 || $catId == 25 || $catId == 209 || $catId == 102 || $catId == 18 || $catId == 24 || $catId == 212 || $catId == 37 || $catId == 314 || $catId == 21 || $catId == 36 || $catId == 322 || $catId == 12 || $catId == 16 || $catId == 88 || $catId == 210 || $catId == 211 || $catId == 175 || $catId == 10 || $catId == 15 || $catId == 155 || $catId == 39 || $catId == 213 || $catId == 11 || $catId == 13 || $catId == 34 || $catId == 302 || $catId == 67}
                    {if $item.acttype !== 'gift' && $item.x_index == '1' || $item.id == '21465'}
                        <div class="zamena-catalog"
                        >
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
                <!--<span class="style_price">Цена:</span><br>--><!-- Цена 18.01 -->
                {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                    <span class="price_sidebar old">{price $item.bdprice}</span>
                    <span
                            class="price_sidebar new priceForEcommerce">{price $item.price $item.id_currency} <span
                                class="currency">{$smarty.session.Currency.title}</span></span>
                {else}
                    <span class="price_sidebar priceForEcommerce">{price $item.price $item.id_currency}
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
                                <a href="#data-basket" data-productErommerceId="{$item.id}"
                                   onclick="addToCart({$item.id})"
                                   data-toggle="modal" class="btn btn-info data-AddToCart data-itemId-{$item.id}">
                                    <i class="icon-shopping-cart icon-white"></i>
                                    <span>{if $item.id_availability == 1}Купить{else}Заказать{/if}</span>
                                </a>


{else}



                                <a href="#data-basket" data-productErommerceId="{$item.id}"
                                   onclick="addToCart({$item.id})"
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
                    {if $item.rent > 25}{assign var="rent_index" value=8}{elseif $item.rent > 12.5}{assign var="rent_index" value=6}{else}{assign var="rent_index" value=3}{/if}
                {literal}
                    <div >от {/literal}{$item.price/$rent_index*$curs_evro_smarty|round}{literal}
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


        <div class="doww"><img src="/assets/img/verh.png" alt=""></div>

{include file='layouts/_footer.tpl'}