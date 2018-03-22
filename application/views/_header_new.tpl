{include file=_head_new.tpl}

<!-- Navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src="/images/new/logo_nav.png"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <!-- <li class="active"><a href="#">Главная</a></li> -->
                <li><a href="/page/address">Контакты</a></li>
                <li><a href="/page/payment">Оплата</a></li>
                <li><a href="/page/delivery">Доставка</a></li>
                <li><a href="/page/guarantee">Гарантия</a></li>
                <li><a href="/faq">Вопрос</a></li>
                <li><a href="/news">Акции</a></li>
                <li><a href="/articles">Статьи</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!-- Cart -->
                <li>
                    <div id="nav_cart" class="btn-group btn-block">
                        <button data-toggle="dropdown" data-loading-text="Загрузка..." class="btn btn-link btn-block dropdown-toggle">
                            <i class="fa fa-shopping-cart"></i>
                            <span class="hiden-xs hiden-sm hiden-md">Корзина ({$basketStats.amount})</span>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <table class="table table-striped">
                                    <tbody>
                                        {foreach from=$data.Basket.items item=item key=id}
                                            <tr>
                                                <td class="text-center">
                                                    <a href=""><img src="/images/catalog/{$data.itemsInfo[$id].imgid}_s.{$data.itemsInfo[$id].imgext}"></a>
                                                </td>
                                                <td class="text-left">
                                                    <a href="/catalog/item/{$id}">
                                                        {$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}
                                                    </a>
                                                </td>
                                                <td class="text-left">
                                                    x{$item.amount}
                                                </td>
                                                <td class="text-left">
                                                    {price $item.price $item.id_currency $item.amount}
                                                </td>
                                                <td class="text-center">
                                                    <button class="btn btn-danger btn-xs" title="Удалить">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                                <a class="btn btn-success nav_cart_submit" href="/basket">Оформить заказ</a>
                            </li>
                        </ul>
                    </div>
                </li><!-- Cart End -->

                <!-- Account -->
                <li>
                    <div id="account" class="btn-group btn-block">
                        <button data-toggle="dropdown" data-loading-text="Загрузка..." class="btn btn-link btn-block dropdown-toggle">
                            <i class="fa fa-user"></i>
                            <span class="hiden-xs hiden-sm hiden-md">{if !$user}Аккаунт{else}{$user.name}{/if}</span>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                {if !$user}
                                <form action="/account/auth" method="post">
                                    <div class="form-group">
                                        <label for="phone">Номер телефона</label>
                                        <input type="phone" name="phone" class="form-control" id="phone" placeholder="Ваш номер телефона">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Пароль</label>
                                        <input type="password" name="password" class="form-control" id="password" placeholder="Ваш пароль">
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="Войти">
                                </form>
                                <br><a class="btn btn-success" href="/account/register">Регистрация</a>
                                <div id="account_social">
                                    <div class="text-center">
                                        <hr><p class="text-center text-muted">590.ua в социальных сетях</p>
                                        <a href="https://facebook.com/590.ua"><img src="/images/new/logo_fb.png"></a>
                                        <a href="https://twitter.com/590Ua"><img src="/images/new/logo_tw.png"></a>
                                    </div>
                                </div>
                                {else}
                                	<p class="text-center">Добро пожаловать, {$user.name}</p>
                                	<a class="btn btn-primary" href="/account/compare">Сравнение</a><br>
                                	<a class="btn btn-primary" href="/account/whishlist">Желания</a><br>
                                    <a class="btn btn-warning" href="/account/logout">Выйти</a><br>
                                {/if}
                            </li>
                        </ul>
                    </div>
                </li><!-- Account End -->

            </ul>
        </div>
    </div>
</nav><!-- Navbar End -->