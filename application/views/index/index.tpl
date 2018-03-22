{include file=_header.tpl}

{if $seo_text_bottom}
<article class="stext-bottom">
    {$seo_text_bottom}
</article>
{/if}

{literal}
<script type="text/javascript">
    $(document).ready(function () {
        $('.central_block .content').css({'padding-bottom': $('.stext-bottom').height(), 'position': 'relative'})
    });
</script>
{/literal}

{if $seo_text_top}
<article class="stext-top" id="stext">{$seo_text_top}</article>
<p class="stext-show"><span id="data-toggle-text">Читать дальше</span></p>
{/if}

{if $footer_news|count > 0}
<!--slider-->
<div class="billboard">
    {foreach from=$footer_news item=news key=key name=news}
    <a class="img-large" {if strlen($news.ext_url)> 0 && strpos($news.ext_url,'ucenka')>0}rel='nofollow'{/if} href="{if
        strlen($news.ext_url) > 0}{$news.ext_url}{else}/news/{$news.url}{/if}">
        <img src="/uploads/{$news.big_img}" alt="{$news.name|htmlspecialchars}" title="{$news.name|htmlspecialchars}">
    </a>
    {/foreach}
    <span class="billboard-control__left"></span><span class="billboard-control__right"></span>
    <ul class="img-small">
        {foreach from=$footer_news item=news key=key name=news}
        <li><img src="/uploads/{$news.big_img}" alt="{$news.name|htmlspecialchars}"></li>
        {/foreach}
    </ul>
</div>
{/if}

<!-- Begin actions -->
<div class="product_box">
    <div class="product_box_title">
        <span>Акционные товары</span>
    </div>
    <img class="left_arrow" onclick='prev_product($(this), 4);' src="/assets/media/left-arrow.png" width="23"
         height="23" alt="left arrow">
    <img class="right_arrow" onclick='next_product($(this), 4);' src="/assets/media/right_arrow.png" width="23"
         height="23" alt="right arrow">
    <div class='products_container_wrapper'>
        <div class="products_container">
            {foreach from=$actionItems item=item name=topsales_items}
            <div class="product_icon">
                <a href='{iurl assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}'
                   class="product_icon_title">{$item.brand} {$item.name}</a>
                <span class="product_icon_cat">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>
                <a href='{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}'>
                    <div class='products_container_image_wrap'>
                        <img src='/images/catalog/{$item.imgid}_s.{$item.imgext}'
                             alt='{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'
                             купить'}' title='{if
                        $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand}
                        {$item.name}'>
                    </div>
                </a>
                {if $item.acttype=='gift'}
                <a href="#gift-modal-{$item.id}" data-toggle="modal" class='one_item_gift data-getActInfo'
                   id="i_{$item.id}">
                    <span class='one_item_gift_img'><img src='/images/catalog/{gift assoc.id=$item.actid}' alt="gift"/></span>
                    <span class='one_item_gift_title'>Подарок</span>
                </a>
                {/if}
                <div class='price_info'>
                    {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price >
                    0.01) }
                    <div style="margin-bottom: -5px;" class="price strike">
                        <span style="font-size: 19px;">{price $item.bdprice $item.id_currency}</span>
                    </div>
                    <br>
                    <div class="action_price">
                        <span>{price $item.price $item.id_currency}</span> <span>{$smarty.session.Currency.title}</span>
                    </div>
                    {else}
                    <div class="price">
                        <span style="color: #0d8abc;">{price $item.price $item.id_currency}</span> <sup
                                style="color: #0d8abc;">{$smarty.session.Currency.title}</sup>
                    </div>
                    {/if}
                    {literal}
                    <style type="text/css">
                        .prodbox_buy_button:hover {
                            background-image: linear-gradient(to bottom, #5bde71, #54d56f) !important;
                            text-decoration: none;
                        }
                    </style>
                    {/literal}
                    <a style="float: right;
    margin-top: -3px;
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;
    margin-right: 15px;" data-toggle="modal" href="#data-basket" onclick="addToCart({$item.id})"
                       class='one_item_blue_button prodbox_buy_button data-AddToCart data-itemId-{$item.id}'> Купить</a>
                </div>
                {if $item.bestprice > $item.price || $item.id2==41385}
                <i title="Лучшая цена" class="sale-icon sale-icon-price"></i>
                {/if}
                {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price) > 1) &&
                !($item.sale==1 && $item.d90==-1)}
                <i title="Акционная цена" class="sale-icon sale-icon-discount"></i>
                {/if}
                {if $item.sale==1 && $item.d90==-1}
                <i title="Распродажа" class="sale-icon sale-icon-sale"></i>
                {/if}
            </div>
            {/foreach}
        </div>
    </div>
