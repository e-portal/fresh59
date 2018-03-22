{foreach from=$pages item=page name=pages}
{$page->getLabel()}{if !$smarty.foreach.pages.last} > {/if}
{/foreach}