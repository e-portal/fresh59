{include file=_header.tpl}

  	{if $login}

        <nav class="breadcumbs">
            <a href="/">Главная</a>
            <i>&rarr;</i>
            <span>Личный кабинет</span>
        </nav>
        <h1>Личный кабинет</h1>
        {if $user.type=='vip'}
        <div class="data-user">
            <p>Здравствуйте!</p>
            <p>Вы вошли как VIP клиент.</p>
            <p>Вам предоставляются максимальные скидки на все товары</p>
        </div>
        {else}
        <div class="data-user">
            <p>Здравствуйте!</p>

            <p><a href="/auth/profile">Изменить персональную информацию</a></p>
            {if $user.type=='card'}
            <div class="data-user-bonus alert alert-info">
                <img src="/images/bp/bp-ca<span class='strong'>На бонусном счету</span>tyle="float:lef<span class='strong'>На бонусном счету</span>         	<strong>На бонусном счету</strong> <span class="data-user-bonus__count">{if $user.bonus_amount > 0}{$user.bonus_amount}{else} 0 {/if} бонусов</span>
                <p class="bp-question__terms" style="clear:both;"><a href="/page/bonus">Информация о бонусной карте</a></p>
            </div>
            {/if}
        </div>
        <div class="old-orders">
            <h2>Мои заказы</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>Номер заказа</th>
                        <th>Время заказа</th>
                        <th>Состояние</th>
                   		<th>Сумма заказа, {$smarty.session.Currency.title}</th>
                    </tr>
                </thead>
                <tbody>
                  	{foreach from=$orders item=order name=orders}
                    <tr>
                        <td><a href="/auth/order/id/{$order.id}">{$order.id}</a></td>
                        <td>{$order.date|date_format:"%d.%m.%Y"} <i>{$order.time}</i></td>
                        <td>{if $order.status=='new'}Новый{elseif $order.status=='confirmed'}Принятый{elseif $order.status=='done'}Отгружен{elseif $order.status=='failed'}Отмененный{/if}</td>
                        <td>{$order.summ_uah} грн.</td>
                    </tr>
                    {/foreach}
                    <tr>
                        <td colspan="6"><a href="/auth/orders" class="history-order">История заказов</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        {/if}

    {else}
 
        <form action="/auth" method="post" class="form-horizontal" id="login-form">
            <legend>Авторизация</legend>
            <div class="control-group">
                <label class="control-label" for="input_login">Логин</label>
                <div class="controls">
                    <input class="validate[required]" type="text" name="login" id="input_login" placeholder="Логин">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input_password">Пароль</label>
                <div class="controls">
                    <input class="validate[required]" type="password" name="pass" id="input_password" placeholder="Пароль">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn">Войти</button>
                </div>
            </div>
        </form>

	{/if}

{include file=_footer.tpl}