</div>
<!-- End actions -->

<!-- Begin actions -->
<div class="product_box">
    <div class="product_box_title">
        <span>Топ продаж!!!</span>
    </div>
    <img class="left_arrow" onclick='prev_product($(this), 4);' src="/assets/media/left-arrow.png" alt="left arrow">
    <img class="right_arrow" onclick='next_product($(this), 4);' src="/assets/media/right_arrow.png" alt="right arrow">
    <div class='products_container_wrapper'>
        <div class="products_container">
            {foreach from=$topsales_items item=item name=topsales_items}
            <div class="product_icon">
                <a href='{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}'
                   class="product_icon_title">{$item.brand} {$item.name}</a>
                <span class="product_icon_cat">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>
                <a href='{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}'>
                    <div class='products_container_image_wrap'>
                        <img src='/images/catalog/{$item.imgid}_s.{$item.imgext}'
                             alt='{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'
                             купить'}' title='{if
                        $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand}
                        {$item.name}'>
                    </div>
                </a>
                {if $item.acttype=='gift'}
                <a href="#gift-modal-{$item.id}" data-toggle="modal" class='one_item_gift data-getActInfo'
                   id="i_{$item.id}">
                    <span class='one_item_gift_img'><img src='/images/catalog/{gift assoc.id=$item.actid}' alt="gift"/></span>
                    <span class='one_item_gift_title'>Подарок</span>
                </a>
                {/if}
                <div class='price_info'>
                    {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price >
                    0.01) }
                    <div style="margin-bottom: -5px;" class="price strike">
                        <span style="font-size: 19px;">{price $item.bdprice $item.id_currency}</span>
                    </div>
                    <div class="action_price">
                        <span>{price $item.price $item.id_currency}</span> <span>{$smarty.session.Currency.title}</span>
                    </div>
                    {else}
                    <div class="price">
                        <span style="color: #0d8abc;">{price $item.price $item.id_currency}</span> <sup
                                style="color: #0d8abc;">{$smarty.session.Currency.title}</sup>
                    </div>
                    {/if}
                    {literal}
                    <style type="text/css">
                        .prodbox_buy_button:hover {
                            background-image: linear-gradient(to bottom, #5bde71, #54d56f) !important;
                            text-decoration: none;
                        }
                    </style>
                    {/literal}
                    <a style="float: right;
    margin-top: -3px;
    background-image: linear-gradient(to bottom, #5bde71, #2ba247);
    background-color: #5bde71;
    margin-right: 15px;" data-toggle="modal" href="#data-basket" onclick="addToCart({$item.id})"
                       class='one_item_blue_button prodbox_buy_button data-AddToCart data-itemId-{$item.id}'> Купить</a>
                </div>
                {if $item.bestprice > $item.price || $item.id2==41385}
                <i title="Лучшая цена" class="sale-icon sale-icon-price"></i>
                {/if}
                {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price) > 1) &&
                !($item.sale==1 && $item.d90==-1)}
                <i title="Акционная цена" class="sale-icon sale-icon-discount"></i>
                {/if}
                {if $item.sale==1 && $item.d90==-1}
                <i title="Распродажа" class="sale-icon sale-icon-sale"></i>
                {/if}
            </div>
            {/foreach}
        </div>
    </div>
</div>
<!-- End actions -->

{include file=_footer.tpl}
