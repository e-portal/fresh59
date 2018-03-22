{if $action}
    {foreach from=$action.items item=item}
        <a href="/actions/show/{$action.id}" class="dataActionLnk">
        	<img src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}" alt="Фото - {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}" class="actioninfo-img" />
        </a>
    {/foreach}
    <a style="display: none" href="/actions/show/{$action.id}" class="dataActionLnk"/>
    {$action.short_info}
{/if}