{include file=_header_new.tpl}

<!-- Main -->
<div class="container">
	<div class="row">
{include file=account_menu.tpl}
        <!-- Main Content -->
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-10">
    		<h1 class="page-header">Редактирование профиля</h1>

			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
					<form>
						<div class="form-group">
							<label for="name">Имя:</label>
							<input type="name" name="name" class="form-control" id="name" value="{$user.name}" />
						</div>
						<div class="form-group">
							<label for="phone">Телефон:</label>
							<input type="phone" name="phone" class="form-control" id="phone" value="{$user.phone}" />
						</div>
						<div class="form-group">
							<label for="email">Email:</label>
							<input type="email" name="email" class="form-control" id="email" value="{$user.email}" />
						</div>
						<div class="form-group">
      						<label for="sel1">Город:</label>
							<select class="form-control" id="sel1">
						        <option>Киев</option>
						        <option>Львов</option>
							</select>
						</div>
						<div class="form-group">
      						<label for="sel2">Пол:</label>
							<select class="form-control" id="sel2">
						        <option>Женский</option>
						        <option>Мужской</option>
							</select>
						</div>
						<input type="submit" class="btn btn-success" value="Сохранить" />
					</form>
				</div>

				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

				</div>
			</div>

{include file=account_footer.tpl}

        </div><!-- Main Content End -->

	</div><!-- Main Row End -->
</div><!-- Main End -->

{include file=_footer_new.tpl}
