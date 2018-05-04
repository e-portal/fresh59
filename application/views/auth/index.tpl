{include file='layouts/_header.tpl'}


<div class="container">
    <div class="bread-crumbs wrap breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Личный кабинет</span>
            <meta itemprop="position" content="2">
        </div>

    </div>

    {if $login}
        <div class="liner cent wrap"><span>Личный кабинет</span></div>
        <div class="tabs-lk wrap">
            <div class="naccs">
                <div class="grid">
                    <div class="gc gc--1-of-3">
                        <div class="tabs-menu">
                            <div class="active"><span>Персональная информация</span></div>
                            <div><span>История покупок</span></div>
                            <div><span>Список желаний</span></div>
                            <div><span>Ваши отзывы</span></div>
                            <div><span>Вопросы и ответы</span></div>
                            <div><span>Просмотренные товары</span></div>
                            <div><span>Рассылки</span></div>
                            <div><span>Участие в акциях</span></div>
                        </div>
                    </div>
                    <div class="gc gc--2-of-3">
                        <ul class="nacc">
                            <li class="active">
                                <div>
                                    <p class="tabs-header">Персональная информация</p>
                                    <div class="tabs-container">

                                        <div class="change-pass">
                                            <p class="tabs-enter">измененить пароль</p>
                                            <form method="post" id="change-pass">
                                                <div class="popup-block">
                                                    <p>Старый пароль</p>
                                                    <input type="password" name="name" id="pass-old"/>
                                                    <p>Новый пароль</p>
                                                    <input type="password" name="name" id="pass-new"/>
                                                    <p>Новый пороль еще раз</p>
                                                    <input type="password" name="name" id="repeat-pass-new"/>
                                                    <span>
                                                        (Пароль должен быть не менее 6 символов,
                                                        содержать цыфры и большие буквы
                                                        и не должен совпадать с именем или ел. почтой)
                                                    </span>
                                                    <input class="button" type="submit" value="Сохранить"/>
                                                    <span class="cancel bluee">Отменить</span>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="change-data">
                                            <p class="tabs-enter">изменение личных данных</p>
                                            <form method="post" id="change-data">
                                                <div class="popup-block">
                                                    <p>ИМЯ *</p>
                                                    <input type="password" name="name-last" id="name-last" required/>
                                                    <p>ФАМИЛИЯ *</p>
                                                    <input type="password" name="name-first" id="name-first required"/>
                                                    <p>Отчество</p>
                                                    <input type="password" name="name-second" id="name-second"/>
                                                    <p>телефон * </p>
                                                    <input type="text" name="phone" class="numb" required/>
                                                    <p>E-mail *</p>
                                                    <input type="email" name="mail" id="email" required/>
                                                    <div class="bth-date">
                                                        <span>Дата рождения:</span>
                                                        <div>
                                                            <p>ДД *</p>
                                                            <select id="bth-day" name="select" required>
                                                                <option value=""></option>
                                                                <option value="ru">1</option>
                                                                <option value="ua">2</option>
                                                                <option value="en">3</option>
                                                            </select>
                                                        </div>
                                                        <div>
                                                            <p>ММ *</p>
                                                            <select id="bth-month" name="select" required>
                                                                <option value=""></option>
                                                                <option value="ru">Январь</option>
                                                                <option value="ua">Февраль</option>
                                                                <option value="en">Март</option>
                                                            </select>
                                                        </div>
                                                        <div>
                                                            <p>ГГГГ *</p>
                                                            <select id="bth-year" name="select" required>
                                                                <option value=""></option>
                                                                <option value="2000">2000</option>
                                                                <option value="2001">2001</option>
                                                                <option value="2002">2002</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-address">

                                                        <span>Адрес доставки:</span>

                                                        <p>ГОРОД *</p>
                                                        <select id="city" name="select" required>
                                                            <option value=""></option>
                                                            {foreach from=$regions item=region}
                                                                <option value="region_{$region.id}">{$region.name}</option>
                                                            {/foreach}
                                                        </select>
                                                        <p>Улица *</p>
                                                        <input type="text" name="name" id="street" required/>
                                                        <div>
                                                            <p>Дом *</p>
                                                            <input type="text" name="name" id="house" required/>
                                                        </div>
                                                        <div>
                                                            <p>Кв.</p>
                                                            <input type="text" name="number" id="flat"/>
                                                        </div>
                                                    </div>
                                                    <p>ЯЗЫК</p>
                                                    <select id="language" name="select">
                                                        <option value=""></option>
                                                        <option value="ru">Русский</option>
                                                        <option value="ua">Українська</option>
                                                        <option value="en">English</option>
                                                    </select>
                                                    <p>ПОЛ</p>
                                                    <select id="sex" name="select">
                                                        <option value=""></option>
                                                        <option value="female">Женский</option>
                                                        <option value="male">Мужской</option>
                                                    </select>


                                                    <input class="button" type="submit" value="Сохранить"/>
                                                    <span class="cancel bluee">Отменить</span>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="tabs-main">
                                            <p class="tabs-enter"><b>{$login},</b> Добро пожаловать в личный кабинет!
                                            </p>
                                            <div class="tabs-content">
                                                <div class="tabs-block">
                                                    <p>Ваши персональные данные</p>
                                                    <table class="tabs-table">
                                                        <tr>
                                                            <td>фио:</td>
                                                            <td>Иванова Анна Петровна</td>
                                                        </tr>
                                                        <tr>
                                                            <td>телефон:</td>
                                                            <td>+3 8(050) 456-78-90
                                                                <div class="confirm">Подтвердить</div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>e-mail:</td>
                                                            <td>ivanova@ukr.net</td>
                                                        </tr>
                                                        <tr>
                                                            <td>адрес для доставки:</td>
                                                            <td>г. Киев, ул. Саксмаганского 33/35, кв. 279</td>
                                                        </tr>
                                                        <tr>
                                                            <td>язык для общения:</td>
                                                            <td>Украинский</td>
                                                        </tr>
                                                        <tr>
                                                            <td>дата рождения:</td>
                                                            <td>01.01.2001</td>
                                                        </tr>
                                                        <tr>
                                                            <td>пол:</td>
                                                            <td>Женский</td>
                                                        </tr>

                                                    </table>
                                                </div>
                                                <div class="tabs-block">
                                                    <div class="card">
                                                        <div class="card-code">34526012895871</div>
                                                        <img src="/assets/img/logo-black.png" alt="logo"></div>
                                                    <div class="card">
                                                        <p>Доступные бонусы:<span class="card-bonus">0.00</span></p>
                                                        <p>Всего бонусов:<span class="card-bonus">32.00</span></p>
                                                        <div class="card-update"> Обновить</div>
                                                    </div>
                                                    <div class="card-help">
                                                        <span>Как потратить накопленные бонусы?</span>
                                                        <span>Как происходит накопление бонусов?</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="tabs-option tabs-data">Редактировать данные</a>
                                            <a class="tabs-option tabs-pass">Сменить пароль</a>
                                            <div class="exit-button">Выход</div>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li>
                                {include file='auth/purchase-history.tpl'}
                            </li>
                            <li>
                                {include file='auth/wish-list.tpl'}
                            </li>
                            <li>
                                {include file='auth/reviews.tpl'}
                            </li>
                            <li>
                                {include file='auth/faq.tpl'}
                            </li>
                            <li>
                                {include file='auth/viewed-items.tpl'}
                            </li>
                            <li>
                                {include file='auth/dispatches.tpl'}
                            </li>
                            <li>
                                {include file='auth/actions.tpl'}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        {*==========================================*}
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
                    <input class="validate[required]" type="password" name="pass" id="input_password"
                           placeholder="Пароль">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn">Войти</button>
                </div>
            </div>
        </form>
    {/if}

    {include file='layouts/orig.tpl'}

</div>


<div class="doww"><img src="/assets/img/verh.png" alt=""></div>

{include file='layouts/_footer.tpl'}