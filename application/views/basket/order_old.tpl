{if $smarty.session.Basket.items || $smarty.session.Basket.sets}
    <div class="breadcrumbs span-12 no_margin">
        <a href="/">Интернет магазин бытовой техники</a>
        <span>→</span>
        <span>Корзина</span>
    </div>
    <div class="data-order">
        <div class="basket">
            <h1>Заказанные товары</h1>
            <table class="table basket-items">
                <thead>
                <tr>
                    <th class="basket-items-num"></th>
                    <th colspan="2">Наименование</th>
                    <th>К-во</th>
                    <th>Цена</th>
                   {if $basketStats.discount>0}<th>Цена со скидкой</th>{/if}

                    <th class="basketSummTh">Сумма, {$smarty.session.Currency.title}</th>
                </tr>
                </thead>
                <tbody>

                {literal}
                <script type="text/javascript">
                    function my_reload(){
                      setTimeout(function(){
                        location.reload();
                      }, 1000)
                    }
                </script>
                {/literal}

                {foreach from=$data.Basket.items item=item key=id}
                    <tr {if $item.hasGift}class="data-gift"{/if}>
                        <td class="remove_from_basket_td"><i class="remove_from_basket data-remove" id="item_{$id}" onclick="my_reload()" title="Удалить"></i></td>
                        <td class="basket-img">
                            {if $data.itemsInfo[$id].imgid}
                                <img class="data-zoom" rel="tooltip" data-original-title="Увеличить изображение" data-url="/images/catalog/{$data.itemsInfo[$id].imgid}.{$data.itemsInfo[$id].imgext}" src="/images/catalog/{$data.itemsInfo[$id].imgid}_s.{$data.itemsInfo[$id].imgext}" data-alt="{$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}" />
                            {else}
                                <img src="{$url.img}/noimage.jpg" alt="" />
                            {/if}
                        </td>
                        <td>
                            <a href="/catalog/item/{$id}" class="basket_product_title">{$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}</a>
                            {if $data.itemsInfo[$id].bonus_amount > 0}<p class="bonus"><span>+ <span class='data-bonusSum'>{math equation="x*y" x=$data.itemsInfo[$id].bonus_amount y=$item.amount}</span> грн</span> на бонусный счет</p>{/if}
                            <input type="hidden" class='data-bonus' value="{$data.itemsInfo[$id].bonus_amount}" />
                        </td>
                        <td class="basket_items"><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' />
                            <input oninput="my_reload()" class="data-amount span1" type="text" id="itema_{$id}" value="{$item.amount}" /></td>
                        <td><strong>{price $item.price $item.id_currency}</strong></td>

                        {if $basketStats.discount>0}

                        <td style="color: #1dbc1c; text-decoration: underline;    padding-left: 35px;"><strong>{$basketStats.price_of_each[$id]|round}</strong></td>

                        {/if}

