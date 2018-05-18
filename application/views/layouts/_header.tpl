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
                                <img class="header-visible" src="./img/point.png" alt="1">
                                <div class="your">Ваш город</div>
                                <ul class="faux-select" data-selected-value="kyiv">
                                    <li class="selected-option"><span>Киев</span>
                                        <ul class="options">
                                            <li data-value="vinnitsa">Винница</li>
                                            <li data-value="dnepr">Днепр</li>
                                            <li data-value="donetsk">Донецк</li>
                                            <li data-value="zaporoze">Запорожье</li>
                                            <li data-value="kyiv">Киев</li>
                                            <li data-value="kirovograd">Кировоград</li>
                                            <li data-value="kremenchug">Кременчуг</li>
                                        </ul>
                                    </li>
                                </ul>
                                <!--<div class="kiev">Киев</div>-->
                            </div>
                            <div class="phone">
                                <img class="header-visible" src="./img/phons.png" alt="2">
                                <div class="time-work">Пн-Вс: 09:00 - 18:00 Call центр</div>

                                <!--<div class="numbers">+38 (067) 223 85 20</div>-->
                                <ul class="faux-select" data-selected-value="kievstar">
                                    <li class="selected-option"><span><a
                                                    href="tel:+380675900591">(067) 590-0-591</a></span>
                                        <ul class="options">
                                            {*<li data-value="kievstar"><a href="tel:+380675900591">(067) 590-0-591</a>*}
                                            {*</li>*}
                                            <li data-value="mts"><a href="tel:+380505900590">(050) 590-0-590</a></li>
                                            <li data-value="lifecell"><a href="tel:+380935900590">(093) 590-0-590</a>
                                            </li>
                                            {*<li data-value="homephone"><a href="tel:+380442238520">(044) 223-8-520</a>*}
                                            {*</li>*}
                                            <li><a href="#" id="region_6" data-phone='(0432) 57-27-77; (067) 262-43-43' onclick="selectRegion(6)">Винница</a></li>
                                            <li><a href="#" id="region_2" data-phone='(056) 788-71-71, (095) 270-50-71' onclick="selectRegion(2)">Днепропетровск</a></li>
                                            <li><a href="#" id="region_12" data-phone='(062) 207-46-90;  (050) 444-68-25' onclick="selectRegion(12)">Донецк</a></li>
                                            <li><a href="#" id="region_9" data-phone='(061) 701 19 60;  (098) 867-13-92' onclick="selectRegion(9)">Запорожье</a></li>
                                            <li><a href="#" id="region_1" data-phone='(050) 590-0-590, (044) 223-8-520, (067) 590-0-591, (093) 590-0-590' onclick="selectRegion(1)">Киев</a></li>
                                            <li><a href="#" id="region_5" data-phone='(0522) 59-50-39;  (066) 520-80-66' onclick="selectRegion(5)">Кировоград</a></li>
                                            <li><a href="#" id="region_17" data-phone='(068) 322 99 22' onclick="selectRegion(17)">Кременчуг</a></li>
                                            <li><a href="#" id="region_13" data-phone='(056) 443-50-39;  (098) 786-42-86' onclick="selectRegion(13)">Кривой Рог</a></li>
                                            <li><a href="#" id="region_4" data-phone='(032) 247-04-09; (067) 434-68-00' onclick="selectRegion(4)">Львов</a></li>
                                            <li><a href="#" id="region_21" data-phone='(093) 929-46-37' onclick="selectRegion(21)">Мариуполь</a></li>
                                            <li><a href="#" id="region_20" data-phone='(0552) 44-12-87' onclick="selectRegion(20)">Николаев</a></li>
                                            <li><a href="#" id="region_7" data-phone='(048) 702-56-84;  (050) 333-41-33' onclick="selectRegion(7)">Одесса</a></li>
                                            <li><a href="#" id="region_3" data-phone='(057) 762-60-33;  (050) 443-61-43' onclick="selectRegion(3)">Харьков</a></li>
                                            <li><a href="#" id="region_22" data-phone='(0552) 44-12-87' onclick="selectRegion(22)">Херсон</a></li>
                                            <li><a href="#" id="region_19" data-phone='(0472) 51-15-39; (098) 786-42-86' onclick="selectRegion(19)">Черкассы</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <!--<div class="selectyNumb">-->
                                <!--<select name="selectyMenuNumb" id="selectyMenuNumb">-->
                                <!--<option selected><img src="./img/kiev.png" alt="">(067) 590-0-591</option>-->
                                <!--<option ><img src="./img/kiev.png" alt="">(050) 590-0-590</option>-->
                                <!--<option ><img src="./img/kiev.png" alt="">(044) 223-8-520</option>-->
                                <!--<option><img src="./img/kiev.png" alt="">(093) 590-0-590</option>-->
                                <!--</select>-->
                                <!---->
                                <!--</div>-->


                            </div>
                            <div class="inpp">
                                <form action="">
                                    <input type="поиск" placeholder="Перезвонить? Введите номер...">
                                    <div class="send"><img src="./img/phon.png" alt=""></div>
                                </form>
                            </div>
                        </div>


                        <div class="inpp">
                            <form action="">
                                <input type="поиск" class="numb" placeholder="Перезвонить? Введите номер...">
                                <div class="send"><img src="./img/phon.png" alt=""></div>
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
                    <div class="burger">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="item-base">
                        <div class="base-menu">
                            {php}
                                echo
                                $this->navigation()->menu($this->menu)->setUlClass('')->setPartial('layouts/menu.tpl')->setMinDepth(1)->setMaxDepth(2);
                            {/php}
                        </div>
                    </div>

                </div>
                <div class="iteem">
                    <div class="inpp">
                        <form action="/catalog/search" method="get">
                            <input type="text" class="header-bottom__input" placeholder="Поиск товара">

                            <div class="searc"><img src="/assets/img/seac.png" alt=""></div>
                            <div class="header-bottom__exit"></div>
                        </form>
                        <div class="search-list">
                            <div class="search-list__item_"></div>
                            <div class="search_ren"></div>

                        </div>
                    </div>
                </div>
                <div class="iteem">
                    <div class="bask-item bonus">
                        <div class="runn">
                            <div class="imgg">
                                <div class="numeral">150</div>
                            </div>
                            <div class="names">Бонусы</div>
                        </div>
                    </div>
                    {if $login}
                        <div class="bask-item pipl logged">
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
                    <div class="bask-item comp" style="position: relative">
                        <div class="runn">
                            <div class="imgg">
                                <div class="numeral">0</div>
                            </div>
                            <div class="names">Сравнение</div>
                        </div>
                        <div class="mode-comp-pop"></div>
                    </div>
                    <div class="bask-item baskets">
                        <div class="runn">
                            <div class="imgg">
                                {include file='layouts/cart_svg.tpl'}
                                <div class="numeral">3</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {*============Mobile Menu============*}
    {include file='layouts/mobile_menu.tpl'}
    {*============Mobile Menu============*}
    {*============Tablet Menu============*}
    <nav class="mobile-display-none">
        <div class="base-menu">
            {php}
                echo
                $this->navigation()->menu($this->menu)->setUlClass('menu-one')->setPartial('layouts/menu.tpl')->setMinDepth(1)->setMaxDepth(2);
            {/php}
            <div class="mob-next-menu">
                <ul>
                    <li>
                        <a href="/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83">
                            Бонус-клуб
                        </a>
                    </li>
                    <li><a href="/articles/zamena">Програма “Замена”</a></li>
                    <li><a href="/articles/4">Под заказ дешевле</a></li>
                    <li><a href="/articles">Полезно и интересно</a></li>
                </ul>
            </div>
            <div class="mob-main-menu">
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
            <div class="mob-social">
                <p>Мы в социальных сетях</p>
                <div class="link">
                    <a href="https://www.facebook.com/590.ua" class="linky" rel="nofollow" target="_blank">
                        <img src="/assets/img/white-f.svg" alt="">
                    </a>
                    <a href="https://twitter.com/590Ua" class="linky" rel="nofollow" target="_blank">
                        <img src="/assets/img/white-twit.svg" alt="">
                    </a>
                    <a href="https://plus.google.com/101839783687775705263?rel=author"
                       class="linky" rel="nofollow" target="_blank">
                        <img src="/assets/img/white-g.svg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </nav>
    {*============Tablet Menu============*}

</header>
<!--POPUP AUTORIZATION-TEMPLATE -->
<div class="popup flexibal autorisation">
    <div class="popup-content show">
        <div class="closeX"><span></span><span></span></div>
        {include file='layouts/login-form.tpl'}
    </div>
    <div class="close show"></div>
</div>
<!--end POPUP AUTORIZATION-TEMPLATE -->