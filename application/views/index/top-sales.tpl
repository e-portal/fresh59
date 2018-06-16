{*{$all_articles|@debug_print_var}*}
<div class="senn senn-scrol">
    <div class="senn-container wrap">
        <a class="blue" href="/">Все новые поступления<span class="linn"></span></a>


        <div class="liner"><span>Топ продаж</span></div>
        <div class="parag parag-prev ">
            <div class="parag-item active" onclick="topNewProductIndex(7,'new'); return false;">Популярные модели</div>
            <div class="parag-item" onclick="topNewProductIndex(17,'top'); return false;">Отдельностоящая</div>
            <div class="parag-item">Встраиваемая</div>
            <div class="parag-item">Мелкая бытовая</div>
            <div class="parag-item">Красота и здоровье</div>
            <div class="parag-item">Для уборки</div>
            <div class="parag-item">Посуда</div>
            <div class="parag-item">Мойки и смесители</div>
            <div class="parag-item">Климатическая</div>
        </div>

        <div class="senn-main maii">
            {*----------------MAIN----------------*}
            <div class="senn-slik slick">
                <div class="maii-item top__">
                    {foreach from=$topsales_items item=item name=topsales_items}
                    {*{$item|@debug_print_var}*}
                    {*<div class="item-senn">*}
                    {*<a class="sench"*}
                    {*href="{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">*}

                    {*{if 1 == $item.id_availability}*}
                    {*<h5 class="green">В наличии</h5>*}
                    {*{/if}*}
                    {*{if 2 == $item.id_availability}*}
                    {*<h5 class="gray">Наличие уточняйте</h5>*}
                    {*{/if}*}
                    {*{if 3 == $item.id_availability}*}
                    {*<h5 class="blue">Под заказ</h5>*}
                    {*{/if}*}

                    {*<h4>*}
                    {*{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}*}
                    {*{$item.brand} {$item.name}*}
                    {*</h4>*}


                    {*<div class="centr">*}
                    {*<div class="itee-imgg">*}
                    {*{if 0 == $smarty.foreach.topsales_items.index%8 || 1 == $smarty.foreach.topsales_items.index}*}
                    {*<img src="/images/catalog/{$item.imgid}.{$item.imgext}"*}
                    {*alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}"*}
                    {*title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}">*}
                    {*{else}*}
                    {*<img src="/images/catalog/{$item.imgid}_s.{$item.imgext}"*}
                    {*alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}"*}
                    {*title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}">*}
                    {*{/if}*}
                    {*</div>*}
                    {*{if $item.bonus_amount>0}*}
                    {*<div class="itee">*}
                    {*<img src="/assets/img/izee0.png" alt="">*}
                    {*<p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>*}
                    {*</div>*}
                    {*{/if}*}
                    {*{if $item.id_availability == 1}*}
                    {*<div class="itee">*}
                    {*<img src="/assets/img/izee1.png" alt="">*}
                    {*<p>*}
                    {*от*}
                    {*<span>*}
                    {*{if $item.rent >= 25}*}
                    {*{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8}*}
                    {*{elseif $item.rent > 12.5}*}
                    {*{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6}*}
                    {*{elseif $item.rent > 7.5}*}
                    {*{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}*}
                    {*{else}*}
                    {*{math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}*}
                    {*{/if}*}
                    {*</span>*}
                    {*грн/мес*}
                    {*</p>*}
                    {*</div>*}
                    {*{/if}*}
                    {*<div class="itee">*}
                    {*<img src="/assets/img/izee3.png" alt="">*}
                    {*<p>от*}
                    {*<span>{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span>*}
                    {*грн/мес</p>*}
                    {*</div>*}
                    {*{if $item.id_brand == '26' && $item.id_category != 60}*}
                    {*<div class="itee">*}
                    {*<img src="/assets/img/izee2.png" alt="">*}
                    {*<p>Гарантия <span>12</span> мес</p>*}
                    {*</div>*}
                    {*{/if}*}
                    {*{if $item.bestprice > $item.price || $item.id2==41385}*}
                    {*<div class="itee">*}
                    {*<img src="/assets/img/izee4.png" alt="">*}
                    {*<p>Лучшая <span>цена</span></p>*}
                    {*</div>*}
                    {*{/if}*}
                    {*{if $item.acttype=='gift'}*}
                    {*<div class="itee present">*}
                    {*<div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>*}
                    {*<p>Подарок!</p>*}
                    {*<img src='/images/catalog/{gift assoc.id=$item.actid}' alt="gift"/>*}
                    {*</div>*}
                    {*{/if}*}
                    {*{if $item.bestprice > $item.price || $item.id2==41385}*}
                    {*<div class="itee change">*}
                    {*<img src="/assets/img/izee5.png" alt="">*}
                    {*<p>Замена</p>*}
                    {*</div>*}
                    {*{/if}*}


                    {*</div>*}
                    {*</a>*}
                    {*<object type="lol/wut">*}
                    {*<span class="otzv">*}
                    {*<div class="left-otzv">*}
                    {*<img src="assets/img/patr.png" alt="">*}
                    {*</div>*}
                    {*<div class="right-otzv">*}
                    {*<span>10 отзывов</span>*}
                    {*</div>*}
                    {*</span>*}
                    {*</object>*}

                    {*<div class="bakk">*}
                    {*<div class="left-bakk">*}
                    {*<p>*}
                    {*{price $item.price $item.id_currency} {$smarty.session.Currency.title}*}
                    {*</p>*}
                    {*{if $item.bonus_amount>0}*}
                    {*<p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>*}
                    {*{/if}*}
                    {*</div>*}
                    {*<div class="right-bakk">*}
                    {*<object type="lol/wut">*}
                    {*<a class="open-in-popup add-to-cart bask acty" {include file='layouts/cart-item.tpl' cart_item=$item}>*}
                    {*<span>В корзину</span>*}
                    {*</a>*}
                    {*</object>*}
                    {*</div>*}
                    {*</div>*}

                    {*<div class="hovv">*}


                    {*<div class="news">*}
                    {*<div class="left-butt">*}
                    {*<span>В избранное</span>*}
                    {*</div>*}
                    {*<div class="right-butt" data-id="{$item.id}">*}
                    {*<span>Сравнение</span>*}
                    {*</div>*}
                    {*</div>*}
                    {*</div>*}
                    {*</div>*}

                    {if 0 === $smarty.foreach.topsales_items.iteration%7 && !$smarty.foreach.topsales_items.last && !$smarty.foreach.topsales_items.first}
                    <div class="d" style="clear: both"></div>
                </div>
                <div class="maii-item">

                    {/if}
                    {if $smarty.foreach.topsales_items.last}
                        <div class="d" style="clear: both"></div>
                    {/if}

                    {/foreach}
                </div>
            </div>
            {*----------------MAIN----------------*}

            {*----------------MOBILE----------------*}
            <div class="slick-ipad">
                <div class="slide-item">
                    {foreach from=$topsales_items item=item name=topsales_items}

                    <div class="item-senn">
                        <a class="sench"
                           href="{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">
                            {if 1 == $item.id_availability}
                                <h5 class="green">В наличии</h5>
                            {/if}
                            {if 2 == $item.id_availability}
                                <h5 class="gray">Наличие уточняйте</h5>
                            {/if}
                            {if 3 == $item.id_availability}
                                <h5 class="blue">Под заказ</h5>
                            {/if}

                            <h4>{$item.brand} {$item.name}</h4>
                            <div class="centr">
                                <div class="itee-imgg">
                                    <img src="/images/catalog/{$item.imgid}_s.{$item.imgext}"
                                         alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}"
                                         title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}">
                                </div>
                                <div class="itee">
                                    <img src="assets/img/izee0.png" alt="">
                                    <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                </div>
                                {if $item.id_availability == 1}
                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>{$item.price/$rent_index*$curs_evro_smarty|round}</span> грн/мес</p>
                                    </div>
                                {/if}
                                <div class="itee">
                                    <img src="/assets/img/izee3.png" alt="">
                                    <p>от
                                        <span>{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span>
                                        грн/мес</p>
                                </div>
                                {if $item.id_brand == '26' && $item.id_category != 60}
                                    <div class="itee">
                                        <img src="/assets/img/izee2.png" alt="">
                                        <p>Гарантия <span>12</span> мес</p>
                                    </div>
                                {/if}
                                {if $item.bestprice > $item.price || $item.id2==41385}
                                    <div class="itee">
                                        <img src="/assets/img/izee4.png" alt="">
                                        <p>Лучша <span>цена</span></p>
                                    </div>
                                {/if}
                                {if $item.acttype=='gift'}
                                    <div class="itee present">
                                        <div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>
                                        <p>Подарок!</p>
                                        <img src='/images/catalog/{gift assoc.id=$item.actid}' alt="gift"/>
                                    </div>
                                {/if}
                                {if $item.bestprice > $item.price || $item.id2==41385}
                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>
                                {/if}
                            </div>
                        </a>
                            <object type="lol/wut">
                                <span class="otzv">
                                    <div class="left-otzv">
                                        <img src="assets/img/patr.png" alt="">
                                    </div>
                                    <div class="right-otzv">
                                        <span>10 отзывов</span>
                                    </div>
                                </span>
                            </object>

                            <div class="bakk">
                                <div class="left-bakk">
                                    <p>
                                        {price $item.price $item.id_currency} {$smarty.session.Currency.title}
                                    </p>
                                    {if $item.bonus_amount>0}
                                        <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                    {/if}
                                </div>
                                <div class="right-bakk">
                                    <object type="lol/wut">
                                        <a class="open-in-popup add-to-cart bask acty" {include file='layouts/cart-item.tpl' cart_item=$item}>
                                            <span>В корзину</span>
                                        </a>
                                    </object>
                                </div>
                            </div>

                        <div class="hovv">
                            <div class="news">
                                <div class="left-butt">
                                    <span>В избранное</span>
                                </div>
                                <div class="right-butt" data-id="{$item.id}">
                                    <span>Сравнение</span>
                                </div>
                            </div>
                        </div>
                    </div>


                    {if 0 === $smarty.foreach.topsales_items.iteration%4 && !$smarty.foreach.topsales_items.last && !$smarty.foreach.topsales_items.first}
                </div>
                <div class="slide-item">
                    {/if}


                    {/foreach}
                </div>
            </div>
            {*----------------MOBILE----------------*}

        </div> <!--and senn-main-->


    </div>
</div>


{*<div class="item-senn">*}
{*<a class="sench" href="http://fresh.590.ua/vt/hob/electrolux-ehi-9654-hfk">*}
{*<h5 class="green">В наличии</h5>*}
{*<h4>Варочная поверхность Electrolux EHI 9654 HFK </h4>*}
{*<div class="centr">*}
{*<div class="itee-imgg">*}
{*<img src="/images/catalog/80990.png" alt="варочная поверхность Electrolux EHI 9654 HFK купить" title="варочная поверхность Electrolux EHI 9654 HFK">*}
{*</div>*}
{*<div class="itee">*}
{*<img src="/assets/img/izee0.png" alt="">*}
{*<p>Вернем: <span>120 грн</span></p>*}
{*</div>*}
{*<div class="itee">*}
{*<img src="/assets/img/izee1.png" alt="">*}
{*<p>от<span>1499</span>грн/мес</p>*}
{*</div>*}
{*<div class="itee">*}
{*<img src="/assets/img/izee3.png" alt="">*}
{*<p>от<span>619</span>грн/мес</p>*}
{*</div>*}
{*<div class="itee present">*}
{*<div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>*}
{*<p>Подарок!</p>*}
{*<img src='/images/catalog/93266_s.jpg' alt="gift"/>*}
{*</div>*}
{*</div>*}
{*</a>*}
{*<object type="lol/wut">*}
{*<span class="otzv">*}
{*<div class="left-otzv">*}
{*<img src="assets/img/patr.png" alt="">*}
{*</div>*}
{*<div class="right-otzv">*}
{*<span>10 отзывов</span>*}
{*</div>*}
{*</span>*}
{*</object>*}

{*<div class="bakk">*}
{*<div class="left-bakk">*}
{*<p>11999 грн.</p>*}
{*<p>Вернем: <span>120 грн</span></p>*}
{*</div>*}
{*<div class="right-bakk">*}
{*<object type="lol/wut">*}
{*<a class="open-in-popup add-to-cart bask acty"         data-id="23311"*}
{*data-name="Варочная поверхность Electrolux EHI 9654 HFK"*}
{*data-img="/images/catalog/80990_s.png"*}
{*data-price="11999" data-sale="10750" data-bonus="1500"*}
{*data-gift-id="" data-gift-name="Чайник ELECTROLUX Electro чайник" data-gift-img="/images/catalog/93266_s.jpg">*}
{*<span>В корзину</span>*}
{*</a>*}
{*</object>*}
{*</div>*}
{*</div>*}
{*<div class="hovv">*}
{*<div class="news">*}
{*<div class="left-butt">*}
{*<span>В избранное</span>*}
{*</div>*}
{*<div class="right-butt" data-id="23311">*}
{*<span>Сравнение</span>*}
{*</div>*}
{*</div>*}
{*</div>*}
{*</div>*}



