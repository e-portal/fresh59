<div>
{if $items}
    {assign var="items_count" value=0}
    <div class="compare-result-popup" data-count="{$items_count}">
        {foreach from=$items item=grp key=grpname name=grpname}
            {foreach from=$grp.items item=item}
                <li class="compare-itm">
                    <i class="icon-remove data-delCompare" data-id='{$item.id}'
                       data-category='{$item.category|mblower}'></i>
                    <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">{$item.brand} {$item.name}</a>
                </li>
                {assign var="items_count" value=$items_count+1}
            {/foreach}
            <li><a href="/catalog/compare/items/{$grp.ids}"><span class='strong'>Сравнить {$grpname}</span></a></li>
            {if !$smarty.foreach.grpname.last}
                <li class="divider"></li>
            {/if}
        {/foreach}
    </div>
{else}
    <div class="compare-result-popup" data-count="0">
        <li class="compare-empty">Пусто</li>
    </div>
{/if}
</div>
{*

{literal}
	<script type="text/javascript">
		$(document).ready(function(){
			$('.data-delCompare').on('click',function(){
				var itemId = $(this).data('id');
				var catId =  $(this).data('category');
				$.get("/catalog/delcompareitem", {id:itemId, cat:catId},
					function(data){
						getCompareItems();
						$('#comp_' + itemId).removeClass('checked');
					});
			});
		})
	</script>
{/literal}*}
