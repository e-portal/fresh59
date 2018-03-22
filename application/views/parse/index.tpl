{include file=_header.tpl}
{foreach from=$actions  item=action}
<a href="http://590.ua/admin/parse/{$action}">{$action}</a>
{/foreach}
{include file=_footer.tpl}