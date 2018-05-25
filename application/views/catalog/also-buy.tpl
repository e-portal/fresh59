<div class="small-product slider-till-here wrap">
    <div class="container">
        <div class="liner" id="prod-accessories">
            <span>С этим товаром покупают</span>
            {*<a class="arrow-right bluee">Смотреть все</a>*}
        </div>

        {if $assocItemsVmeste|@count > 0}
            <div class="parag parag-prev">
                <div class="parag-item active all-cats">Все категории</div>
                {foreach from=$assocItemsVmeste item=assocItemsCats name=similarItems}
                    {*<pre>{$assocItemsCats|@debug_print_var}</pre>*}
                    <div class="parag-item catid-{$assocItemsCats.id}">
                        {*<a href="{brandurl assoc.subdomain=$assocItemsCats.items[0].subdomain
                        assoc.cat_latin=$assocItemsCats.items[0].cat_latin_single}">
                            {$assocItemsCats.name}
                        </a>*}
                        {$assocItemsCats.name}
                    </div>
                {/foreach}
            </div>
        {/if}

        <div class="watched-slider">

            {foreach from=$assocItemsVmeste item=assocItemsCats name=similarItems}
                {foreach from=$assocItemsCats.items item=assocItem}
                    <div class="item-senn" data-catid="{$assocItem.id_category}">
                        <a class="sench"
                           href="{iurl assoc.parent=$assocItem.parentname
                           assoc.subdomain=$assocItem.subdomain
                           assoc.cat_latin=$assocItem.cat_latin_single
                           assoc.brand=$assocItem.brand
                           assoc.item=$assocItem.name}">

                            {if $assocItem.id_availability == 1 || $item.id_availability == 4}
                                <h5 class="green">В наличии</h5>
                            {/if}
                            {if $assocItem.id_availability == 2}
                                <h5 class="gray">Наличие уточняйте</h5>
                            {/if}
                            {if $assocItem.id_availability == 3}
                                <h5 class="bluee">Под заказ</h5>
                            {/if}
                            <h4>
                                {if $assocItem.cat_onename}{$assocItem.cat_onename}{else}{$assocItem.cat}{/if} {$assocItem.brand}
                                {$assocItem.name}
                            </h4>


                            <div class="centr">
                                <div class="itee-imgg">
                                    <img {if $assocItem.imgid} src="/images/catalog/{$assocItem.imgid}_s.{$assocItem.imgext}" {else}
                                        src="{$url.img}/noimage.jpg" {/if}
                                            alt="{$assocItem.name}-{$assocItem.brand}">
                                </div>


                                {if $assocItem.bonus_amount>0}
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>{$assocItem.bonus_amount|round} грн</span></p>
                                    </div>
                                {/if}
                                {if $assocItem.id_availability == 1}
                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>
                                            от
                                            <span>
                                                {if $assocItem.rent >= 25}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=8}
                                                {elseif $assocItem.rent > 12.5}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=6}
                                                {elseif $assocItem.rent > 7.5}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=3}
                                                {else}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$assocItem.price y=3}
                                                {/if}
                                            </span>
                                            грн/мес
                                        </p>
                                    </div>
                                    <div class="itee">
                                        <img src="/assets/img/izee3.png" alt="">
                                        <p>от
                                            <span>{$assocItem.price*0.0099*$curs_evro_smarty+$assocItem.price/24*$curs_evro_smarty|round}</span>
                                            грн/мес
                                        </p>
                                    </div>
                                {/if}
                                {if $assocItem.id_brand == '26' && $assocItem.id_category != 60}
                                    <div class="itee">
                                        <img src="/assets/img/izee2.png" alt="">
                                        <p>Гарантия <span>12</span> мес</p>
                                    </div>
                                {/if}
                                {if $assocItem.bestprice > $assocItem.price || $assocItem.id2==41385}
                                    <div class="itee">
                                        <img src="/assets/img/izee4.png" alt="">
                                        <p>Лучшая <span>цена</span></p>
                                    </div>
                                {/if}
                                {if $assocItem.bestprice > $assocItem.price || $assocItem.id2==41385}
                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>
                                {/if}
                                {if $assocItem.acttype=='gift'}
                                    <div class="itee present">
                                        <div class="numeral">
                                            <img src="/assets/img/present-img.png" alt="present">
                                        </div>
                                        <p>Подарок!</p>
                                        <img src='/images/catalog/{gift assoc.id=$assocItem.actid}'/>
                                    </div>
                                {/if}

                            </div>
                        </a>

                        <object type="lol/wut">
                            <a href="/" class="otzv">
                                <div class="left-otzv">
                                    <img src="/assets/img/patr.png" alt="">
                                </div>
                                <div class="right-otzv">
                                    <span>10 отзывов</span>
                                </div>
                            </a></object>
                        <div class="bakk">
                            <div class="left-bakk">
                                <p>{price $assocItem.price $item.id_currency} {$smarty.session.Currency.title}</p>
                                <p>Вернем: <span>{$assocItem.bonus_amount|round} грн</span></p>
                            </div>
                            <div class="right-bakk">
                                {if $assocItem.id_availability == 1 || $item.id_availability == 4}
                                    <object type="lol/wut">
                                        <a class="open-in-popup add-to-cart bask acty"
                                                {include file='layouts/cart-item.tpl' cart_item=$assocItem}
                                           tabindex="-1">
                                            <span>В корзину</span>
                                        </a>
                                    </object>
                                {else}
                                    <object type="lol/wut">
                                        <a class="bask acty open-in-popup add-to-cart blue-bask"
                                                {include file='layouts/cart-item.tpl' cart_item=$assocItem}
                                           tabindex="-1">
                                            <span>Под заказ</span>
                                        </a>
                                    </object>
                                {/if}
                            </div>
                        </div>
                        <div class="hovv">
                            <div class="news">
                                <div class="left-butt">
                                    <span>В избранное</span>
                                </div>
                                <div class="right-butt" data-id="{$assocItem.id}">
                                    <span>Сравнение</span>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            {/foreach}

        </div>


    </div>
</div>