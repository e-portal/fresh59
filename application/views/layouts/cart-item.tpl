{if is_array($cart_item.images) && !empty($cart_item.images[0])}
    {assign var="cart_image" value="catalog/`$cart_item.images[0].id`_s"}
    {assign var="cart_image_extension" value=$cart_item.images[0].imgext}
{elseif !empty($cart_item.imgid)}
    {assign var="cart_image" value="catalog/`$cart_item.imgid`_s"}
    {assign var="cart_image_extension" value=$cart_item.imgext}
{else}
    {assign var="cart_image" value="noimage"}
    {assign var="cart_image_extension" value="jpg"}
{/if}
data-id="{$cart_item.id}"
data-name="{if $cart_item.cat_onename}{$cart_item.cat_onename}{else}{$cart_item.cat}{/if} {$cart_item.brand} {$cart_item.name}"
data-img="{$url.img}/catalog/{$cart_image}.{$cart_image_extension}"
data-price="{price $cart_item.price $cart_item.id_currency}" data-sale="10750" data-bonus="1500"
{if $cart_item.actid} data-gift-id="{$assocItem.id|default:''}" data-gift-name="Чайник ELECTROLUX Electro чайник" data-gift-img="/images/{gift assoc.id=$cart_item.actid}{/if}"