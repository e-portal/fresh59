<div class="small-product">
    <a class="blue" href="javascript:void(0)">Все новые поступления<span class="linn"></span></a>
    <div class="liner"><span>Вы смотрели</span></div>

    {if $zf.params.controller=='catalog' && true==$small}
        {assign var=slider_class value='watched-small'}
    {else}
        {assign var=slider_class value='watched-slider'}
    {/if}
    <div class="{$slider_class}">

        {if $smarty.session.items|@count > 0}
            {*<ul>
                {foreach from=$smarty.session.items item=vieweditems name=content_vieweditems}
                    *}{*{if $smarty.foreach.content_vieweditems.index < 1}*}{*
                        <li>
                            *}{*<a href="/catalog/item/{$vieweditems.id}" alt="{$vieweditems.brand} {$vieweditems.name}">
                                {$vieweditems.brand} {$vieweditems.name}
                            </a>*}{*
                            *}{*<pre>{$vieweditems|var_dump}</pre>*}{*
                            <pre>{$vieweditems|@debug_print_var}</pre>
                        </li>
                    *}{*{/if}*}{*
                {/foreach}
            </ul>*}

            {foreach from=$smarty.session.items item=vieweditems name=content_vieweditems}
                <div class="item-senn">
                    <a class="sench" href="/catalog/item/{$vieweditems.id}" tabindex="0"
                       alt="{$vieweditems.brand} {$vieweditems.name}">

                        {*----------in stock--------*}
                        {if $vieweditems.id_availability == 1}
                            <div class="green">В наличии</div>
                        {elseif $vieweditems.id_availability == 3}
                            <div class="bluee">Под заказ</div>
                        {else}
                            <div class="gray">Наличие уточняйте</div>
                        {/if}
                        {*----------in stock--------*}

                        <h4>
                            {if $vieweditems.cat_onename}
                                {$vieweditems.cat_onename}
                            {else}
                                {$vieweditems.cat}
                            {/if}
                            {$vieweditems.brand} {$vieweditems.name}
                        </h4>

                        <div class="centr">
                            <div class="itee-imgg">
                                <img {if $vieweditems.img} src="/images/catalog/{$vieweditems.img}" {else}
                                    src="{$url.img}/noimage.jpg" {/if}
                                        alt="{$vieweditems.name}-{$vieweditems.brand}">
                            </div>


                            {if $vieweditems.bonus_amount>0}
                                <div class="itee">
                                    <img src="/assets/img/izee0.png" alt="">
                                    <p>Вернем: <span>{$vieweditems.bonus_amount|round} грн</span></p>
                                </div>
                            {/if}

                            {if $vieweditems.id_availability == 1}
                                <div class="itee">
                                    <img src="/assets/img/izee1.png" alt="">
                                    <p>
                                        от
                                        <span>
                                            {if $vieweditems.rent >= 25}
                                                {math equation="x/y*$curs_evro_smarty|round" x=$vieweditems.price y=8}
                                            {elseif $vieweditems.rent > 12.5}
                                                {math equation="x/y*$curs_evro_smarty|round" x=$vieweditems.price y=6}
                                            {elseif $vieweditems.rent > 7.5}
                                                {math equation="x/y*$curs_evro_smarty|round" x=$vieweditems.price y=3}
                                            {else}
                                                {math equation="x/y*$curs_evro_smarty|round" x=$vieweditems.price y=3}
                                            {/if}
                                        </span>
                                        грн/мес
                                    </p>
                                </div>
                                <div class="itee">
                                    <img src="/assets/img/izee3.png" alt="">
                                    <p>от
                                        <span>{$vieweditems.price*0.0099*$curs_evro_smarty+$vieweditems.price/24*$curs_evro_smarty|round}</span>
                                        грн/мес
                                    </p>
                                </div>
                            {/if}


                            {if $vieweditems.bestprice > $vieweditems.price}
                                <div class="itee">
                                    <img src="/assets/img/izee4.png" alt="">
                                    <p>Лучшая <span>цена</span></p>
                                </div>
                            {/if}

                            {if $vieweditems.acttype=='gift'}
                                <div class="itee present">
                                    <div class="numeral">
                                        <img src="/assets/img/present-img.png" alt="present">
                                    </div>
                                    <p>Подарок!</p>
                                    <img src='/images/catalog/{gift assoc.id=$vieweditems.actid}'/>
                                </div>
                            {/if}
                            {if $vieweditems.bestprice > $vieweditems.price || $vieweditems.acttype !== 'gift'}
                                <div class="itee change">
                                    <img src="/assets/img/izee5.png" alt="">
                                    <p>Замена</p>
                                </div>
                            {/if}
                            
                        </div>
                    </a>
                    <object type="lol/wut">
                        <a href="/" class="otzv" tabindex="0">
                            <div class="left-otzv">
                                <img src="/assets/img/patr.png" alt="">
                            </div>
                            <div class="right-otzv">
                                <span>10 отзывов</span>
                            </div>
                        </a>
                    </object>

                    <div class="bakk">
                            <div class="left-bakk">
                                <p>{price $vieweditems.price $vieweditems.id_currency} {$smarty.session.Currency.title}</p>
                                <p>Вернем: <span>{$vieweditems.bonus_amount|round} грн</span></p>
                            </div>
                        <div class="right-bakk">
                            {if '4' === $vieweditems.id_availability || '1' === $vieweditems.id_availability}
                                <object type="lol/wut">
                                    <a class="open-in-popup add-to-cart bask acty"
                                            {include file='layouts/cart-item.tpl' cart_item=$vieweditems}
                                       tabindex="-1">
                                        <span>В корзину</span>
                                    </a>
                                </object>
                            {else}
                                <object type="lol/wut">
                                    <a class="bask acty open-in-popup add-to-cart blue-bask"
                                            {include file='layouts/cart-item.tpl' cart_item=$vieweditems}
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
                                <a href="" tabindex="0">В избранное</a>
                            </div>
                            <div class="right-butt" data-id="{$vieweditems.id}">
                                <a href="" tabindex="0">Сравнение</a>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        {/if}
    </div>
</div>