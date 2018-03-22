<div style="width:99%; margin:auto; padding:1px; clear:both;">
    <div style="float:left;">
    {if $grid.paginator->previous}
        <a href="{$grid.paginator->previous}{if $smarty.server.QUERY_STRING}?{$smarty.server.QUERY_STRING}{/if}">
            &lt;&lt;&nbsp;
        </a>
    {else}
        &lt;&lt;&nbsp;
    {/if}
    {if $grid.paginator->pageCount && $grid.paginator->firstPageInRange != $grid.paginator->first}
        <a href="{$grid.paginator->first}{if $smarty.server.QUERY_STRING}?{$smarty.server.QUERY_STRING}{/if}">
            1
        </a>&nbsp;...&nbsp;
    {/if}
    {if $grid.paginator->pagesInRange}
        {foreach from=$grid.paginator->pagesInRange item=p key=k}
            {if $grid.paginator->current!=$k}
                <a href="{$p}{if $smarty.server.QUERY_STRING}?{$smarty.server.QUERY_STRING}{/if}">
                    {$k}
                </a>
            {else}
                {$grid.paginator->current}
            {/if}
        {/foreach}
    {/if}
    {if $grid.paginator->pageCount && $grid.paginator->lastPageInRange != $grid.paginator->last}
        &nbsp;...&nbsp;<a href="{$grid.paginator->last}{if $smarty.server.QUERY_STRING}?{$smarty.server.QUERY_STRING}{/if}">
            {$grid.paginator->pageCount}
        </a>
    {/if}
    {if $grid.paginator->next}
        <a href="{$grid.paginator->next}{if $smarty.server.QUERY_STRING}?{$smarty.server.QUERY_STRING}{/if}">
            &nbsp;&gt;&gt;
        </a>
    {else}
        &nbsp;&gt;&gt;
    {/if}
    </div>
    <div style="float:right;">
        Всего по Вашему запросу найдено {$grid.paginator->totalItemCount} записей.
    </div>
</div>
<br>
