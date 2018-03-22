{include file=_header.tpl}

<script type="text/javascript" src="{$url.js}/jquery/jquery.shadow.js"></script>
<script type="text/javascript" src="{$url.js}/jquery/jquery.fancyzoom.js"></script>
{literal}
    <script type="text/javascript">
        $(document).ready(function() {$('a.tozoom').fancyzoom({Speed:1000})});
    </script>
{/literal}
{foreach from=$items item=item name=catitems}
    <div {if !$smarty.foreach.catitems.iteration is even}{if $items|@count < 2}class="sale_item no_bord"{else}class="sale_item"{/if}{else}class="sale_item even"{/if}>
    	<div class="name"><a href="/catalog/item/{$item.id}">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand}</a></div>
        <div class="image">
            {if $item.imgid}
                <a href="/catalog/item/{$item.id}" title="{$item.short_info}">
                    <img src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}" alt="{$item.brand} {$item.name}" />
                </a>
                <a href="{$url.img}/catalog/{$item.imgid}.{$item.imgext}" class="tozoom" title="Увеличить изображение"><img src="{$url.img}/zoom.png" alt="{$item.brand} {$item.name}" /></a>
            {else}
                 <img src="/images/noImg.jpg" alt="{$item.brand} - {$item.name}" />
            {/if}
        </div>
        <div class="text">
        	<div class="model">{$item.name}</div>
            <div class="short_info">{$item.short_info|truncate:280}</div>
        </div>
        <div class="clear">
            <div class="sale_price">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</div>
            <a href="/catalog/item/{$item.id}" class="sale_item_more" title="Подробнее"></a>
        </div>
    </div>
{/foreach}

{include file=_footer.tpl}