<!-- <div class="top_sales_subblock">
     {foreach from=$topsales_items item=item name=topsales_items}
     <div class="top_sales_item">
         <a href="{iurl assoc.subdomain=$item.subdomain assoc.parent=$item.parentname assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}">
             <img {if $item.imgid}src="/images/catalog/{$item.imgid}_s.{$item.imgext}" {else}src="{$url.img}/no-image.jpg"{/if} alt="{$item.name}-{$item.brand}"/>
         </a>
         <a href="{iurl assoc.subdomain=$item.subdomain assoc.parent=$item.parentname assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}">{$item.brand} {$item.name}</a>
         <span class="description">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>
         {if $item.id_availability == 1}
         <span class="in_stock_status">Есть в наличии</span>
         {/if}
         {if $item.id_availability == 2}
         <span class="out_stock_status">Наличие уточняйте</span>
         {/if}
         {if $item.id_availability == 3}
         <span class="un_order"><a href="/articles/4" target="_blank" title="Как получить товар под заказ">Под заказ</a></span>
         {/if}
         <span class="price_sidebar">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</span>
         {if $smarty.foreach.topsales_items.first}<i class="topsale-icon"></i>{/if}
     </div>
     {/foreach}
 </div>-->


{foreach from=$topsales_items item=top_item}
<div class="item-senn">
    <a class="sench"
       href="{iurl assoc.subdomain=$top_item.subdomain assoc.parent=$top_item.parentname assoc.cat_latin=$top_item.cat_latin_single assoc.brand=$top_item.brand assoc.item=$top_item.name}">
        {if $top_item.id_availability == 1}
        <h5 class="green">В наличии</h5>
        {/if}
        <h4>{$top_item.brand} {$top_item.name}</h4>
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
                <img src="./img/izee3.png" alt="">
                <p>от <span>{$top_item.price*0.0099*$curs_evro_smarty+$top_item.price/24*$curs_evro_smarty|round}</span>
                    грн/мес
                </p>
            </div>
            {/if}
            <div class="itee">
                <img src="./img/izee2.png" alt="">
                <p>Гарантия <span>12</span> мес</p>
            </div>
            <div class="itee">
                <img src="./img/izee4.png" alt="">
                <p>Лучшая <span>цена</span></p>
            </div>

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