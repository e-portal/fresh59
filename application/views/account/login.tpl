{include file=_header_new.tpl}

<!-- Main -->
<div class="container">
	<div class="row">        
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
			<h1 class="page-header">Авторизация</h1>
			<form action="/account/auth" method="post">
				<div class="form-group">
					<label for="phone">Телефон:</label>
					<input type="phone" name="phone" id="phone" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password">Пароль:</label>
					<input type="password" name="password" id="password" class="form-control" />
				</div>
				<input type="submit" class="btn btn-success" value="Войти" />
			</form>
		</div>
	</div><!-- Main Row End -->
</div><!-- Main End -->

{include file=_footer_new.tpl}
