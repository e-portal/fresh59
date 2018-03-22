{foreach from=$items item=item}
    <li>
    	<div class="promoscrollinfo">
        	<p class="name">{$item.cat_onename} {$item.brand}</p>
        	<p class="short_info" style="display:none;">{$item.short_info|truncate:250}</p>
        	<p class="model">{$item.name}</p>
            <p class="price">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</p>
            <input type="hidden" value="{$item.id}" id="item_id" />
        </div>
    	<div class="promoscrollimg"><img src="/images/catalog/{$item.imgid}_s.{$item.imgext}" alt="{$item.brand} {$item.name}" /></div>
    </li>
{/foreach}