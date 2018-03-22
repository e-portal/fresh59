{include file=_header_new.tpl}

<!-- Main -->
<div class="container account">
	<div class="row">
{include file=account_menu.tpl}
        <!-- Main Content -->
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-10">
    		<h1 class="page-header">Личный кабинет</h1>

			<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
	                <p>Имя:</p>
	                <p>Телефон:</p>
	                <p>Email:</p>
	                <p>Город:</p>
	                <p>Дата рождения</p>
	                <p>Пол</p>
	            </div>

				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
					<p>{ $user.name }</p>
					<p>{ $user.phone }</p>
					<p>{ $user.email }</p>
					<p>{ $user.city_id }</p>
					<p></p>
					<p></p>
				</div>

				<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
					<a href="/account/edit" class="btn btn-primary">Редактировать</a><br><br>
					<button class="btn btn-primary">Изменить пароль</button><br><br>
					<a class="btn btn-warning" href="/account/logout">Выйти</a>
				</div>
			</div>

{include file=account_footer.tpl}

        </div><!-- Main Content End -->

	</div><!-- Main Row End -->
</div><!-- Main End -->

{include file=_footer_new.tpl}