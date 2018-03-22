{include file=_header_new.tpl}

<div class="container">
	<div class="row">
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
			<h1 class="page-header">Регистрация</h1>

            <div class="alert alert-info">
                <p><strong>Зарегистрируйтесь и получите 100 грн на покупки!</strong></p>
            </div>

			<form method="post" action="/account/register">
				<div class="form-group">
					<label for="name">Имя</label>
					<input type="name" class="form-control" id="name" name="name" placeholder="Введите ваше имя" />
				</div>

				<div class="form-group">
					<label for="phone">Номер телефона</label>
					<input type="phone" class="form-control" id="phone" name="phone" placeholder="Введите ваш номер телефона" />
				</div>

				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="Введите ваш email" />
				</div>

				<div class="form-group">
					<label for="password">Пароль</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="Введите ваш пароль" />
				</div>

				<div class="form-group">
					<label for="city">Город</label>
					<select class="form-control" id="city" name="city_id">
						<option value="1">Киев</option>
						<option value="2">Винница</option>
						<option value="3">Днепр</option>
						<option value="4">Донецк</option>
						<option value="5">Запорожье</option>
						<option value="6">Кропивницкий</option>
						<option value="7">Кременчуг</option>
						<option value="8">Кривой Рог</option>
						<option value="9">Львов</option>
						<option value="10">Мариуполь</option>
						<option value="11">Николаев</option>
						<option value="12">Одесса</option>
						<option value="13">Харьков</option>
						<option value="14">Херсон</option>
						<option value="15">Черкассы</option>
					</select>
				</div>
				<input type="submit" name="submit" class="btn btn-success" value="Зарегистрировать"/>
			</form>
		</div>
	</div>
</div>

{include file=_footer_new.tpl}
