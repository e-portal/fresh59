{include file=_header.tpl}

{foreach from=$links item=url key=anchor}
	<p>
	    <a href="{$url}">{$anchor}</a>
	</p>
{/foreach}

{include file=_footer.tpl}