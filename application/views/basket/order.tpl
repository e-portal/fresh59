{if $login=='Shishko'}
    {include file=_header_new.tpl}
    {include file=basket/order_new.tpl}
{else}
    {include file=_header.tpl}
    {include file=basket/order_old.tpl}
{/if}

{if $login=='Shishko'}
    {include file=_footer_new.tpl}
{else}
    {include file=_footer.tpl}
{/if}