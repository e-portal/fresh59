data-id="{$item.id}"
data-name="{$item.name}" data-img="{$url.img}/catalog/{$item.images[0].id}_s.{$item.images[0].imgext}"
data-price="{price $item.price $item.id_currency}" data-sale="10750" data-bonus="1500"
{if $item.actid} data-gift-id="{$assocItem.id|default:''}" data-gift-name="Чайник ELECTROLUX Electro чайник" data-gift-img="/images/catalog/{gift assoc.id=$item.actid}{/if}"