<ul class="list-of-items">
{foreach from=$container item=page}
{foreach from=$page->pages item=page}
{if count($page->pages) > 0}
	<li class="lof-item {if $page->isActive(true)}active{/if}"><span class="lof-item-lnk"><a href="/{$page->getLabel()|replace:' ':'-'}">{$page->getLabel()}</a></span>
	<ul class="lof-item-inner">
	{foreach from=$page->pages item=page}
    	<li class="lof-item-inner-item">
    	{if $page->isActive()}
        	{$page->getLabel()}
        {else}
			<a class="lof-item-inner-item-lnk" href='{$page->getHref()}'>{$page->getLabel()}</a>
        {/if}
        </li>
	{/foreach}
	</ul>
	</li>
	{/if}
{/foreach}
{/foreach}
</ul>