<td class="data-itemPrice"><strong>{math equation="x * y" x=$basketStats.price_of_each[$id]|round y=$basketStats.amount_of_each_item[$id]}</strong></td>
                    </tr>
                    {if $item.hasGift}
                        <tr class="data-giftItem alert gift_basket">
                            <td></td>
                            <td class="basket-img"><img src="/images/catalog/{$item.gift.imgid}.{$item.gift.imgext}" alt="" /></td>
                            <td>
                                <p class="b-gift"><strong>Подарок - {$item.gift.category} {$item.gift.brand} {$item.gift.name}</strong></p>
                            </td>
                            <td></td>
                            <td></td>

                            {if $basketStats.discount>0}
                            <td></td>
                            {/if}
                            <td></td>
                        </tr>
                    {/if}
                {/foreach}
                {foreach from=$data.Basket.sets item=item key=id}
                    <tr>
                        <td><i class="icon-remove data-remove" id="set_{$id}" title="Удалить"></i></td>
                        <td colspan="2"><a href="/catalog/set/{$id}">{$data.setsInfo[$id].short_info}</a>
                            <table>
                                {foreach from=$item.items item=setItemId}
                                    <tr>
                                        <td class="basket-img"><img class="data-zoom" data-url="/images/catalog/{$data.itemsInfo[$setItemId].imgid}.{$data.itemsInfo[$setItemId].imgext}" src="/images/catalog/{$data.itemsInfo[$setItemId].imgid}_s.{$data.itemsInfo[$setItemId].imgext}"  alt="{$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}" /></td>
                                        <td>
                                            <a href="/catalog/item/{$setItemId}">{if $data.itemsInfo[$setItemId].cat_onename}{$data.itemsInfo[$setItemId].cat_onename}{else}{$data.itemsInfo[$setItemId].cat}{/if} {$data.itemsInfo[$setItemId].brand} {$data.itemsInfo[$setItemId].name}</a>
                                            {if $login=='Покупатель' && $data.itemsInfo[$id].bonus_amount > 0}<p class="bp__product-summ"><span>+ {$data.itemsInfo[$id].bonus_amount|round} грн</span> на бонусный счет</p>{/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            </table>
                        </td>
                        <td>{price $item.price $item.id_currency} </td>
                        <td class="count"><input type="hidden" name = 'type' value='set'/><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' /><input class="data-amount span1" type="text" id="itema_{$id}" value="{$item.amount}" /></td>
                        <td class="data-itemPrice">{price $item.price $item.id_currency $item.amount} грн.</td>
                    </tr>
                {/foreach}
                </tbody>
                <tfoot>
                <tr>
                    <td rowspan="2" colspan="3">
                        {if $data.bonus}
                        {if $data.bonus->used == "1"}
                        <span class="promo-button alert-info">Ваш промо-код уже был использован.</span>
                        {else}
                            <span class="promo-button alert-info">Промо-код принят. Ваша скидка составляет <span class="promo-summ">{$data.bonus->amount} {$smarty.session.Currency.title}</span> </span>
                            {/if}
                        {else}
                            <span class="promo-button">
                                <a class="promo-link" href="#promocode" data-toggle="modal">Ввести промо-код</a>
                                <a href="#" class="info-mini" data-toggle="popover" data-placement="top" data-content="Программа лояльности 590.ua для постоянных покупателей. <br>
    Детали можно узнать по телефону: (095) 757 22 41" title="" data-original-title="Условия"></a>
                            </span>
                        {/if}
                    </td>

                    <td colspan="4" class="cart-mini-summ">
                        <!--<p class="data-transfer transfer_info"></p>-->
{if $basketStats.discount>0}
                        <p style="margin-top: 15px; text-decoration: line-through; font-size: 20px !important;color: #8b8888 !important;"" id="summ_za_vse"></p> <!--Вывод суммы-->
{else}
                        <p style="margin-top: 15px;" id="summ_za_vse"></p> <!--Вывод суммы-->
{/if}

                        <img id="img_dostavka" style="display: none; float: right; width: 70px;" src="https://590.ua/assets/media/dost_gorod.png">
                        <p style="float: right; margin-top: 11px; margin-right: -5px;" id="text_dostavka_info"></p>
                        <!--Вывод информации о доставке-->
{if $basketStats.discount>0}
<p style="display: none;">Итого: <span id="real_price_for_pay">{$basketStats.summ_with_discount}</span> {$smarty.session.Currency.title}</p>
{else}
<p style="display: none;">Итого: <span id="real_price_for_pay">{$basketStats.summ}</span> {$smarty.session.Currency.title}</p>
{/if}
{if $basketStats.discount>0}
<p id="how_economy" style="margin-top:-5px;font-size: 14px !important;color: #0d8abc !important;">Вы экономите:<span style="color: #fb515d !important;
    font-size: 14px !important;">{$basketStats.discount|round} грн ({$basketStats.discount*100/$basketStats.summ|round}%)</span></p>
<p style="font-size: 20px !important;color: #0d8abc !important;">Сумма со скидкой:<span id="real_sum_with_discount" style="color: #fb515d !important;font-size: 20px !important;">{$basketStats.summ|round}</span>грн</p>
{else}
<span id="real_sum_with_discount" style="display: none;">{$basketStats.summ|round}</span>
{/if}

                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

{if $login=='акция рождество' || $login=='Гальченко Владимир'}
{assign var="blackid_count" value=0}
{assign var="black_price" value=0}
{assign var="regular_price" value=0}
{assign var="iteration_celebration" value=0}
{foreach from=$item_id_temporary_celebration item=foo}
    {foreach from=$basketStats.ids item=blackid}
        {if $blackid == $foo && !$item.hasGift}
            {assign var="black_price" value=$black_price+$regular_price+$data.itemsInfo[$blackid].bdprice*$curs_evro_smarty*$data.Basket.items[$blackid].amount-$summ_temporary_celebration[$iteration_celebration]*$data.Basket.items[$blackid].amount}
            {assign var="blackid_count" value=$blackid_count+1}
        {/if}
    {/foreach}
{assign var="iteration_celebration" value=$iteration_celebration+1}
{/foreach}

{if ($blackid_count > 0 ) && ($basketStats.discount<=0)}
<img src="/images/hint/black_friday_basket.jpg"><div style="
    position: absolute;
        width: 135px;
        margin-top: -118px;
        text-align: center;
        margin-left: 703px;
        font-family: cursive;
        color: #ffffff;
        font-weight: bold;
        font-size: 26px;
        text-shadow: black 2px 2px 8px;">{$black_price|round} грн</div>
{/if}{/if}
        <div class="b-items">
            <span class="bordered">Оформление заказа</span>

            <form class="form-horizontal make_order" id="order" method="post" name='basketForm' enctype="application/x-www-form-urlencoded">
                {if $manager}
                    <div class="control-group">
                        <div class="control-label">id во внутренней базе</div>
                        <div class="controls" style="margin-left: 160px;"><input class="custom_select" name="id2" type="text" /></div>
                    </div>
                    <div class="control-group">
                        <div class="control-label">Откуда узнал о нас?</div>
                        <div class="controls" style="margin-left: 160px;"><select class="custom_select" name="idsrc">{foreach from=$form->idsrc->getMultiOptions() item=name key=id}<option {if $id==$form->idsrc->getValue()} selected="selected" {/if} value="{$id}">{$name}</option>{/foreach}</select></div>
                    </div>
                    <div class="control-group">
                        <div class="control-label">Статус заказа</div>
                        <div class="controls" style="margin-left: 160px;"><select class="custom_select" name="status">{foreach from=$form->status->getMultiOptions() item=name key=id}<option {if $id==$form->status->getValue()} selected="selected" {/if} value="{$id}">{$name}</option>{/foreach}</select></div>
                    </div>
                    <div class="control-group">
                        <div class="control-label"><strong>Дата доставки *</strong></div>
                        <div class="controls" style="margin-left: 160px;"><input class="custom_select" id="processing_date" type="text" name="processing_date" />
                            <a href="#" id="processing_date_calendar" style="position: absolute; margin-left: -25px; margin-top: 5px;"><img class="calendar-image" src = "/js/calendar/calendar.gif"></a>
                            {literal}
                                <script type="text/javascript">
                                    Calendar.setup(
                                            {
                                                inputField  : "processing_date",
                                                ifFormat    : "%Y-%m-%d",
                                                button      : "processing_date_calendar",
                                                firstDay    : 1,
                                                singleClick : false,
                                                electric    : false
                                            }
                                    );
                                </script>
                            {/literal}
                        </div>
                    </div>
                {/if}
                <div class="control-group">
                    <div class="control-label"><strong>Имя и Фамилия *</strong></div>
                    <div class="controls" style="margin-left: 160px;"><input type="text" id="name" class="validate[required,custom[onlyLetterSp]] custom_select" name="name" value="{$form->name->getValue()}" /></div>
                </div>
                <div class="control-group name2" style="display: none !important;">
                    <div class="control-label" style="display: none !important;"><strong>Фамилия *</strong></div>
                    <div class="controls" style="display: none !important; margin-left: 160px;"><input class="custom_select" type="text" id="name2" name="name2" value=" " class="validate[required]" /></div>
                </div>
                <div class="control-group">
                    <div class="control-label">
                        <strong>Телефон *</strong>
                        <!--[if lt IE 9 ]>
                        <br />
                        в формате<br />
                        <span class="label label-warning">+38(099) 123-45-67</span>
                        <![endif]-->
                    </div>
                    <div class="controls" style="margin-left: 160px;">
                        <input placeholder="093 111 22 33" type="text" id="phone" name="phone" value="{$form->phone->getValue()}" class="validate[required] custom_select" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="control-label">Телефон доп.</div>
                    <div class="controls" style="margin-left: 160px;"><input class="custom_select" type="text" name="phone2" value="{$form->phone2->getValue()}" /></div>
                </div>
                <div class="control-group">
                    <div class="control-label">E-mail</div>
                    <div class="controls" style="margin-left: 160px;"><input id="email" class="custom_select" type="text" name="email" value="{$form->email->getValue()}" /></div>
                </div>
                <div class="control-group">
                    <div class="control-label">Регион</div>
                    <div class="controls" style="margin-left: 160px;">
                        <select id="region_id_for_delivery" class="custom_select" type="text" name="region_id">
                            {foreach from=$regions item=region key=id}
                                <option value="{$region.id}" {if $smarty.cookies.region==$region.id}selected="selected"{/if}>{$region.name}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>

                {if $form->paytype}
                    <div class="control-group">
                        <div class="control-label">Способы оплаты</div>
                        <div class="controls" style="margin-left: 160px;">
                            <!-- <p><label><input type="radio" name="paytype" value="0" {if $form->paytype->getValue()!=1} checked="checked" {/if} /> Наличными курьеру</label></p>
                            <p><label><input type="radio" name="paytype" value="1" {if $form->paytype->getValue()==1} checked="checked" {/if} /> Платежная карта </label></p> -->

    						<p><input type="radio" name="paytype" id="nal" value="0" {if $form->paytype->getValue()!=1} checked="checked" {/if} /> <label for="nal">Наличными курьеру</label></p>
                            <p><input type="radio" name="paytype" id="plat" value="1" {if $form->paytype->getValue()==1} checked="checked" {/if} /> <label for="plat">Платежная карта</label></p>
							<p><i class="visa-icon"></i></p>

                            <!-- manager -->
                            	<p><input type="radio" name="paytype" id="credit" value="2" {if $form->paytype->getValue()==2} checked="checked" {/if} /> <label for="credit">Кредит</label></p>
                            <!-- manager end -->

                        </div>
                    </div>

                    <!-- manager -->
                    <div class="control-group credit-block hidden" style="margin-left: 20px">
                        <div class="control-label">Выберите кредит</div>
                        <div class="controls" style="margin-left: 160px;">
    						<p><input type="radio" name="bank_name" id="privatbank_pp" value="0" checked="checked" /> <label for="privatbank_pp">ПриватБанк Оплата Частями</label></p>
                            <p><input type="radio" name="bank_name" id="privatbank_op" value="1" /> <label for="privatbank_op">ПриватБанк Мгновенная рассрочка</label></p>
           				</div>
        			</div>
                    <div class="control-group credit-block hidden" style="margin-left: 20px">
                        <div class="control-label">Количество месяцев</div>
                        <div class="controls" style="margin-left: 160px;">
                        	<select class="credit_period">
                                {foreach from=$payParts item=period key=k}
                                    <option value="{$period}">{$period}</option>
                                {/foreach}
                        	</select>
           				</div>
        			</div>
                    <div class="control-group credit-block credit-info hidden" style="margin-left: 20px">
                        <div class="control-label"></div>
                        <div class="controls" style="margin-left: 160px;">
                        	3 платежа на 3 месяца  {math equation="x/y|round" x=$basketStats.summ y=3} грн
                        </div>
        			</div>
        			{literal}
	        			<script>
                            $("#phone").keyup(function(e) {
                                var phone = $(this).val().replace(/[^\d]+/g, "");
                                if (phone.length == 12) {
                                    $.post("/api/getpostmat", {phone: phone}, function(r){
                                        if (r.status == "ok") {
                                            $("#delivery-block-privatbank").html("");
                                            $.each(r.postamats, function(a,b){
                                                $("#delivery-block-privatbank").append(
                                                    $("<option />").attr("value", b.address_ua)
                                                        .text(b.address_street))
                                            })
                                        }
                                    }, "json");
                                }
                            });
                            $('input[name="bank_name"]').change(function(e){
                                var payParts = {/literal}{$payParts|@json_encode}{literal},
                                    creditPeriod = $(".credit_period");
                                creditPeriod.find("option").remove();
                                if (this.value == 1) {
                                    for (var i = 3; i <= 24; i++) {
                                        creditPeriod.append($("<option />").val(i).text(i));
                                    }
                                } else {
                                    $.each(payParts, function(a,b){
                                        creditPeriod.append($("<option />").val(b).text(b));
                                    });
                                }
                            });
	        				$("input:radio[name='paytype']").change(function(e) {
	        					if (e.target.value == 2) {
	        						$(".credit-block").removeClass("hidden");
	        					} else {
	        						$(".credit-block").addClass("hidden");
	        					}
	        				})
	        				var inp = $('input[name="bank_name"]');
                                        $("#privatbank_pp").change(function(e) {
                                    // {/literal}
                                            var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
                                                _plat = _text,
                                                _summ = Math.round({$basketStats.summ} / _plat),
                                                inp = $('input[name="bank_name"]');
                                            $(".credit-info .controls").text('3 платежа на 3 месяца по {math equation="x/y|round" x=$basketStats.summ y=3} грн');
                                    // {literal}
                                    //
                                    if (inp[1].checked === true) {
            	        			                                $(".credit_period").change(function(e) {
            	        			                            // {/literal}
            	        			                                    var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
            	        			                                        _plat = _text,
            	        			                                        _summ = Math.round({$basketStats.summ});
            	        			                                    $(".credit-info .controls").text(_plat + ' платежа(ей) на ' + _plat + ' мес. по '+ Math.round((_summ+(_summ*0.0099*_plat))/_plat) +' грн.\nКомиссия от ПриватБанк: '+ Math.round(_summ*0.0099*_plat) +' грн.\nСумма с комиссией: '+ Math.round(_summ+(_summ*0.0099*_plat)) +' грн.');
            	        			                            // {literal}
            	        			                                })
                                    } else {
                                    	                            $(".credit_period").change(function(e) {
                                    	                        // {/literal}
                                    	                                var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
                                    	                                    _plat = _text,
                                    	                                    _summ = Math.round({$basketStats.summ} / _plat);
                                    	                                $(".credit-info .controls").text(_plat + ' платежа(ей) на ' + _plat + ' мес. по ' + _summ + ' грн.');
                                    	                        // {literal}
                                    	                            })
                                    }
                                        })

            	        				$("#privatbank_op").change(function(e) {
            	        			// {/literal}
            	        					var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
            	        						_plat = _text,
            	        						_summ = Math.round({$basketStats.summ}),
            	        						inp = $('input[name="bank_name"]');
            	        					$(".credit-info .controls").text('3 платежа на 3 месяца по {math equation="(x+z)/y|round" x=$basketStats.summ y=3 z=$basketStats.summ*0.0099*3} грн.\nКомиссия от ПриватБанк: {$basketStats.summ*0.0099*3|round} грн. \nСумма с комиссией: {math equation="x+z|round" x=$basketStats.summ z=$basketStats.summ*0.0099*3} грн.');
            	        			// {literal}
            	        			//
            	        			//
            	        			if (inp[1].checked === true) {
            	        			                                $(".credit_period").change(function(e) {
            	        			                            // {/literal}
            	        			                                    var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
            	        			                                        _plat = _text,
            	        			                                        _summ = Math.round({$basketStats.summ});
            	        			                                    $(".credit-info .controls").text(_plat + ' платежа(ей) на ' + _plat + ' мес. по '+ Math.round((_summ+(_summ*0.0099*_plat))/_plat) +' грн.\nКомиссия от ПриватБанк: '+ Math.round(_summ*0.0099*_plat) +' грн.\nСумма с комиссией: '+ Math.round(_summ+(_summ*0.0099*_plat)) +' грн.');
            	        			                            // {literal}
            	        			                                })
            	        			} else {
            	        				                            $(".credit_period").change(function(e) {
            	        				                        // {/literal}
            	        				                                var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
            	        				                                    _plat = _text,
            	        				                                    _summ = Math.round({$basketStats.summ} / _plat);
            	        				                                $(".credit-info .controls").text(_plat + ' платежа(ей) на ' + _plat + ' мес. по ' + _summ + ' грн.');
            	        				                        // {literal}
            	        				                            })
            	        			}
            	        				})

if (inp[1].checked === true) {
                                        $(".credit_period").change(function(e) {
                                    // {/literal}
                                            var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
                                                _plat = _text,
                                                _summ = Math.round({$basketStats.summ} / _plat);
                                            $(".credit-info .controls").text(_plat + ' платежа(ей) на ' + _plat + ' мес. по '+ Math.round((_summ+_summ*0.0099*_plat)/_plat) +' грн.<br> Комиссия от ПриватБанк: '+ Math.round(_summ*0.0099) +' грн., вместе '+ Math.round(_summ+_summ*0.0099*_plat) +' грн.)');
                                    // {literal}
                                        })
        } else {
        	                            $(".credit_period").change(function(e) {
        	                        // {/literal}
        	                                var _text = parseInt($(".credit_period option[value='"+e.target.value+"']").text()),
        	                                    _plat = _text,
        	                                    _summ = Math.round({$basketStats.summ} / _plat);
        	                                $(".credit-info .controls").text(_plat + ' платежа(ей) на ' + _plat + ' мес. по ' + _summ + ' грн.');
        	                        // {literal}
        	                            })
        }




	        			</script>
        			{/literal}
                    <!--  manager end -->

                {/if}

                <!-- Delivery End -->
                    <div class="control-group delivery-block">
                        <div class="control-label">Способ доставки</div>
                        <div class="controls" style="margin-left: 160px;">
                            <p><input type="radio" name="delivery_name" id="delivery_myself" value="1" checked="checked" /> <label for="delivery_myself">Самовывоз</label></p>
                            <p><input type="radio" name="delivery_name" id="delivery_curier" value="2" /> <label for="delivery_curier">Курьер</label></p>
                            <!-- <p><input type="radio" name="delivery_name" id="delivery_privatbank" value="3" /><label for="delivery_privatbank"> Почтомат ПриватБанк</label></p>
                            <p><input type="radio" name="delivery_name" id="delivery_nova_poshta" value="4" /> <label for="delivery_nova_poshta">Новая Почта</label></p> -->
                            <p><input type="radio" name="delivery_name" id="delivery_tradein" value="5" /> <label for="delivery_tradein" rel="tooltip" data-original-title="Программа обмена старой техники на новую">Trade-in "ZAMENA"</label></p>
                        </div>
                    </div>

                    <div class="control-group delivery-block-tradein hidden">
                        <div class="alert alert-info">
                            <span><strong>Для уточнения стоимости товара по <a href="/articles/zamena" style="color: #ff6c00; text-decoration: underline;">программе Trade-in "ZAMENA"</a>, с Вами свяжется менеджер</strong></span>
                        </div>
                    </div>

<!--             		<div class="control-group delivery-block-privatbank" style="margin-left: 20px">
                        <div class="control-label">Выберите точку доставки</div>
                        <div class="controls">
                        	<select id="delivery-block-privatbank"></select>
           				</div>
        			</div> -->

        			{literal}
	        			<script>
	        				$("input:radio[name='delivery_name']").change(function(e) {
	        					if (e.target.value == 5) {
	        						$(".delivery-block-tradein").removeClass("hidden");
	        					} else {
	        						$(".delivery-block-tradein").addClass("hidden");
	        					}
	        				})
	        			</script>
        			{/literal}

                <!-- Delivery End -->

                {if $manager}
                    <div class="control-group">
                        <div class="control-label">Район покупателя</div>
                        <div class="controls" style="margin-left: 160px;">
                            {php}echo $this->formSelect('district',null,null, $this->form->district->getAttrib('options'));{/php}
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="control-label">Платная доставка</div>
                        <div class="controls" style="margin-left: 160px;"><input type="checkbox" name="payed_delivery" value="1" /></div>
                    </div>
                {/if}
                {if $login=='Shishko'}
                    <div class="control-group">
                        <div class="control-label">Адрес доставки</div>
                        <div class="controls dropdown">
                            <textarea type="text" id="adresss" name="address" class="data-adress">{$form->address->getValue()}</textarea>
                            <ul class="dropdown-menu data-adress-popup" id="address-dropdown">
                                <li><a href="#">Дегтяревская 25А</a></li>
                            </ul>
                        </div>
                    </div>
                {else}
                    <div class="control-group">
                        <div class="control-label">Адрес доставки</div>
                        <div class="controls" style="margin-left: 160px;"><textarea type="text" id="adresss" name="address">{$form->address->getValue()}</textarea></div>
                    </div>
                {/if}

                <div class="control-group">
                    <div class="control-label">Комментарии</div>
                    <div class="controls" style="margin-left: 160px;"><textarea type="text" name="comments">{$form->comments->getValue()}</textarea></div>
                    {if $basketStats.discount>0}<textarea style="display: none;" type="hidden" name="comments">{$form->comments->getValue()}Нужно исправить цены (по акции Вместе Дешевле):
{foreach from=$data.Basket.items item=item key=id}{$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name} = {$basketStats.price_of_each[$id]/$curs_evro_smarty|round:2}
{/foreach}

Нужно исправить сумму "Взять оплату" на: {$basketStats.summ|round}</textarea>

<!--<textarea type="text" id="adresss" name="address" style="display: none;">{$form->address->getValue()}123</textarea>-->
{/if}
                </div>
                <div class="control-group">
                    <div class="control-label"></div>
                    <div class="controls" style="margin-left: 160px;"><button type="submit" class="btn btn-large btn-info">Оформить заказ</button></div>
                    <input type="hidden" name="site" value="{$site}" />
                </div>


{if $basketStats.discount>0}
<span id="oplata_chast_vmeste_deshevle" style="display: none;">{foreach from=$data.Basket.items item=item key=id}{$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name} = {$basketStats.price_of_each[$id]/$curs_evro_smarty|round:2}
{/foreach}</span>
{/if}


                {literal}
                    <script type="text/javascript">
                        $("#order").validationEngine();

                        $("#order").submit(function(e){
                            if ($('input:radio[name="paytype"]:checked').val() == 2) {
                                if (document.getElementById('email').value==""){
                                    var email_new = "";
                                } else {
                                    var email_new = "E-mail: "+document.getElementById('email').value+"\n";
                                }

                                if (document.getElementById('oplata_chast_vmeste_deshevle') == null) {
                                    var vmeste_deshevle="";
                                } else {
                                var vmeste_deshevle = "Нужно исправить цены (по акции Вместе Дешевле):\n"+document.getElementById('oplata_chast_vmeste_deshevle').innerHTML+"\n\nНужно исправить сумму 'Взять оплату' на: {/literal}{$basketStats.summ|round}{literal}";
                                }

                                document.getElementById('email').value ="";

                                if ($("#order").validationEngine('validate')) {
                                    var _products = [
                {/literal}
                                    {foreach from=$data.Basket.items item=item key=id}
                                        {literal}{ {/literal}
                                        name: "{$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}",
                                        price: "{$basketStats.price_of_each[$id]|round}",
                                        count: "{$basketStats.amount_of_each_item[$id]}",
                                        {literal}}, {/literal}
                                    {/foreach}
                {literal}
                                    ];
                                    var data = {
                                        name: $("input#name").val(),
                                        email: document.getElementById('email').value,
                                        phone: $("input#phone").val(),
                                        address:  document.getElementById('adresss').value,
                                        type: $('input[name="bank_name"]:checked').val(),
                                        period: parseInt($(".credit_period").val()),
                                        product: _products,
                                        summ: {/literal}{$basketStats.summ|round}{literal},
                                        comment: "Оформлен кредит\n"+email_new+"\n"+vmeste_deshevle,
                                        id_currency: $("#currencies_select").val(),
                                    }

                                    $.post("/basket/privatpayparts", data, function(r){
                                        if (r.status) {
                                            location.href = r.url
                                        }
                                        console.log(r);
                                    }, "json");
                                } else {
                                    console.log('Validatiion failed.');
                                }
                                return false;
                            }
                        });
                    </script>
                {/literal}


                <p class="confidentiality">Отправляя заказ, Вы соглашаетесь с <a href="/page/confidentiality">политикой 590</a> относительно защиты персональных данных покупателя.</p>


                <div style="display: none;" class="summa_za_tovar"></div>
                <div style="display: none;" id="summ_cupon">{$data.bonus->amount}</div>

                {literal}
                <script type="text/javascript">
$(document).ready(function() {
							function get_id_region(){
								var sel = document.getElementById("region_id_for_delivery");
								var txt = sel.options[sel.selectedIndex].text;
								return txt;
							}
							setInterval(get_id_region, 500);

                			function get_price_sum() {
                	    $(".summa_za_tovar").html($('#real_price_for_pay').text());
                	    }
                	    setInterval(get_price_sum, 500);

                	    function show_delivery_information() {
                            if (document.getElementById('summ_cupon').innerHTML>0) {
                                var cupon_summ = document.getElementsByClassName('summa_za_tovar')[0].innerHTML - document.getElementById('summ_cupon').innerHTML;
                                var testElements = document.getElementsByClassName('summa_za_tovar')[0].innerHTML + ' - ' + document.getElementById('summ_cupon').innerHTML + ' = ' + cupon_summ;
                            } else {
                                var testElements = document.getElementsByClassName('summa_za_tovar')[0].innerHTML;
                            }

                	    	document.getElementById('summ_za_vse').innerHTML = "Итого: "+testElements+"{/literal} {$smarty.session.Currency.title} {literal}";

                	    	if(get_id_region()=="Киев" && document.getElementsByName("delivery_name")[1].checked){
                	    	if (testElements<2000){
                	    	    document.getElementById('text_dostavka_info').innerHTML = '<b>Доставка по Киеву 40 грн.</b>';
                                document.getElementById('img_dostavka').style.display = "";
                	    	    document.getElementById('how_economy').style = "margin-top:40px;font-size: 14px !important;color: #0d8abc !important;";
                	    	} else {
                	    		document.getElementById('text_dostavka_info').innerHTML = '<b>Доставка по Киеву бесплатно!</b>';
                	    		document.getElementById('img_dostavka').style.display = "";
                                document.getElementById('how_economy').style = "margin-top:40px;font-size: 14px !important;color: #0d8abc !important;";
                	    	}} else {
                	    		document.getElementById('text_dostavka_info').innerHTML = '';
                	    		document.getElementById('img_dostavka').style.display = "none";
                                document.getElementById('how_economy').style = "margin-top:-5px;font-size: 14px !important;color: #0d8abc !important;";
                	    	}

                	    	if (get_id_region()!="Киев" && document.getElementsByName("delivery_name")[1].checked){
                	    		document.getElementById('text_dostavka_info').innerHTML = '<b>Детали доставки у оператора</b>';
                	    		document.getElementById('img_dostavka').style.display = "";
                                document.getElementById('how_economy').style = "margin-top:40px;font-size: 14px !important;color: #0d8abc !important;";
                	    	}
                	}
                	setInterval(show_delivery_information, 1000);
});
                </script>
                {/literal}


                {if !$login}
                    <div class="basket-bonus alert">
                        <p class="basket-bonus__head">
                            <span class="red">Хотите получить бонусную карту {if $bonusAmount > 0}и {$bonusAmount|round} грн. на бонусный счет{/if}?</span>
                        </p>
                        <img src="{$url.img}/bp/bp-cards-small.png" alt="cards-small" />
                        <ul>
                            <li><label for="question__one"><input {if $basketStats.summ < 1000} disabled="disabled"{/if}type="radio" value="1" name="bonus_card" id="question__one" /> {if $basketStats.summ < 2500}<span rel="tooltip" title="Для получения бонусной карты сумма покупки должна быть больше 1000грн">Да</span>{else}Да{/if}</label></li>
                            <li><label for="question__two"><input type="radio" value="0" name="bonus_card" id="question__two" /> Нет</label></li>
                        </ul>
                        <div class="clear"></div>
                        <p><a href="/page/bonus" target="_blank">Информация о бонусной карте</a></p>
                    </div>
                {elseif $user_type == 'card' }
                    {if $user->bonus_amount > 0 }
                        <div class="basket-bonus alert">
                            <p class="basket-bonus__head">
                                Использовать бонусы <br />(У Вас <strong>{if $user->bonus_amount}{$user->bonus_amount}{else}0 бонусов{/if}</strong>)
                            </p>
                            <img src="{$url.img}/bp/bp-cards-small.png" alt="cards-small" />
                            <input type="text" placeholder="Введите количество бонусов" id="bonus_used" name="bonus_used" class="validate[custom[integer],max[{if $user->bonus_amount > $basketStats.summ}{php}echo $this->basketStats.summ+$this->basketStats['delivery'];{/php}{else}{$user->bonus_amount}{/if}]]" />
                            <p class="bp-question__terms"><a href="/page/bonus">Информация о бонусной карте</a></p>
                        </div>
                    {else}
                        <div class="basket-bonus alert">
                            <p class="basket-bonus__head">Вы участник программы лояльности 590.</p>
                            На вашем бонусном счете 0 бонусов.
                        </div>
                    {/if}
                {/if}
            </form>
        </div>

        {if $manager}
            {literal}
                <!-- Google Code for &#1052;&#1086;&#1088;&#1086;&#1078;&#1077;&#1085;&#1080;&#1094;&#1072; Conversion Page -->
                <script type="text/javascript">
                    /* <![CDATA[ */
                    var google_conversion_id = 846411199;
                    var google_conversion_language = "uk";
                    var google_conversion_format = "1";
                    var google_conversion_color = "ffffff";
                    var google_conversion_label = "KhGhCNTVtlEQ7Nmx5gM";
                    var google_conversion_value = 1;
                    /* ]]> */
                </script>
                <script type="text/javascript" src="https://www.googleadservices.com/pagead/conversion.js">
                </script>
                <noscript>
                    <div style="display:inline;">
                        <img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1020030188/?value=1&amp;label=KhGhCNTVtlEQ7Nmx5gM&amp;guid=ON&amp;script=0"/>
                    </div>
                </noscript>
            {/literal}
        {/if}
    </div>

{else}
<center><a href="https://590.ua/"><img src="https://590.ua/assets/media/emptybasket.png" style="width: 80%;"></a></center>
{/if}