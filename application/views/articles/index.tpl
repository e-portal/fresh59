{include file='layouts/_header.tpl'}

{if $id}

{include file='articles/one.tpl'}

{else}

{include file='articles/all.tpl'}

{/if}

{include file='layouts/_footer.tpl'}