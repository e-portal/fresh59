{include file=_header.tpl}

{literal}
	<style>
		.central_block .sidebar > ul.sidebar {
			display: block;
		}
	</style>
{/literal}

<div id="sitemap">
	<h1>Карта сайта</h1>
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
