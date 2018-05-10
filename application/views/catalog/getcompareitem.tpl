<div>
    {if $items}
        {assign var="items_count" value=0}
        <div>
            {foreach from=$items item=grp key=grpname name=grpname}
                {foreach from=$grp.items item=item}
                    <div class="compare-itm">
                        <i class="icon-remove data-delCompare compare-delete-icon" data-id='{$item.id}'
                           data-category='{$item.category|mblower}'></i>
                        <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">{$item.brand} {$item.name}</a>
                    </div>
                    {assign var="items_count" value=$items_count+1}
                {/foreach}
                <div class="comp-link"><a href="/catalog/compare/items/{$grp.ids}"><span
                                class='strong'>Сравнить {$grpname}</span></a></div>
            {/foreach}
        </div>
        <div class="compare-result-popup" data-count="{$items_count}"></div>
    {else}
        <div class="compare-result-popup" data-count="0"></div>
        <div class="compare-itm">Пусто</div>
    {/if}
</div>