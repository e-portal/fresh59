{include file='layouts/_header.tpl'}

<div class="container">
    {*<pre>{$item|var_dump}</pre>*}
    {*<pre>{$item|@debug_print_var}</pre>*}
    {*--------------------------------------------------------------------------------------------------------*}
    {php}echo $this->navigation($this->menu)->breadcrumbs()->setPartial(array('catalog/breadcrumbs.tpl', 'default'));{/php}
    <div class="left-right slider-wrap jq-move-slider jq-move-slider-wrap wrap">
        <div class="ourr">
            <div class="slider-product jq-move-slider-product">
                <div class="slider-product-icon">
                    {if $item.country}
                        {*{$item.country}*}
                        <div class="itee">
                            <img src="/images/icons/flags/{country assoc.country=$item.country assoc.source=1}">
                            <p>Made in <span> {country assoc.country=$item.country assoc.source=0}</span></p>
                        </div>
                    {/if}
                    {if $item.bonus_amount>0}
                        <div class="itee">
                            <img src="/assets/img/izee0.png" alt="">
                            <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>

                            {*-------POP-up-------*}
                            <div class="pop-stock pay-bonus">
                                <div class="pop-header">
                                    <span>ОПлачивай бонусами!</span>
                                    <img src="/assets/img/main/pop-pay-bonus.png" alt="title">
                                </div>
                                <div class="pop-text">
                                    <p>Вы можете получить <b>бонусную карточку</b> на которой можно накапливать и
                                        тратить бонусы в оплате товара
                                        на нашем сайте <b>(1 бонус приравнивается к 1 грн.)</b></p>
                                    <p>Бонусный счет можно использовать для <b>полной</b> или <b>частичной оплаты</b>
                                        последующих заказов в
                                        нашем интернет-магазине.</p>
                                    <p>Карточку постоянного покупателя могут использовать <b>все члены Вашей семьи</b>,
                                        а также друзья.</p>
                                    <img class="pop-background" src="/assets/img/main/pop-pay-bonus-back.png"
                                         alt="backgroun">
                                </div>
                            </div>
                            {*-------POP-up-------*}
                        </div>
                    {/if}
                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <em>{if $item.rent > 25}8{elseif $item.rent > 12.5}6{else}3{/if}</em>
                        <p>от
                            <span>
                                {if $item.rent >= 25}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8}
                                {elseif $item.rent > 12.5}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6}
                                {elseif $item.rent > 7.5}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                                {else}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                                {/if}
                            </span>
                            грн/мес</p>
                        {include file='catalog/popup-privat.tpl'}
                    </div>
                    <div class="itee">
                        <img src="/assets/img/izee3.png" alt="">
                        <p>от <span>
                                {$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}
                            </span> грн/мес</p>

                        <div class="pop-stock quick-payment">
                            <div class="pop-header">
                                <span>мгновенная рассрочка</span>
                                <img src="/assets/img/main/pop-quick-payment.png" alt="title">
                            </div>
                            <div class="pop-text">
                                <p><b>Получите рассрочку за 30 минут без переплат и очередей</b></p>
                                <p>Покупайте товары в рассрочку до 24 месяцев с небольшой ежемесячной комиссией от
                                    стоимости товара.</p>
                                <img class="pop-background" src="/assets/img/main/pop-quick-payment-back.png"
                                     alt="backgroun">
                            </div>
                        </div>
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
                            <div class="pop-stock best-price">
                                <div class="pop-header">
                                    <span>Отличный выбор</span>
                                    <img src="/assets/img/main/pop-best-price.png" alt="title">
                                </div>
                                <div class="pop-text">
                                    <p>Мы <b>отследили цены</b> во многих интернет магазинах по этому товару. И смело
                                        можем утверждать, что <b>наша
                                            цена является лучшей</b>!</p>
                                    <p>Товары, на которых Вы заметили иконку с пальцем вверх - достойны Вашего внимания
                                        :)</p>
                                    <img class="pop-background" src="/assets/img/main/pop-best-price-back.png"
                                         alt="backgroun">
                                </div>
                            </div>
                        </div>
                    {/if}
                </div>
                {if $item.acttype=='gift'}
                    <a href="#prod-gift" class="itee present">
                        <div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>
                        <p>Подарок!</p>
                        <img src='/images/catalog/{gift assoc.id=$item.actid}'/>
                    </a>
                {/if}
                {if $item.acttype !== 'gift'&& $x3 > 0 || $item.id == '21465'}
                    <div class="itee change">
                        <img src="/assets/img/izee5.png" alt="">
                        <p>Замена</p>
                    </div>
                {/if}
                <div class="slider-prod slider-for">

                    {if $item.images}
                        {foreach from=$item.images item=item_image name=item_image}
                            {if $smarty.foreach.item_image.index<20}
                                <div class="clone-slide">
                                    <img src="{$url.img}/catalog/{$item_image.id}.{$item_image.imgext}"
                                         alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}"
                                         title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}"/>
                                </div>
                            {/if}
                        {/foreach}
                    {else}
                        <img src="/images/noimage.jpg" alt="{$item.brand} {$item.name}"/>
                    {/if}
                    {if $video.type=='youtube'}
                        <div class="clone-slide">
                            <iframe src="https://www.youtube.com/embed/{$video.code}" frameborder="0"
                                    allow="encrypted-media" allowfullscreen></iframe>
                        </div>
                    {/if}

                </div>
                <div class="slider-prod slider-nav">

                </div>
            </div>
            <div class="product-info">

            </div>

        </div>
        <div class="ourr">
            <div class="slide-tabs">
            <div class="product-menu">
                <a href="#prod-info">Описание товара</a>
                <a href="#prod-characteristic">Характеристики</a>
                <a href="#prod-accessories">Аксессуары</a>
                <a href="#prod-reviews">Отзывы</a>
                <a href="#prod-questions">Вопросы</a>
            </div>
            <!--           end ЗАГОЛОВОК ПРОДУКТА             -->
            <div class="title-slide">
                <h1>
                    {if $item.category_onename}{$item.category_onename}{else}{$item.category}{/if}
                    <span itemprop="brand">
                        <span itemprop="manufacturer" itemscope itemtype="http://schema.org/Organization">
                            <span itemprop="name">{$item.brand}</span>
                        </span>
                    </span>
                    <span itemprop="name">{$item.name}</span>
                </h1>
                <div class="title-slide-show flexibal">
                    <div class="gray big-price">
                        {price $item.price $item.id_currency} {$smarty.session.Currency.title}
                    </div>

                    <div class="busket-marg">
                        <a class="qweek-busket-prod open-in-popup add-to-cart bask acty"
                                {include file='layouts/cart-item.tpl' cart_item=$item}>
                            <span>В корзину</span>
                        </a>
                    </div>
                </div>
            </div>
            </div>
            <div class="in-stock">
                <div class="prod-code">Код товара {$item.id}</div>
                {*----------in stock--------*}
                {if $item.id_availability == 1}
                    <div class="green">В наличии</div>
                {elseif $item.id_availability == 3}
                    <div class="bluee">Под заказ</div>
                {else}
                    <div class="gray">Наличие уточняйте</div>
                {/if}
                {*----------in stock--------*}
            </div>
            <div class="prod-stars">
                <object type="lol/wut" class="stars-ipad">
                    <a href="/" class="otzv">
                        <div class="left-otzv">
                            <img src="/assets/img/patr.png" alt="">
                        </div>
                        <div class="right-otzv">
                            <span>10 отзывов</span>
                        </div>
                    </a>
                </object>
                <div class="compare-found">
                    <div class="left-butt">
                        <span><span>В избранное</span></span>
                    </div>
                    <div class="right-butt" data-id="{$item.id}">
                        <span><span>Сравнение</span></span>
                    </div>
                    <div class="look-for">
                        <a href="!#"><span>Следить за ценой</span></a>
                    </div>
                </div>
                <div class="prod-saler">Продавец:<img src="/assets/img/logo.png" alt=""></div>

            </div>
            <!--           end ЗАГОЛОВОК ПРОДУКТА             -->


            <!--           ЦЕНА КОРЗИНА             -->
            <div class="price-busket-kredit">
                <div class="prod-price">
                    {if $item.specprice  && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                        <div class="old-price">{price $item.bdprice} {$smarty.session.Currency.title}</div>
                        <div class="red big-price">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</div>
                    {else}
                        <div class="big-price">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</div>
                    {/if}
                    {if true!==$certificates}
                        <div class="buy-by-part-from">
                            <img src="/assets/img/izee1.png" alt="">
                            <em>{if $item.rent > 25}8{elseif $item.rent > 12.5}6{else}3{/if}</em>
                            от <span>
                                {if $item.rent >= 25}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8}
                                {elseif $item.rent > 12.5}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6}
                                {elseif $item.rent > 7.5}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                                {else}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                                {/if}
                            </span> грн/мес
                        </div>
                    {/if}
                    {if $item.bonusAmount > 0}
                        <div class="return-prod">Вернем: <span class="red">{$item.bonusAmount|round} грн</span></div>
                        <div class="on-bonus-prod">на <a href="/page/bonus">Бонусный счет</a></div>
                    {/if}
                </div>
                <div class="qweek-busket-prodadd-to-cart">
                    <a class="qweek-busket-prod open-in-popup add-to-cart bask acty"
                            {include file='layouts/cart-item.tpl' cart_item=$item} data-serttitle="ТехноЗабота Универсальная на 36 месяцев" data-sertprice="940">
                        <span>В корзину</span>
                    </a>
                    <div class="without-reg-prod">
                        Купить без регистрации
                    </div>
                    <form>
                        <div class="qweek-buy">
                            <form action="">
                                <input type="phone" class="numb" placeholder="Введите номер">
                                <div class="buy-btn">Купить</div>
                            </form>
                        </div>
                    </form>
                </div>
                <div class="buy-by-part {if true!==$certificates}certificates{/if}">
                    {*===================Certificate=================*}
                    {if true!==$certificates}
                        <form>
                            <label class="servs">ТехноЗабота Универсальная на 36 месяцев
                                <input type="checkbox" checked="checked">
                                <span class="checkmark"></span>
                                <em>940 грн</em>
                            </label>
                            <label class="servs">ТехноЗабота Прочь Ремонты на 36 месяцев
                                <input type="checkbox">
                                <span class="checkmark"></span>
                                <em>940 грн</em>
                            </label>

                        </form>
                        {*===================Certificate=================*}
                    {else}
                        <div>
                            <img src="/assets/img/izee1.png" alt="">
                            от
                            <span>
                            {if $item.rent >= 25}
                                {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8}
                            {elseif $item.rent > 12.5}
                                {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6}
                            {elseif $item.rent > 7.5}
                                {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                            {else}
                                {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                            {/if}
                        </span>
                            грн/мес
                        </div>
                        <div>
                            <a class="green-link">Рассрочка</a> или <a class="green-link">Кредит</a>
                        </div>
                        <div>
                            <img src="/assets/img/izee1.png" alt="">
                            0% используйте возможность купить товар без переплат
                        </div>
                        <div>
                            <img src="/assets/img/izee1.png" alt="">
                            Доступна&nbsp;<a class="green-link">Оплата частями</a>
                        </div>
                    {/if}
                </div>
            </div>
            <!--           end ЦЕНА КОРЗИНА             -->


            <!--           СЛАЙДЕР ВМЕСТЕ ДЕШЕВЛЕ             -->
            {if $assocItems|@count > 0 && !$item.archive}
                {include file='catalog/cheaper-slider.tpl'}
            {/if}
            <!--           end СЛАЙДЕР ВМЕСТЕ ДЕШЕВЛЕ             -->


            <!--           ТАЙМЕР УСПЕЙ ЗАКАЗАТЬ             -->


            {if $action}
                <!-- Action -->
                {if $item.acttype=='gift'}
                    <div class="take-gift" id="prod-gift">
                        <div class="title-gift"><span>Успей заказать и получить подарок!</span></div>
                        <div class="take-gift-content">
                            <div class="timer" data-year="{getdate arr=$action.end_date arr='Y'}"
                                 data-month="{getdate arr=$action.end_date arr='m'}"
                                 data-days="{getdate arr=$action.end_date arr='d'}"></div>
                            <div class="gift-prod">
                                <div class="gift-prod-img">
                                    <img src='/images/catalog/{gift assoc.id=$item.actid}'/>
                                </div>
                                <div class="gift-prod-text">
                                    <a class="gift-prod-title">{$action.name}</a>
                                    <div class="in-gift red">в подарок!</div>
                                </div>
                            </div>
                            <div class="gift-price">
                                <div class="">
                                    {price $item.price $item.id_currency} {$smarty.session.Currency.title}
                                </div>
                                <div class="busket-marg">
                                    <object type="lol/wut">
                                        <a class="open-in-popup add-to-cart bask acty" {include file='layouts/cart-item.tpl' cart_item=$item}>
                                            <span>В корзину</span></a>
                                    </object>
                                </div>
                                <a href="/actions/show/{$action.id}" class="bluee">Подробнее об акции</a>
                            </div>
                        </div>
                    </div>
                {/if}

                <!-- Action End -->
            {/if}


            <!--           end ТАЙМЕР УСПЕЙ ЗАКАЗАТЬ             -->

            <!--            ТАБЫ ДОСТАВКА ОПЛАТА             -->
            <div class="tabs tabs-delivery-pay">
                <div class="tab-button-outer">
                    <ul class="tab-button">
                        <li class="is-active"><a href="#tab01">Доставка</a></li>
                        <li><a href="#tab02">Оплата</a></li>
                        <li><a href="#tab03">Гарантия</a></li>
                        <li><a href="#tab04">Инструкция</a></li>
                    </ul>
                </div>
                <div id="tab01" class="tab-contents is-active">
                    <div class="tab-contents-wrap">
                        <div class="flexibal">
                            <div class="threee">
                                <img src="/assets/img/orig3.png" alt="">
                                <div class="">
                                    {if $item.price > 2000/$currencies[6].rate}
                                        <p>По Киеву c заносом в квартиру</p>
                                        <p><span>БЕСПЛАТНО</span></p>
                                    {else}
                                        <p>доставка по Киеву 40грн.</p>
                                        <p>доставляем по Украине</p>
                                    {/if}
                                </div>
                            </div>
                            <div class="threee">
                                <img src="/assets/img/orig3.png" alt="">
                                <div class="">
                                    <p><span>В пригород г.Киева:</span></p>
                                    <p>10грн/1км (отсчет от КПП г.Киева)</p>
                                </div>
                            </div>
                            <div class="threee">
                                <img src="/assets/img/orig3.png" alt="">
                                <div class="">
                                    <p><span>По Украине</span></p>
                                    <p>согласно тарифов перевозчика</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab02" class="tab-contents">
                    <div class="tab-contents-wrap">
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
                            <li>
                                <ul>
                                    <li><img src="/assets/img/payment/liqpay2.png"></li>
                                    <li><img src="/assets/img/payment/mastercard-logo.png"></li>
                                    <li><img src="/assets/img/payment/visa-logo.png"></li>
                                    <li><img src="/assets/img/payment/privat-bonus.png"></li>

                                    <li><img title="Дисконтный клуб ПриватБанка"
                                             src="/assets/img/payment/vip_discount.png"></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="tab03" class="tab-contents">
                    <div class="tab-contents-wrap">
                        <a class="bluee" href="/page/guarantee">Гарантия</a>
                        {if $brand_info.guarantee}
                            <p>
                                {if $item.id_brand == 9 && $item.id_category == 217}
                                    <em>5</em>
                                    лет
                                {else}
                                    {if $brand_info.guarantee!=0}
                                        <em>{$brand_info.guarantee}</em>
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
                            </p>
                        {/if}
                    </div>
                </div>
                <div id="tab04" class="tab-contents">
                    <div class="tab-contents-wrap">
                        {if $item.instruction}
                            <div>
                                <div><p>Отдельностоящая стиральная машина Electrolux EWF 1076 GDW с фронтальной
                                        загрузкой. Имеет
                                        специальную программу
                                        Обработки паром для мягкого разглаживания складок на одежде и устранению
                                        неприятного запаха.
                                        ФункцияTime Manager позволит адаптировать цикл стирки по Вашему расписанию.
                                        Светодиодные
                                        индикаторы обеспечат интуитивно понятный выбор настроек. Большой загрузочный люк
                                        значительно
                                        упрощает загрузку и выгрузку белья.</p></div>
                                <div><p>Отдельностоящая стиральная машина Electrolux EWF 1076 GDW с фронтальной
                                        загрузкой. Имеет
                                        специальную программу
                                        Обработки паром для мягкого разглаживания складок на одежде и устранению
                                        неприятного запаха.
                                        ФункцияTime Manager позволит адаптировать цикл стирки по Вашему расписанию.
                                        Светодиодные
                                        индикаторы обеспечат интуитивно понятный выбор настроек. Большой загрузочный люк
                                        значительно
                                        упрощает загрузку и выгрузку белья.</p></div>
                                <div><p>Отдельностоящая стиральная машина Electrolux EWF 1076 GDW с фронтальной
                                        загрузкой. Имеет
                                        специальную программу
                                        Обработки паром для мягкого разглаживания складок на одежде и устранению
                                        неприятного запаха.
                                        ФункцияTime Manager позволит адаптировать цикл стирки по Вашему расписанию.
                                        Светодиодные
                                        индикаторы обеспечат интуитивно понятный выбор настроек. Большой загрузочный люк
                                        значительно
                                        упрощает загрузку и выгрузку белья.</p></div>
                                <a class="bask acty" href="/files/instruction/{$item.id}.{$item.instruction}">
                                    <span>Скачать</span>
                                </a>
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
            <!--           end ТАБЫ ДОСТАВКА ОПЛАТА             -->

            <div class="product-container">
                <!--           ТАБЛИЦА ХАРАКТЕРИСТИК                 -->
                <div id="prod-info">
                    <div class="liner smaller-liner">
                        <span>
                            Описание - {if $item.category_onename}{$item.category_onename}{else}{$item.category}{/if} {$item.brand} {$item.name}
                        </span>
                    </div>
                    <div>{if $item.full_info}{$item.full_info}{else}{$item.short_info}{/if}</div>
                </div>
                <div id="prod-characteristic">
                    <div class="liner smaller-liner"><span>Характеристики</span></div>
                    <table class="table-without-border">

                        {foreach from=$fields item=_group}
                            {if $_group.name}
                                <tr>
                                    <th class="title-bold">{$_group.name}</th>
                                </tr>
                                {foreach from=$_group.fields item=_field name=td_dot1}
                                    {if !empty($_field.value)}
                                        <tr>
                                            <td>{$_field.name}</td>
                                            <td>{$_field.value}</td>
                                        </tr>
                                    {/if}
                                {/foreach}

                            {else}
                                {foreach from=$_group.fields item=_field name=td_dot}
                                    {if !empty($_field.value) || $_field.value!=''}
                                        <tr>
                                            <td>{$_field.name}</td>
                                            <td>{$_field.value}</td>
                                        </tr>
                                    {/if}
                                {/foreach}
                            {/if}
                        {/foreach}
                    </table>
                </div>
                <!--           end ТАБЛИЦА ХАРАКТЕРИСТИК           -->
                <!--           ОТЗЫВЫ ВОПРОСЫ_ОТВЕТЫ           -->
                <div class="tabs tabs-review" id="prod-reviews">
                    <div class="tab-button-outer" id="prod-questions">
                        <ul class="tab-button">
                            <li class="tab-review"><a href="#tab11">Отзывы <span>  ({$comments|@count})</span></a></li>
                            <li class="tab-quest"><a href="#tab12">Вопросы и ответы <span>  (8)</span></a></li>
                        </ul>
                    </div>
                    <div id="tab11" class="tab-contents is-active tab-review">
                        <div class="tab-contents-wrap">
                            <div class="tab-section flexibal flex-between">
                                <div class="bonus flexibal">
                                    <img src="/assets/img/menu1.png"> + 5 бонусов за отзыв
                                </div>
                                <div class="">
                                    <object type="lol/wut">
                                        <a class="yellow-button acty"><span>Оставить отзыв</span></a>
                                    </object>
                                </div>
                            </div>
                            <div id="disqus_thread" class="tab-section"></div>
                            {foreach from=$comments item=comment}
                                <div class="tab-section review-from">
                                    <div class="review-name-date flexibal flex-between">
                                        <div class="review-name">
                                            <div>{$comment.name}</div>
                                            <object type="lol/wut">
                                                <a href="/" class="otzv">
                                                    <div class="left-otzv">
                                                        <img src="/assets/img/patr.png" alt="">
                                                    </div>
                                                </a>
                                            </object>
                                        </div>
                                        <div class="review-date">{$comment.date}</div>
                                    </div>
                                    <div>
                                        <p>{$comment.text}</p>
                                    </div>
                                    <div>
                                        <span class="mar-r">Достоинства: </span>Безшумная, узкая
                                    </div>
                                    <div>
                                        <span class="mar-r">Недостатки: </span>Нет
                                    </div>
                                    <div class="review-date">
                                        <span class="mar-r">(7 ответов) </span>
                                        <a class="bluee">Ответить</a>
                                    </div>
                                </div>

                            {/foreach}
                            {*<div  id="disqus_thread" class="tab-section"></div>*}
                            <div class="tab-section all-review">
                                <a class="arrow-right bluee">Смотреть все отзывы</a>
                            </div>
                        </div>
                    </div>
                    <div id="tab12" class="tab-contents tab-quest">
                        <div class="tab-contents-wrap">
                            <div class="tab-section review-from">
                                <div class="review-name-date flexibal flex-between">
                                    <div class="review-name">
                                        <div>Ирина Трофимчук</div>
                                    </div>
                                    <div class="review-date">10.02.2018</div>
                                </div>
                                <div>
                                    <p>Узкая и компактная, стирает хорошо и негромко отжимает, пользуемся месяц,
                                        покупкой
                                        очень довольны! 590
                                        спасибо за оперативную доставку. Узкая и компактная, стирает хорошо и негромко
                                        отжимает, пользуемся месяц,
                                        покупкой очень довольны! 590 спасибо за оперативную доставку.</p>
                                </div>
                                <div class="review-date">
                                    <span class="mar-r">(7 ответов) </span>
                                    <a class="bluee">Ответить</a>
                                </div>
                            </div>
                            <div class="tab-section review-from">
                                <div class="review-name-date flexibal flex-between">
                                    <div class="review-name">
                                        <div>Ирина Трофимчук</div>
                                    </div>
                                    <div class="review-date">10.02.2018</div>
                                </div>
                                <div>
                                    <p>Узкая и компактная, стирает хорошо и негромко отжимает, пользуемся месяц,
                                        покупкой
                                        очень довольны! 590
                                        спасибо за оперативную доставку. Узкая и компактная, стирает хорошо и негромко
                                        отжимает, пользуемся месяц,
                                        покупкой очень довольны! 590 спасибо за оперативную доставку.</p>
                                </div>
                                <div class="review-date">
                                    <span class="mar-r">(7 ответов) </span>
                                    <a class="bluee">Ответить</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--           end ОТЗЫВЫ ВОПРОСЫ_ОТВЕТЫ           -->
            </div>
        </div>
    </div>


    {*--------------------------------------------------------------------------------------------------------*}



    {if $assocItemsVmeste|@count > 0}
        {include file='catalog/also-buy.tpl'}
    {/if}
    {include file='catalog/the-same-items.tpl'}


    {if $seo_text_bottom}
        <div class="equip">
            <div class="nozer wrap">
                {$seo_text_bottom}
            </div>
        </div>
    {/if}

    {include file='layouts/slider_view.tpl'}

    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>
{include file='layouts/_footer.tpl'}
