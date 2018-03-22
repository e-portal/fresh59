<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.5.min.js"></script>

<a href="/anketa/addquestion">Добавить вопрос</a>

<table>
	<tr>
		<th>Вопрос</th>
	</tr>
	{foreach from=$questions item=item}
	<tr>
		<td>{$item.question}</td>
	</tr>
	{/foreach}
</table>