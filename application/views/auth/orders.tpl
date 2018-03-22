{include file=_header.tpl}

  	{if $login}

            <nav class="breadcumbs">
                <a href="/">Главная</a>
                <i>&rarr;</i>
                <a href="/auth">Личный кабинет</a>
                <i>&rarr;</i>
                <span>История заказов</span>
            </nav>
            <h1>История заказов</h1>
            <table class="table table-hover">
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
                        <td>{$order.date|date_format:"%d.%m.%Y"} &nbsp;&nbsp;[{$order.time}]</td>
                        <td>{if $order.status=='new'}Новый{elseif $order.status=='confirmed'}Принятый{elseif $order.status=='done'}Отгружен{elseif $order.status=='failed'}Отмененный{/if}</td>
                        <td>{price $order.summ} {$smarty.session.Currency.title}</td>
                    </tr>
                    {/foreach}
                </tbody>
            </table>


    
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