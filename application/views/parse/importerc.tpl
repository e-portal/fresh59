{include file=_header.tpl}
{$form}
{if $items} Загружено товаров: <br />
{foreach from=$items item=item}
<a href = "http://590.ua/catalog_item_{$item.id}.html">{$item.name}</a> <br />
{/foreach}
<a href="http://test.alcotec.com.ua/admin/parse/importerc">Вернутся</a>
{/if}
{include file=_footer.tpl}