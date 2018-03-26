{include file='layouts/_header.tpl'}

{if $singleNews}

{include file='news/one.tpl'}

{else}
<h2>NEWS</h2>
{include file='news/all.tpl'}

{/if}

{include file='layouts/_footer.tpl'}
