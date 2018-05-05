{foreach from=$topsales_items item=top_item name=tp_items}
    <div class="item-senn">
        <a class="sench"
           href="{iurl assoc.subdomain=$top_item.subdomain assoc.parent=$top_item.parentname assoc.cat_latin=$top_item.cat_latin_single assoc.brand=$top_item.brand assoc.item=$top_item.name}">
            {if $top_item.id_availability == 1 || $item.id_availability == 4}
                <h5 class="green">В наличии</h5>
            {/if}
            {if $top_item.id_availability == 2}
                <h5 class="gray">Наличие уточняйте</h5>
            {/if}
            {if $top_item.id_availability == 3}
                <h5 class="blue">Под заказ</h5>
            {/if}
            <h4>
                {if $top_item.cat_onename}{$top_item.cat_onename}{else}{$top_item.cat}{/if} {$top_item.brand}
                {$top_item.name}
            </h4>
            <div class="centr">
                <div class="itee-imgg">
                    {if 0 == $smarty.foreach.tp_items.index%8 || 1 == $smarty.foreach.tp_items.index}
                        <img {if $top_item.imgid} src="/images/catalog/{$top_item.imgid}.{$top_item.imgext}" {else}
                            src="{$url.img}/noimage.jpg" {/if} alt="{$top_item.name}-{$top_item.brand}">
                    {else}
                        <img {if $top_item.imgid} src="/images/catalog/{$top_item.imgid}_s.{$top_item.imgext}" {else}
                            src="{$url.img}/noimage.jpg" {/if} alt="{$top_item.name}-{$top_item.brand}">
                    {/if}
                </div>
                {if $top_item.bonus_amount>0}
                    <div class="itee">
                        <img src="/assets/img/izee0.png" alt="">
                        <p>Вернем: <span>{$top_item.bonus_amount|round} грн</span></p>
                    </div>
                {/if}
                {if $top_item.id_availability == 1}
                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <p>
                            от
                            <span>
                                {if $top_item.rent >= 25}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$top_item.price y=8}
                                {elseif $top_item.rent > 12.5}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$top_item.price y=6}
                                {elseif $top_item.rent > 7.5}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$top_item.price y=3}
                                {else}
                                    {math equation="x/y*$curs_evro_smarty|round" x=$top_item.price y=3}
                                {/if}
                            </span>
                            грн/мес
                        </p>
                    </div>
                    <div class="itee">
                        <img src="/assets/img/izee3.png" alt="">
                        <p>от
                            <span>{$top_item.price*0.0099*$curs_evro_smarty+$top_item.price/24*$curs_evro_smarty|round}</span>
                            грн/мес
                        </p>
                    </div>
                {/if}
                {if $top_item.id_brand == '26' && $top_item.id_category != 60}
                    <div class="itee">
                        <img src="/assets/img/izee2.png" alt="">
                        <p>Гарантия <span>12</span> мес</p>
                    </div>
                {/if}
                {if $top_item.bestprice > $top_item.price || $top_item.id2==41385}
                    <div class="itee">
                        <img src="/assets/img/izee4.png" alt="">
                        <p>Лучшая <span>цена</span></p>
                    </div>
                {/if}
                {if $top_item.bestprice > $top_item.price || $top_item.id2==41385}
                    <div class="itee change">
                        <img src="/assets/img/izee5.png" alt="">
                        <p>Замена</p>
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
                <p>{price $top_item.price $top_item.id_currency} {$smarty.session.Currency.title} грн</p>
                {if $top_item.bonus_amount>0}
                    <p>Вернем: <span>{$top_item.bonus_amount|round} грн</span></p>
                {/if}
            </div>
            <div class="right-bakk">
                <object type="lol/wut">
                    <a class="open-in-popup add-to-cart bask acty" {include file='layouts/cart-item.tpl' cart_item=$top_item}>
                        <span>В корзину</span></a>
                </object>
            </div>
        </div>
        <div class="hovv">


            <div class="news">
                <div class="left-butt">
                    <a href="">В избранное</a>
                </div>
                <div class="right-butt">
                    <a href="">Сравнение</a>
                </div>
            </div>
        </div>
    </div>
{/foreach}