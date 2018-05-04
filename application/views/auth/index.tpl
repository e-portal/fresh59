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
                                                <span>(Пароль должен быть не менее 6 символов, содержать цыфры и большие буквы и не должен совпадать с именем или ел. почтой)</span>
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
                                                            <option value="ru">2000</option>
                                                            <option value="ua">2001</option>
                                                            <option value="en">2002</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-address">

                                                    <span>Адрес доставки:</span>

                                                    <p>ГОРОД *</p>
                                                    <select id="city" name="select" required>
                                                        <option value=""></option>
                                                        <option value="kyiv">Киев</option>
                                                        <option value="kharkov">Харьков</option>
                                                        <option value="odesa">Одесса</option>
                                                    </select>
                                                    <p>Улица *</p>
                                                    <input type="text" name="name" id="street" required/>
                                                    <div>
                                                        <p>Дом *</p>
                                                        <input type="text" name="name" id="house" required/>
                                                    </div>
                                                    <div>
                                                        <p>Кв.</p>
                                                        <input type="text" name="name" id="flat"/>
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
                                        <p class="tabs-enter"><b>Анна,</b> Добро пожаловать в личный кабинет!</p>
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
                            <div>
                                <p class="tabs-header">История покупок</p>
                                <div class="tabs-container">

                                    <!--EMPTY HISTORY-->
                                    <!--<div class="tabs-container tabs-empty">-->

                                    <!--<div><p>У вас пока нет оформленных заказов </p></div>-->
                                    <!--END EMPTY HISTORY-->


                                    <div class="lists history">
                                        <div class="tabs-brand">
                                            <div class="opti">
                                                <div class="tabs-legg">
                                                    <span class="text-pp">№</span>
                                                    <span>122312355 </span><i></i>
                                                    <span class="his-3">2 товара на сумму(грн):  20 000</span>
                                                    <span class="his-4">22.01.2018</span>
                                                    <span class="his-5">16:30 </span>
                                                    <span class="his-6">Выполненный</span>
                                                </div>
                                                <div>
                                                    <div class="tabs-more"><p> Подробная информация</p>
                                                        <table class="tabs-table">
                                                            <tr>
                                                                <td>Способ оплаты:</td>
                                                                <td>Наличные</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Способ доставки:</td>
                                                                <td>Курьером по городу</td>
                                                            </tr>
                                                            <tr>
                                                                <td>фио:</td>
                                                                <td>Иванова Анна Петровна</td>
                                                            </tr>
                                                            <tr>
                                                                <td>телефон:</td>
                                                                <td>+3 8(050) 456-78-90</td>
                                                            </tr>
                                                            <tr>
                                                                <td>адрес для доставки:</td>
                                                                <td>г. Киев, ул. Саксмаганского 33/35, кв. 279</td>
                                                            </tr>
                                                            <tr>
                                                                <td>e-mail:</td>
                                                                <td>ivanova@ukr.net</td>
                                                            </tr>

                                                        </table>
                                                    </div>
                                                    <div class="tabs-review-lk">
                                                        <div><img src="/assets/img/senn2.png" alt="aa"></div>
                                                        <div>
                                                            <p>Стиральная машина
                                                                ELECTROLUX ELECTRO
                                                                24 LT SL</p>
                                                        </div>
                                                        <div>1 шт</div>
                                                        <div>12 500 грн</div>
                                                        <div>
                                                            <a class="bask" href="javascript:void(0)"
                                                               tabindex="-1"><span>Оставить отзыв</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="tabs-review-lk">
                                                        <div><img src="/assets/img/ityy4.png" alt="aa"></div>
                                                        <div>
                                                            <p>Миксер ELECTROLUX ELECTRO 24 LT SL</p>
                                                        </div>
                                                        <div>1 шт</div>
                                                        <div>7 500 грн</div>
                                                        <div>
                                                            <a class="bask" href="javascript:void(0)"
                                                               tabindex="-1"><span>Оставить отзыв</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="tabs-brand">
                                            <div class="opti">
                                                <div class="tabs-legg">
                                                    <span class="text-pp">№</span>
                                                    <span>122312355 </span><i></i>
                                                    <span class="his-3">2 товара на сумму(грн):  20 000</span>
                                                    <span class="his-4">22.01.2018</span>
                                                    <span class="his-5">16:30 </span>
                                                    <span class="his-6">Выполненный</span>
                                                </div>
                                                <div>
                                                    <div class="tabs-more"><p> Подробная информация</p>
                                                        <table class="tabs-table">
                                                            <tr>
                                                                <td>Способ оплаты:</td>
                                                                <td>Наличные</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Способ доставки:</td>
                                                                <td>Курьером по городу</td>
                                                            </tr>
                                                            <tr>
                                                                <td>фио:</td>
                                                                <td>Иванова Анна Петровна</td>
                                                            </tr>
                                                            <tr>
                                                                <td>телефон:</td>
                                                                <td>+3 8(050) 456-78-90</td>
                                                            </tr>
                                                            <tr>
                                                                <td>адрес для доставки:</td>
                                                                <td>г. Киев, ул. Саксмаганского 33/35, кв. 279</td>
                                                            </tr>
                                                            <tr>
                                                                <td>e-mail:</td>
                                                                <td>ivanova@ukr.net</td>
                                                            </tr>

                                                        </table>
                                                    </div>
                                                    <div class="tabs-review-lk">
                                                        <div><img src="/assets/img/senn2.png" alt="aa"></div>
                                                        <div>
                                                            <p>Стиральная машина
                                                                ELECTROLUX ELECTRO
                                                                24 LT SL</p>
                                                        </div>
                                                        <div>1 шт</div>
                                                        <div>12 500 грн</div>
                                                        <div>
                                                            <a class="bask" href="javascript:void(0)"
                                                               tabindex="-1"><span>Оставить отзыв</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="tabs-review-lk">
                                                        <div><img src="/assets/img/ityy4.png" alt="aa"></div>
                                                        <div>
                                                            <p>Миксер ELECTROLUX ELECTRO 24 LT SL</p>
                                                        </div>
                                                        <div>1 шт</div>
                                                        <div>7 500 грн</div>
                                                        <div>
                                                            <a class="bask" href="javascript:void(0)"
                                                               tabindex="-1"><span>Оставить отзыв</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p class="tabs-header">Список желаний</p>
                                <div class="tabs-container">
                                    <div class="create-list">Создать новый список</div>
                                    <div class="lists">
                                        <div class="brand">
                                            <div></div>
                                            <div class="opti">
                                                <div class="legg"><span>стиральные машины</span><i></i>
                                                    <!--<img class="first-img" src="/assets/img/rename.png" alt="">-->
                                                    <!--<img src="/assets/img/item-close.png" alt="">-->
                                                </div>
                                                <img class="first-img" src="/assets/img/rename.png" alt="">
                                                <img class="legg-close" src="/assets/img/item-close.png" alt="">

                                                <div class="forms under-senn">
                                                    <div class="item-senn ">
                                                        <div class="close-item"><img src="/assets/img/item-close.png"
                                                                                     alt="">
                                                        </div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Стиральная машина Electro ELECTROLUX</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn2.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>

                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee3.png" alt="">
                                                                    <p>от <span>1200</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee2.png" alt="">
                                                                    <p>Гарантия <span>12</span> мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee4.png" alt="">
                                                                    <p>Лучша <span>цена</span></p>
                                                                </div>
                                                            </div>
                                                            <object type="lol/wut">
                                                                <a href="/" class="otzv" tabindex="-1">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/patr.png" alt="">
                                                                    </div>
                                                                    <div class="right-otzv">
                                                                        <span>10 отзывов</span>
                                                                    </div>
                                                                </a></object>

                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="hovv">
                                                        </div>
                                                    </div>
                                                    <div class="item-senn">
                                                        <div class="close-item"><img src="/assets/img/item-close.png"
                                                                                     alt="">
                                                        </div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Стиральная машина Electro ELECTROLUX</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn2.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>

                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee3.png" alt="">
                                                                    <p>от <span>1200</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee2.png" alt="">
                                                                    <p>Гарантия <span>12</span> мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee4.png" alt="">
                                                                    <p>Лучша <span>цена</span></p>
                                                                </div>
                                                            </div>
                                                            <object type="lol/wut">
                                                                <a href="/" class="otzv" tabindex="-1">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/patr.png" alt="">
                                                                    </div>
                                                                    <div class="right-otzv">
                                                                        <span>10 отзывов</span>
                                                                    </div>
                                                                </a></object>

                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="hovv">
                                                        </div>
                                                    </div>
                                                    <div class="item-senn">
                                                        <div class="close-item"><img src="/assets/img/item-close.png"
                                                                                     alt="">
                                                        </div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Стиральная машина Electro ELECTROLUX</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn2.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>

                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee3.png" alt="">
                                                                    <p>от <span>1200</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee2.png" alt="">
                                                                    <p>Гарантия <span>12</span> мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee4.png" alt="">
                                                                    <p>Лучша <span>цена</span></p>
                                                                </div>


                                                            </div>
                                                            <object type="lol/wut">
                                                                <a href="/" class="otzv" tabindex="-1">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/patr.png" alt="">
                                                                    </div>
                                                                    <div class="right-otzv">
                                                                        <span>10 отзывов</span>
                                                                    </div>
                                                                </a></object>

                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="hovv">
                                                        </div>
                                                    </div>
                                                    <div class="item-senn empty">
                                                        <div class="text-empty empty-half"></div>
                                                        <div class="text-empty"></div>
                                                        <div class="text-empty"></div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="centr">
                                                                <div class="itee-imgg">
                                                                    <img src="/assets/img/empty.png" alt="">
                                                                </div>
                                                            </div>
                                                             <object type="lol/wut">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/empty-stars.png" alt="">
                                                                    </div>
                                                             </object>
                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <div class="text-empty empty-half"></div>
                                                                    <div class="text-empty empty-half"></div>
                                                                </div>
                                                                <div class="right-bakk">
                                                                     <div class="bask acty empty-but"
                                                                          tabindex="-1"><span></span></div>
                                                                </div>
                                                            </div>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="brand">
                                            <div></div>
                                            <div class="opti">
                                                <div class="legg"><span>микроволновые печи</span><i></i></div>
                                                <img class="first-img" src="/assets/img/rename.png" alt="">
                                                <img class="legg-close" src="/assets/img/item-close.png" alt="">
                                                <div class="forms under-senn">
                                                    <div class="item-senn">
                                                        <div class="close-item"><img src="/assets/img/item-close.png"
                                                                                     alt="">
                                                        </div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Микроволновая печь GORENJE MO 6240</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn0.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                            </div>

                                                            <a href="/" class="otzv" tabindex="-1">
                                                                <div class="left-otzv">
                                                                    <img src="/assets/img/patr.png" alt="">
                                                                </div>
                                                                <div class="right-otzv">
                                                                    <span>10 отзывов</span>
                                                                </div>
                                                            </a>
                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="hovv">

                                                        </div>
                                                    </div>
                                                    <div class="item-senn">
                                                        <div class="close-item"><img src="/assets/img/item-close.png"
                                                                                     alt="">
                                                        </div>

                                                        <span class="sench" href="/" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Микроволновая печь GORENJE MO 6240</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn0.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                            </div>

                                                            <a href="/" class="otzv" tabindex="-1">
                                                                <div class="left-otzv">
                                                                    <img src="/assets/img/patr.png" alt="">
                                                                </div>
                                                                <div class="right-otzv">
                                                                    <span>10 отзывов</span>
                                                                </div>
                                                            </a>
                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                                        <div class="hovv">

                                                        </div>
                                                    </div>
                                                    <div class="item-senn empty">
                                                        <div class="text-empty empty-half"></div>
                                                        <div class="text-empty"></div>
                                                        <div class="text-empty"></div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="centr">
                                                                <div class="itee-imgg">
                                                                    <img src="/assets/img/empty.png" alt="">
                                                                </div>
                                                            </div>
                                                             <object type="lol/wut">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/empty-stars.png" alt="">
                                                                    </div>
                                                             </object>
                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <div class="text-empty empty-half"></div>
                                                                    <div class="text-empty empty-half"></div>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <div class="bask acty empty-but"
                                                                         tabindex="-1"><span></span></div>
                                                                </div>
                                                            </div>

                                                        </span>
                                                    </div>
                                                    <div class="item-senn empty">
                                                        <div class="text-empty empty-half"></div>
                                                        <div class="text-empty"></div>
                                                        <div class="text-empty"></div>
                                                        <span class="sench" tabindex="-1">
                                                            <div class="centr">
                                                                <div class="itee-imgg">
                                                                    <img src="/assets/img/empty.png" alt="">
                                                                </div>
                                                            </div>
                                                             <object type="lol/wut">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/empty-stars.png" alt="">
                                                                    </div>
                                                             </object>
                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <div class="text-empty empty-half"></div>
                                                                    <div class="text-empty empty-half"></div>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <div class="bask acty empty-but"
                                                                         tabindex="-1"><span></span></div>
                                                                </div>
                                                            </div>

                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p class="tabs-header">ваши отзывы</p>
                                <div class="tabs-container">
                                    <div class="tabs-review-lk">
                                        <div><img src="/assets/img/senn2.png" alt="aa"></div>
                                        <div>
                                            <p>Стиральная машина ELECTROLUX ELECTRO 24 LT SL</p>
                                            <div class="left-otzv">
                                                <img src="/assets/img/patr.png" alt="">
                                            </div>
                                            <span>10.02.2018</span>

                                        </div>
                                        <div>
                                            <p>Анна иванова</p>
                                            <span>Узкая и компактная, стирает хорошо и негромко отжимает,
                                                пользуемся месяц, покупкой очень довольны!
                                                590 спасибо за оперативную доставку.
                                            </span>
                                        </div>
                                        <div>
                                            <a class="bask" href="javascript:void(0)" tabindex="-1"><span>Открыть</span></a>
                                        </div>
                                    </div>
                                    <div class="tabs-review-lk">
                                        <div><img src="/assets/img/ityy4.png" alt="aa"></div>
                                        <div>
                                            <p>Миксер ELECTROLUX
                                                ELECTRO 24 LT SL</p>
                                            <div class="left-otzv">
                                                <img src="/assets/img/patr.png" alt="">
                                            </div>
                                            <span>10.02.2018</span>

                                        </div>
                                        <div>
                                            <p>Анна иванова</p>
                                            <span>Узкая и компактная, стирает хорошо и негромко отжимает,
                                                пользуемся месяц, покупкой очень довольны!
                                                590 спасибо за оперативную доставку.
                                            </span>
                                        </div>
                                        <div>
                                            <a class="bask" href="javascript:void(0)" tabindex="-1"><span>Открыть</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p class="tabs-header">вопросы и ответы</p>
                                <div class="tabs-container">
                                    <div class="tabs-faq">
                                        <p>обращайтесь к нам с вопросами:</p>
                                        <a href="/" class="faq-block">
                                            <div><img src="/assets/img/tabs/chat1.svg" alt="chat"></div>
                                            <span>Чат</span>
                                        </a>
                                        <a href="tel:0800456789" class="faq-block">
                                            <div><img src="/assets/img/tabs/phone.svg" alt="phone"></div>
                                            <span>0800456789</span>
                                        </a>
                                        <a href="mailto: info@590.ua" class="faq-block">
                                            <div><img src="/assets/img/tabs/mail2.svg" alt="mail"></div>
                                            <span>info@590.ua</span>
                                        </a>
                                    </div>
                                    <div class="accordion">
                                        <section class="accordion_item">
                                            <h3 class="title_block">Что такое гарантия на <br class="enter"> бытовую
                                                технику?</h3>
                                            <div class="info-accord">
                                                <div class="article">
                                                    <p>Кажется, в наших домах есть все: пылесосы, телевизоры, утюги,
                                                        стиральные машины — словом,
                                                        вся техника для дома, необходимая человеку в быту и повседневной
                                                        жизни. Тем не менее, в магазинах бытовой техники покупки
                                                        совершаются ежечасно и
                                                        ежедневно, все больше и больше наполняя наши дома незаменимыми
                                                        помощниками. Кажется, в наших домах есть все: пылесосы,
                                                        телевизоры, утюги, стиральные машины — словом,
                                                        вся техника для дома, необходимая человеку в быту и повседневной
                                                        жизни. Тем не менее, в магазинах бытовой техники покупки
                                                        совершаются ежечасно и
                                                        ежедневно, все больше и больше наполняя наши дома незаменимыми
                                                        помощниками.</p>
                                                </div>
                                            </div>
                                        </section>
                                        <section class="accordion_item">
                                            <h3 class="title_block">Кто несет ответственность за <br class="enter">
                                                качество бытовой
                                                техники?</h3>
                                            <div class="info-accord">
                                                <div class="article">
                                                    <p>Кажется, в наших домах есть все: пылесосы, телевизоры, утюги,
                                                        стиральные машины — словом,
                                                        вся техника для дома, необходимая человеку в быту и повседневной
                                                        жизни. Тем не менее, в магазинах бытовой техники покупки
                                                        совершаются ежечасно и
                                                        ежедневно, все больше и больше наполняя наши дома незаменимыми
                                                        помощниками. Кажется, в наших домах есть все: пылесосы,
                                                        телевизоры, утюги, стиральные машины — словом,
                                                        вся техника для дома, необходимая человеку в быту и повседневной
                                                        жизни. Тем не менее, в магазинах бытовой техники покупки
                                                        совершаются ежечасно и
                                                        ежедневно, все больше и больше наполняя наши дома незаменимыми
                                                        помощниками.</p>

                                                </div>
                                            </div>
                                        </section>
                                        <section class="accordion_item">
                                            <h3 class="title_block">Почему в новой стиральной <br class="enter">
                                                (посудомоечной) машине
                                                вода?</h3>
                                            <div class="info-accord">
                                                <div class="article">
                                                    <p>Кажется, в наших домах есть все: пылесосы, телевизоры, утюги,
                                                        стиральные машины — словом,
                                                        вся техника для дома, необходимая человеку в быту и повседневной
                                                        жизни. Тем не менее, в магазинах бытовой техники покупки
                                                        совершаются ежечасно и
                                                        ежедневно, все больше и больше наполняя наши дома незаменимыми
                                                        помощниками. Кажется, в наших домах есть все: пылесосы,
                                                        телевизоры, утюги, стиральные машины — словом,
                                                        вся техника для дома, необходимая человеку в быту и повседневной
                                                        жизни. Тем не менее, в магазинах бытовой техники покупки
                                                        совершаются ежечасно и
                                                        ежедневно, все больше и больше наполняя наши дома незаменимыми
                                                        помощниками.</p>
                                                </div>
                                            </div>
                                        </section>

                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p class="tabs-header">Просмотренные товары</p>
                                <div class="tabs-container">
                                    <div class="tabs-saw">
                                        <p class="active">Все<span>(4)</span></p>
                                        <p>Стиральные машины<span>(2)</span></p>
                                        <p>Чайники<span>(2)</span></p>
                                        <div>Удалить все</div>
                                    </div>
                                    <div class="forms under-senn forms-saw">
                                        <div class="item-senn ">
                                            <div class="close-item"><img src="/assets/img/item-close.png" alt="">
                                            </div>
                                            <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Стиральная машина Electro ELECTROLUX</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn2.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>

                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee3.png" alt="">
                                                                    <p>от <span>1200</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee2.png" alt="">
                                                                    <p>Гарантия <span>12</span> мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee4.png" alt="">
                                                                    <p>Лучша <span>цена</span></p>
                                                                </div>


                                                            </div>
                                                            <object type="lol/wut">
                                                                <a href="/" class="otzv" tabindex="-1">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/patr.png" alt="">
                                                                    </div>
                                                                    <div class="right-otzv">
                                                                        <span>10 отзывов</span>
                                                                    </div>
                                                                </a></object>

                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                            <div class="hovv">
                                            </div>
                                        </div>
                                        <div class="item-senn">
                                            <div class="close-item"><img src="/assets/img/item-close.png" alt="">
                                            </div>
                                            <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Стиральная машина Electro ELECTROLUX</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn2.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>

                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee3.png" alt="">
                                                                    <p>от <span>1200</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee2.png" alt="">
                                                                    <p>Гарантия <span>12</span> мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee4.png" alt="">
                                                                    <p>Лучша <span>цена</span></p>
                                                                </div>


                                                            </div>
                                                            <object type="lol/wut">
                                                                <a href="/" class="otzv" tabindex="-1">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/patr.png" alt="">
                                                                    </div>
                                                                    <div class="right-otzv">
                                                                        <span>10 отзывов</span>
                                                                    </div>
                                                                </a></object>

                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                            <div class="hovv">
                                            </div>
                                        </div>
                                        <div class="item-senn">
                                            <div class="close-item"><img src="/assets/img/item-close.png" alt="">
                                            </div>
                                            <span class="sench" tabindex="-1">
                                                            <div class="in-stock">
                                                                <h5 class="green">В наличии</h5>
                                                            </div>
                                                            <h4>Стиральная машина Electro ELECTROLUX</h4>
                                                            <div class="centr">
                                                                <div class="itee-imgg"><img src="/assets/img/senn2.png"
                                                                                            alt=""></div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee0.png" alt="">
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>

                                                                <div class="itee">
                                                                    <img src="/assets/img/izee1.png" alt="">
                                                                    <p>от <span>500</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee3.png" alt="">
                                                                    <p>от <span>1200</span> грн/мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee2.png" alt="">
                                                                    <p>Гарантия <span>12</span> мес</p>
                                                                </div>
                                                                <div class="itee">
                                                                    <img src="/assets/img/izee4.png" alt="">
                                                                    <p>Лучша <span>цена</span></p>
                                                                </div>


                                                            </div>
                                                            <object type="lol/wut">
                                                                <a href="/" class="otzv" tabindex="-1">
                                                                    <div class="left-otzv">
                                                                        <img src="/assets/img/patr.png" alt="">
                                                                    </div>
                                                                    <div class="right-otzv">
                                                                        <span>10 отзывов</span>
                                                                    </div>
                                                                </a></object>

                                                            <div class="bakk">
                                                                <div class="left-bakk">
                                                                    <p>2 500 грн</p>
                                                                    <p>Вернем: <span>500 грн</span></p>
                                                                </div>
                                                                <div class="right-bakk">
                                                                    <a class="bask acty" href="javascript:void(0)"
                                                                       tabindex="-1"><span>В корзину</span></a>
                                                                </div>
                                                            </div>
                                                        </span>
                                            <div class="hovv">
                                            </div>
                                        </div>
                                        <div class="item-senn empty">
                                            <div class="text-empty empty-half"></div>
                                            <div class="text-empty"></div>
                                            <div class="text-empty"></div>
                                            <span class="sench" tabindex="-1">
                                                <div class="centr">
                                                    <div class="itee-imgg">
                                                        <img src="/assets/img/empty.png" alt="">
                                                    </div>
                                                </div>
                                                <object type="lol/wut">
                                                    <div class="left-otzv">
                                                        <img src="/assets/img/empty-stars.png" alt="">
                                                    </div>
                                                </object>
                                                <div class="bakk">
                                                    <div class="left-bakk">
                                                        <div class="text-empty empty-half"></div>
                                                        <div class="text-empty empty-half"></div>
                                                    </div>
                                                    <div class="right-bakk">
                                                        <div class="bask acty empty-but"
                                                             tabindex="-1"><span></span></div>
                                                    </div>
                                                </div>
                                            </span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p class="tabs-header">Рассылки</p>
                                <div class="tabs-container">
                                    <div class="tabs-mailing">Виды рассылок</div>

                                    <form action="">
                                        <div class="header-mailing">
                                            <input type="checkbox" id="tabs1" name="selects" value="tabs1"
                                                   class="checkbox">
                                            <label for="tabs1">
                                                <span>Рекомендации на основе моих предыдущих покупок</span>
                                            </label>
                                            <div class="check"></div>
                                            <p class="text-mailing">
                                                Уникальные предложения, которые мы подобрали для Вас на сайте,
                                                исходя из Вашей активности. Мы очень хотим, чтобы опыт использования
                                                нашего сервиса был только позитивный!
                                            </p>
                                        </div>


                                        <div class="header-mailing">
                                            <input type="checkbox" id="tabs2" name="selects" value="tabs2"
                                                   class="checkbox">
                                            <label for="tabs2">
                                                <span>Обзоры и рекомендации к новинкам и топ товарам</span>
                                            </label>
                                            <div class="check"></div>
                                            <p class="text-mailing">
                                                Будьте в курсе последних новинок, а также узнавайте первым о
                                                спецпредложениях.
                                                Уникальные предложения, которые мы подобрали для Вас на сайте, исходя из
                                                Вашей активности.
                                                Мы очень хотим, чтобы опыт использования нашего сервиса был только
                                                позитивный!
                                                Будьте в курсе последних новинок, а также узнавайте первым о
                                                спецпредложениях.
                                            </p>
                                        </div>

                                        <div class="header-mailing">
                                            <input type="checkbox" id="tabs3" name="selects" value="tabs3"
                                                   class="checkbox">
                                            <label for="tabs3">
                                                <span>Оповещение об акциях и специальных предложениях</span>
                                            </label>
                                            <div class="check"></div>
                                            <p class="text-mailing">
                                                Мы очень хотим, чтобы опыт использования нашего сервиса был только
                                                позитивный!
                                            </p>
                                        </div>

                                        <div class="header-mailing">
                                            <input type="checkbox" id="tabs4" name="selects" value="tabs4"
                                                   class="checkbox">
                                            <label for="tabs4">
                                                <span>Регулярная рассылка промокодов и скидки на товары</span>
                                            </label>
                                            <div class="check"></div>
                                            <p class="text-mailing">
                                                Уникальные предложения, которые мы подобрали для Вас на сайте, исходя из
                                                Вашей активности.
                                                Мы очень хотим, чтобы опыт использования нашего сервиса был только
                                                позитивный!
                                            </p>
                                        </div>

                                        <div class="header-mailing">
                                            <input type="checkbox" id="tabs5" name="selects" value="tabs5"
                                                   class="checkbox">
                                            <label for="tabs5">
                                                <span>Программа лояльности</span>
                                            </label>
                                            <div class="check"></div>
                                            <p class="text-mailing">
                                                Будьте в курсе последних новинок, а также узнавайте первым о
                                                спецпредложениях.
                                                Уникальные предложения, которые мы подобрали для Вас на сайте, исходя из
                                                Вашей активности.
                                                Мы очень хотим, чтобы опыт использования нашего сервиса был только
                                                позитивный!
                                                Будьте в курсе последних новинок, а также узнавайте первым о
                                                спецпредложениях.
                                            </p>
                                        </div>

                                        <div class="header-mailing">
                                            <input type="checkbox" id="tabs6" name="selects" value="tabs6"
                                                   class="checkbox">
                                            <label for="tabs6">
                                                <span>Специальные предложения, акции в Viber/Telegram/SMS</span>
                                            </label>
                                            <div class="check"></div>
                                            <p class="text-mailing">
                                                Мы очень хотим, чтобы опыт использования нашего сервиса был только
                                                позитивный!
                                            </p>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p class="tabs-header">Участие в акциях</p>
                                <div class="tabs-container">

                                    <!--EMPTY SALE-->
                                    <!--<div class="tabs-container tabs-empty">-->
                                    <!--<div>-->
                                    <!--<p> Вы пока не принимали участия в акциях</p>-->
                                    <!--<span>Мы поможем найти спецпредложение, которое даст Вам максимальную выгоду!</span>-->
                                    <!--<a class="bask" href="javascript:void(0)" tabindex="-1"><span>Все акции</span></a>-->

                                    <!--</div>-->
                                    <!--END EMPTY SALE-->

                                    <div class="tabs-mailing">Вы принимаете участие в следующих акциях:</div>

                                    <div class="three-column tabs-sale">
                                        <div class="one-sale">
                                            <div class="sale-from-to">Акция действует с 08 февраля 2018г по 28 мая
                                                2018г
                                            </div>
                                            <div class="sale-img-text">
                                                <img src="/assets/img/sliders/sale.png" alt="">
                                                <div class="sale-img-text-contain">
                                                    <div class="sale-img-text-text">При покупке техники
                                                        <span>Gorenje</span> Гарантированные
                                                        подарки
                                                    </div>
                                                </div>
                                            </div>
                                            <a><h5>АКЦИЯ GOENJE: ПРИ ПОКУПКЕ ТЕХНИКИ
                                                    GORENJE ГАРАНТИРОВАНЫ ПОДАРКИ
                                                </h5></a>
                                            <div class="timer" data-year="2018" data-month="05" data-days="25"></div>
                                            <a class="khob acty">Подробнее</a>
                                        </div>
                                        <div class="one-sale">
                                            <div class="sale-from-to">Акция действует с 08 февраля 2018г по 28 мая
                                                2018г
                                            </div>
                                            <div class="sale-img-text">
                                                <img src="/assets/img/sliders/sale.png" alt="">
                                                <div class="sale-img-text-contain">
                                                    <div class="sale-img-text-text">При покупке техники
                                                        <span>Gorenje</span> Гарантированные
                                                        подарки
                                                    </div>
                                                </div>
                                            </div>
                                            <a><h5>АКЦИЯ GOENJE: ПРИ ПОКУПКЕ ТЕХНИКИ
                                                    GORENJE ГАРАНТИРОВАНЫ ПОДАРКИ
                                                </h5></a>
                                            <div class="timer" data-year="2018" data-month="05" data-days="25"></div>
                                            <a class="khob acty">Подробнее</a>
                                        </div>
                                        <div class="one-sale">
                                            <div class="sale-from-to">Акция действует с 18 марта 2018г по 28 марта
                                                2018г
                                            </div>
                                            <div class="sale-img-text">
                                                <img src="/assets/img/sale/sale2.png" alt="">
                                                <div class="sale-img-text-contain">
                                                    <div class="sale-img-text-text">У нас дешевле! Получите скидку
                                                        <span>60%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <a><h5>БЛЕНДЕР ELECTROLUX В ПОДАРОК К
                                                    ВЫТЯЖКЕ ZIRTAL БЛЕНДЕР ELECTROLUX
                                                    В ПОДАРОК</h5></a>
                                            <div class="timer" data-year="2018" data-month="04" data-days="28"></div>
                                            <a class="khob acty">Подробнее</a>
                                        </div>
                                    </div>


                                </div>
                            </div>
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

    {include file='layouts/orig.tpl'}

</div>


<div class="doww"><img src="/assets/img/verh.png" alt=""></div>

{include file='layouts/_footer.tpl'}