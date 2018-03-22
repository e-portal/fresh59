<html>
<body>

Здравствуйте, уважаемый покупатель.<br />
Рады сообщить, что Ваш заказ успешно отправлен менеджеру, который в ближайшее время свяжется с Вами для подтверждения деталей заказа.

<table align=center width="80%">
	<tr><td>Заказ №{$order_id}</td></tr>
	<tr>
		<td>
			<table width="100%">
				<tr class="header">
					<td>Название</td>
					<td>Цена</td>
					<td>Количество</td>
				</tr>
			{foreach from=$items item=item}
				<tr>
					<td width="300"><a href="http://{$smarty.server.HTTP_HOST}/catalog/item/{$item.id}">{$item.brand} {$item.name}</a></td>
					<td>{price $item.price $item.id_currency} {$smarty.session.Currency.title}</td>
					<td>{$item.amount}</td>
				</tr>
			{/foreach}
				<tr class="foter">
					<td>Сумма</td>
					<td>{"%.02f"|sprintf:$summ} {$smarty.session.Currency.title}</td>
					<td></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

{if $smarty.session.Currency.active !=4}
<b>Цена в валюте предоставлена исключительно для оценки стоимости товара. Расчеты за товары происходят исключительно в гривне.</b>
<br />
{/if}

Благодарим за использование нашего Интернет-магазина
Будем рады видеть Вас среди наших постоянных покупателей!<br />

</body>
</html>