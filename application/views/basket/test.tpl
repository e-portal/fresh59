<!-- Main -->
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
			<h2>Оформление заказа</h2>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			<span><i class="fa fa-phone" aria-hidden="true"></i> (044) 223-85-20, (050) 590-0-590, (067) 803-17-54</span>
		</div>
	</div>

	<div class="row basket-main">
		<div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
			<div class="basket-order">
<!-- Accordion -->
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><i class="fa fa-chevron-right" aria-hidden="true"></i> Контактные данные</a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">
<!-- Sign Up / Sign In Pills -->
								<ul class="nav nav-pills">
									<li class="active"><a data-toggle="pill" href="#new_user">Я новый покупатель</a></li>
									<li><a data-toggle="pill" href="#old_user">Я постоянный покупатель</a></li>
								</ul>

								<div class="tab-content">
									<div id="new_user" class="tab-pane fade in active">
										<!-- Form -->
										<form class="form-horizontal">
											<div class="form-group">
												<label class="control-label col-sm-4" for="first-name">Имя</label>
												<div class="col-sm-8">
													<input type="first-name" class="form-control" id="first-name" placeholder="Введите ваше имя">
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-sm-4" for="phone">Номер телефона</label>
												<div class="col-sm-8">
													<input type="phone" class="form-control" id="phone" placeholder="Введите ваш номер телефона">
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-sm-4" for="email">Email</label>
												<div class="col-sm-8">
													<input type="email" class="form-control" id="email" placeholder="Введите ваш email">
												</div>
											</div>
										</form>

										<form class="form-horizontal">
											<div class="form-group">
												<label class="control-label col-sm-4" for="sel1">Город</label>
												<div class="col-sm-8">
													<select class="form-control" id="sel1">
														<option>Киев</option>
														<option>Винница</option>
														<option>Днепр</option>
														<option>Донецк</option>
														<option>Запорожье</option>
														<option>Кропивницкий</option>
														<option>Кременчуг</option>
														<option>Кривой Рог</option>
														<option>Львов</option>
														<option>Мариуполь</option>
														<option>Николаев</option>
														<option>Одесса</option>
														<option>Харьков</option>
														<option>Херсон</option>
														<option>Черкассы</option>
													</select>
												</div>
											</div>
										</form>
										<!-- Form End -->
									</div>
									<div id="old_user" class="tab-pane fade">
										<form class="form-horizontal">
											<div class="form-group">
												<label class="control-label col-sm-4" for="email">Email</label>
												<div class="col-sm-8">
													<input type="email" class="form-control" id="email" placeholder="Введите ваш email">
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-sm-4" for="password">Пароль</label>
												<div class="col-sm-8">
													<input type="password" class="form-control" id="password" placeholder="Введите ваш пароль">
												</div>
											</div>
										</form>
									</div>
								</div>
<!-- Sign Up / Sign In Pills End -->

							</div>
						</div>
					</div>

					<div class="panel panel-primary">
						<div class="panel-heading" role="tab">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2"><i class="fa fa-chevron-right" aria-hidden="true"></i> Выбор способов оплаты и доставки</a>
							</h4>
						</div>
						<div id="collapse2" class="panel-collapse collapse in">
							<div class="panel-body">
								<h4><strong>Оплата</strong></h4>
								<div class="radio">
									<label><input type="radio" name="optradio">Наличными</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="optradio">MasterCard / Visa</label>
								</div>
								<div class="radio" data-toggle="collapse" href="#credit">
									<label><input type="radio" name="optradio">Кредит</label>
									<div class="collapse" id="credit">
										<div class="radio" data-toggle="collapse" href="#credit_pp">
											<label><input type="radio" name="optradio">ПриватБанк Оплата Частями</label>
										</div>
										<div class="radio" data-toggle="collapse" href="#credit_pp">
											<label><input type="radio" name="optradio">ПриватБанк Мгновенная Расрочка</label>
										</div>
									</div>
								</div>

								<br>
								<h4><strong>Доставка</strong></h4>
								<div class="radio">
									<label><input type="radio" name="optradio">Курьер</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="optradio">Новая Почта</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="optradio">Самовывоз</label>
								</div>
							</div>
						</div>
					</div>
				</div>
<!-- Accordion End -->

			</div>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
			<aside class="aside-total">
				<div class="alert alert-info">
					<h2 class="">Итого</h2>
					<div class="total">
						<div>
							<div class="total-title">1 товар на сумму</div>
							<div class="total-price">20 962 грн</div>
						</div>
						<br>
						<div>
							<div class="total-title">Стоимость доставки</div>
							<div class="total-price">бесплатно</div>
						</div>
						<hr><br>
						<div class="total-info">
							<div class="total-title">К оплате</div>
							<div class="total-price"><strong>20 962 грн</strong></div>
						</div>
					</div>
					<div class="total-buy">
						<button class="btn btn-success btn-lg">Купить</button>
					</div>
				</div>
			</aside>
		</div>
	</div>
</div>
<!-- Main End -->