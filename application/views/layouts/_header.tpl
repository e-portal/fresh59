{include file='layouts/_head.tpl'}
<header class="headers">
    <div class="hedd wrap">
        <div class="container">
            <div class="main-hedd">
                <div class="head-item">
                    <a href=""><img src="/assets/img/logo.png" alt=""></a>
                    <span>Покупать очень просто!</span>
                </div>
                <div class="head-item">
                    <div class="main-menu">
                        <ul>
                            {foreach from=$topmenu item=menutop name=topmenu}
                            {if $menutop.type=='text'}
                            <li><a href="http://fresh.590.ua/page/{$menutop.alias}">{$menutop.label|translate}</a></li>
                            {/if}
                            {if $menutop.type=='link'}
                            <li><a href="http://fresh.590.ua{$menutop.param}">{$menutop.label|translate}</a></li>
                            {/if}
                            {/foreach}

                            <!--<li><a href="/">Акции</a></li>
                            <li><a href="/">Оплата</a></li>
                            <li><a href="/">Доставка</a></li>
                            <li><a href="/">Гарантии и сервис</a></li>
                            <li><a href="/">Вопрос / Ответ</a></li>
                            <li><a href="/">Контакты</a></li>-->
                        </ul>
                    </div>

                    <div class="next-menu">
                        <ul>
                            <li><a href="">Бонус-клуб<span class="linn"></span></a></li>
                            <li><a href="">Програма “Замена”<span class="linn"></span></a></li>
                            <li><a href="">Под заказ дешевле<span class="linn"></span></a></li>
                            <li><a href="">Полезно и интересно<span class="linn"></span></a></li>
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
                                <input type="поиск" placeholder="Перезвонить? Введите номер...">
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
                        <div class="base-menu">
                            <ul>

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
                            </ul>
                        </div>
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
                    <div class="bask-item pipl">
                        <div class="runn">
                            <div class="imgg"></div>
                            <div class="names">Анжелика</div>
                        </div>
                    </div>
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