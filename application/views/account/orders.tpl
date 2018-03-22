{include file=_header_new.tpl}

<!-- Main -->
<div class="container">
	<div class="row">
{include file=account_menu.tpl}
        <!-- Main Content -->
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-10">
    		<h1 class="page-header">Мои заказы</h1>

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<form>
		                <div class="table-responsive">
		                    <table class="table">
		                        <thead>
		                            <tr class="success">
		                            	<td class="text-center"></td>
		                                <td class="text-center">Номер заказа</td>
		                                <td class="text-center">Время заказа</td>
		                                <td class="text-center">Состояние</td>
		                                <td class="text-center">Сумма заказа</td>
		                            </tr>
		                        </thead>
		                        <tbody>
	                                <tr>
	                                    <td class="text-center">
		                            		<img src="" alt="" title="" class="img-thumbnail">
	                                    </td>
	                                    <td class="text-center">26567</td>
	                                    <td class="text-center">28.11.2011 15:01:00</td>
	                                    <td class="text-center">Отгружен</td>
	                                    <td class="text-center">21718 грн.</td>
	                                </tr>
		                        </tbody>
		                    </table>
		                </div>
            		</form>
				</div>
			</div>

{include file=account_footer.tpl}

        </div><!-- Main Content End -->
	</div><!-- Main Row End -->
</div><!-- Main End -->

{include file=_footer_new.tpl}
