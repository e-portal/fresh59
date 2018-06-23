{include file=_header.tpl}

<div id="sitemap">
	<h1>Ошибка 404. Страница {$smarty.server.HTTP_REFERER} не найдена</h1>
	<h3>Возможно адрес страницы изменился, либо она была удалена. Пожалуйста зайдите в одну из ниже предложенных категорий товара, которые вас заинтересовали.</h3><br>
	<h4 style="text-align: center">Каталог товаров:</h4><br>
	{php} echo $this->navigation()->menu($this->menu->findOneById(1));{/php}
</div>


{literal}
	<script type="text/javascript">
		$(document).ready(function() {
			$("#sitemap .navigation").children('li').each(function(){
				$(this).children('ul').each(function(){$(this).toggle();});
			});
		});
	</script>
{/literal}

{include file=_footer.tpl}
