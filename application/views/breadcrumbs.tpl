<nav class="breadcumbs">
	{foreach from=$pages item=page name=pages}
		{if !$smarty.foreach.pages.last}
			<span itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
				<a itemprop="url" href="{$page->getHref()|mblower}"><span itemprop="title">{$page->getLabel()}</span></a>
				<i>&rarr;</i>
			</span>
		{else}
			<span>{$page->getLabel()}</span>
		{/if}
	{/foreach}
</nav>

