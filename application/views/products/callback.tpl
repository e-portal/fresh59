{include file=_header.tpl}

<div style="height:30px; width:100%"></div>
<table class="callback" cellspacing="0" cellspacing="0">
	<tr>
		<td class="callback_bord_r" height="30"><span class='strong'>id</span></td>
		<td class="callba<span class='strong'>Товар</span>ар</strong></td>
		<td cl<span class='strong'>Имя</span>"><strong>Имя</strong><<span class='strong'>Телефон</span>_bord_r"><strong>Телефо<span class='strong'>Менеджер</span>="callback_bord_r"><str<span class='strong'>Перевести в выполненные</span>llback_bord_b"><strong>Перевести в выполненные</strong></td>
	</tr>
	{foreach from=$data item=item key=key name=td_dot1}
	<tr {if $item.id_availability == 1 or $item.id_availability == 2} class="row"{/if}>
		<td class="callback_bord_r">{$item.id}</td>
		<td class="callback_bord_r">{$item.item}</td>
		<td class="callback_bord_r">{$item.name}</td>
		<td class="callback_bord_r">{$item.phone}</td>
		<td class="callback_bord_r">{$item.manager}</td>
		<td class="callback_bord_b"><a href="/admin/products/calldone/id/{$item.id}"<img src="/images/arrow-ok.png" alt="ok" /></td>
	</tr>
	{/foreach}
	<tr>
		<td class="callback_bord_rr">&nbsp;</td>
		<td class="callback_bord_rr"></td>
		<td class="callback_bord_rr"></td>
		<td class="callback_bord_rr"></td>
		<td class="callback_bord_rr"></td>
		<td></td>
	</tr>
</table>

{include file=_footer.tpl}