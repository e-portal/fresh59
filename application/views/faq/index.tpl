{include file='layouts/_header.tpl'}
{debug}
{if $id}
{include file='faq/one.tpl'}
{else}
{include file='faq/all.tpl'}
{/if}

{include file='layouts/_footer.tpl'}