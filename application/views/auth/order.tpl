{include file=_header.tpl}

  	{if $login}
            <nav class="breadcumbs">
                <a href="/">Главная</a>
                <i>&rarr;</i>
                <a href="/auth">Личный кабинет</a>
                <i>&rarr;</i>
                <a href="/auth/orders">История заказов</a>
                <i>&rarr;</i>
                <span>Информация о заказе</span>
            </nav>
            <div class="data-user">
            	<h1>Заказ №{$order.id}</h1>
            	<p><span class='strong'>Статус:</span> {if $order.status=='new'}Новый{elseif $order.status=='confirmed'}Принятый{elseif $order.status=='done'}Отгружен{elseif $order.status=='failed'}Отмененный{/if}</p>
            </div>
            <h2>Заказанные товары</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>Заказанные товары</th>
                        <th>Количество</th>
                        <th>Сумма заказа</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$orderItems item=item}
                    <tr>
                        <td><a href="/catalog/item/{$item.id}">{$item.brand} {$item.name}</a></td>
                        <td>{$item.quantity}</td>
                        <td>{$item.price_uah} грн.</td>
                    </tr>
                    {/foreach}

                    <tr>
                        <td colspan="6"><a href="/auth/orders" class="history-order">История заказов</a></td>
                    </tr>
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