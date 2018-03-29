{foreach from=$topsales_items item=top_item name=tp_items}
<div class="item-senn">
    <a class="sench"
       href="{iurl assoc.subdomain=$top_item.subdomain assoc.parent=$top_item.parentname assoc.cat_latin=$top_item.cat_latin_single assoc.brand=$top_item.brand assoc.item=$top_item.name}">
        {if $top_item.id_availability == 1}
        <h5 class="green">В наличии</h5>
        {/if}
        {if $top_item.id_availability == 2}
        <h5 class="gray">Наличие уточняйте</h5>
        {/if}
        {if $top_item.id_availability == 3}
        <h5 class="blue">Под заказ</h5>
        {/if}
        <h4>{if $top_item.cat_onename}{$top_item.cat_onename}{else}{$top_item.cat}{/if}{$top_item.brand}
            {$top_item.name}</h4>
        <div class="centr">
            <div class="itee-imgg">
                <img {if $top_item.imgid} src="/images/catalog/{$top_item.imgid}_s.{$top_item.imgext}" {else}
                     src="{$url.img}/no-image.jpg" {/if} alt="{$top_item.name}-{$top_item.brand}">
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
                <p>от <span>{$top_item.price/$rent_index*$curs_evro_smarty|round}</span> грн/мес</p>
            </div>

            <div class="itee">
                <img src="/assets/img/izee3.png" alt="">
                <p>от <span>{$top_item.price*0.0099*$curs_evro_smarty+$top_item.price/24*$curs_evro_smarty|round}</span>
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
            <img src="/assets/img/izee4.png" alt="">
            <p>Замена</p>
            {/if}
        </div>
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
                <p>2 500 грн</p>
                <p>Вернем: <span>500 грн</span></p>
            </div>
            <div class="right-bakk">
                <object type="lol/wut">
                    <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                </object>

            </div>
        </div>
    </a>
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