{include file='layouts/_head.tpl'}
<header class="headers">
    <div class="hedd wrap">
        <div class="container">
            <div class="main-hedd">
                <div class="head-item">
                    <a href="/"><img src="/assets/img/logo.png" alt=""></a>
                    <span>Официальная техника с гарантией</span>
                </div>
                <div class="head-item">
                    <div class="main-menu">
                        <ul>
                            {foreach from=$topmenu item=menutop name=topmenu}
                                {if $menutop.type=='text'}
                                    <li>
                                        <a href="http://fresh.590.ua/page/{$menutop.alias}">{$menutop.label|translate}</a>
                                    </li>
                                {/if}
                                {if $menutop.type=='link' && !$smarty.foreach.topmenu.last}
                                    <li><a href="http://fresh.590.ua{$menutop.param}">{$menutop.label|translate}</a>
                                    </li>
                                {/if}
                            {/foreach}
                        </ul>
                    </div>

                    <div class="next-menu">
                        <ul>
                            <li>
                                <a href="/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83">
                                    Бонус-клуб<span class="linn"></span>
                                </a>
                            </li>
                            <li><a href="/articles/zamena">Програма “Замена”<span class="linn"></span></a></li>
                            <li><a href="/articles/4">Под заказ дешевле<span class="linn"></span></a></li>
                            <li><a href="/articles">Полезно и интересно<span class="linn"></span></a></li>
                        </ul>
                    </div>

                </div>

                <div class="head-item">
                    <div class="info">
                        <div class="name-info">
                            <div class="city">
                                <div class="your">Ваш город</div>
                                <div class="kiev">Киев</div>
                            </div>
                            <div class="phone">
                                <div class="time-work">Пн-Вс: 09:00 - 18:00 Call центр</div>

                                <div class="numbers">+38 (067) 223 85 20</div>
                            </div>
                        </div>


                        <div class="inpp">
                            <form action="">
                                <input type="поиск" placeholder="Перезвонить? Введите номер..." class="numb">
                                <div class="send"><img src="/assets/img/phon.png" alt=""></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="menu">
        <div class="container wrap">
            <div class="flexy">

                <div class="iteem">
                    <div class="katal">
                        каталог товаров
                    </div>

                    <div class="item-base">
                        <!--<ul>

                            <li><a href="">Отдельностоящая техника</a>
                                <ul class="menu-0">
                                    <li><a href="">мойки и смесители</a></li>
                                    <li><a href="">мойки и смесители</a></li>
                                    <li><a href="">мойки и смесители</a></li>
                                    <li><a href="">мойки и смесители</a></li>
                                    <li><a href="">мойки и смесители</a></li>
                                </ul>
                            </li>
                            <li><a href="">Встраиваемая техника</a></li>
                            <li><a href="">мелкая бытовая техника</a></li>
                            <li><a href="">Красота и здоровье</a></li>
                            <li><a href="">Техника для уборки</a></li>
                            <li><a href="">Кухонная посуда</a></li>
                            <li><a href="">мойки и смесители</a></li>
                            <li><a href="">климатическая техника</a></li>
                            <li><a href="">Аксессуары</a></li>
                            <li><a href="">Бытовая химия</a></li>
                            <li><a href="">Распродажа</a></li>
                        </ul>-->
                        {php}
                            echo
                            $this->navigation()->menu($this->menu)->setPartial('layouts/menu.tpl')->setMinDepth(1)->setMaxDepth(2);
                        {/php}
                    </div>

                </div>
                <div class="iteem">
                    <div class="inpp">
                        <form action="">
                            <input type="поиск" placeholder="Поиск товара">
                            <div class="searc"><img src="/assets/img/seac.png" alt=""></div>
                        </form>
                    </div>
                </div>
                <div class="iteem">
                    <div class="bask-item bonus">
                        <div class="runn">
                            <div class="imgg"></div>
                            <div class="names">Бонусы</div>
                        </div>
                    </div>
                    {if $login}
                        <div class="bask-item pipl">
                            <div class="runn">
                                <div class="imgg"></div>
                                <div class="names">{$login}</div>
                            </div>
                        </div>
                    {else}
                        <div class="bask-item pipl">
                            <div class="runn">
                                <div class="imgg"></div>
                                <div class="names">Вход</div>
                            </div>
                        </div>
                    {/if}
                    <div class="bask-item vijen">
                        <div class="runn">
                            <div class="imgg">
                                <div class="numeral">0</div>
                            </div>
                            <div class="names">Желания</div>
                        </div>
                    </div>
                    <div class="bask-item comp">
                        <div class="runn">
                            <div class="imgg">
                                <div class="numeral">0</div>
                            </div>
                            <div class="names">Сравнение</div>
                        </div>
                    </div>
                    <div class="bask-item baskets">
                        <div class="runn">
                            <div class="imgg">
                                <div class="numeral">3</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>
<!--POPUP AUTORIZATION-TEMPLATE -->
<div class="popup flexibal autorisation">
    <div class="popup-content show">
        <div class="closeX"><span></span><span></span></div>
        <div class="activate-popup order">
            <div class="liner smaller-liner liner-basket"><span>Авторизация</span></div>
            <div class="flexibal tab-new-client">
                <div class="two-col">
                    <form method="post" action="" id="orderformenter" name="order">
                        <div class="">
                            <label for="enter-email">E-mail</label>
                            <input id="enter-email" type="email" class="input-min-width">
                            <label for="pass">Пароль</label>
                            <input id="pass" type="password" class="input-min-width" name="password">
                        </div>
                        <div class="flexibal flex-between">
                            <input class="bask acty without-icon" type="submit" value="Войти">
                            <a class="black-link">Забыли пароль?</a>
                        </div>
                    </form>
                </div>
                <div class="border-plus"><span>или</span></div>
                <div class="flexibal two-col reg-social">
                    <div class=""><p>Вы можете войти через социальную сеть</p></div>
                    <div class="">
                        <a><img src="/assets/img/main/fb-blue.png"></a>
                        <a><img src="/assets/img/main/g-red.png"></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="close show"></div>
</div>
<!--end POPUP AUTORIZATION-TEMPLATE -->