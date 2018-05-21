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
                            <div class="city data-region-list">
                                <img class="header-visible" src="/assets/img/point.png" alt="1">
                                {*<div class="your">Ваш город</div>*}
                                <ul class="faux-select" data-selected-value="kyiv">
                                    <li class="selected-option"><span>Киев</span>
                                        <ul class="options">
                                            <li id="region_6"  onclick="selectRegion(6)">Винница</li>
                                            <li id="region_2"  onclick="selectRegion(2)">Днепр</li>
                                            <li id="region_12" onclick="selectRegion(12)">Донецк</li>
                                            <li id="region_9"  onclick="selectRegion(9)">Запорожье</li>
                                            <li id="region_1"  onclick="selectRegion(1)">Киев</li>
                                            <li id="region_5"  onclick="selectRegion(5)">Кировоград</li>
                                            <li id="region_17" onclick="selectRegion(17)">Кременчуг</li>

                                            <li id="region_13" onclick="selectRegion(13)">Кривой Рог</li>
                                            <li id="region_4" onclick="selectRegion(4)">Львов</li>
                                            <li id="region_21" onclick="selectRegion(21)">Мариуполь</li>
                                            <li id="region_20" onclick="selectRegion(20)">Николаев</li>
                                            <li id="region_7" onclick="selectRegion(7)">Одесса</li>
                                            <li id="region_3" onclick="selectRegion(3)">Харьков</li>
                                            <li id="region_22" onclick="selectRegion(22)">Херсон</li>
                                            <li id="region_19" onclick="selectRegion(19)">Черкассы</li>
                                        </ul>
                                    </li>
                                </ul>
                                <!--<div class="kiev">Киев</div>-->
                            </div>
                            <div class="phone">
                                <img class="header-visible" src="/assets/img/phons.png" alt="2">
                                <div class="time-work">Пн-Вс: 09:00 - 18:00 Call центр</div>


                                <!--<div class="numbers">+38 (067) 223 85 20</div>-->
                                <ul class="faux-select" data-selected-value="kievstar">
                                    <li class="selected-option">
                                        <span><a href="tel:+380505900590">(050) 590-0-590</a></span>
                                        <span><a href="tel:+380935900590">(093) 590-0-590</a></span>
                                        <ul class="options">
                                            {*<li data-value="kievstar"><a href="tel:+380675900591">(067) 590-0-591</a>*}
                                            {*</li>*}
                                            {*<li data-value="mts"><a href="tel:+380505900590">(050) 590-0-590</a></li>*}
                                            {*<li data-value="lifecell"><a href="tel:+380935900590">(093) 590-0-590</a>*}
                                            </li>
                                            {*<li data-value="homephone"><a href="tel:+380442238520">(044) 223-8-520</a>*}
                                            {*</li>*}

                                            <li class="tregion_6"><a href="tel:+380432572777"  >(0432) 57-27-77</a></li>
                                            <li class="tregion_6"><a href="tel:+380672624343"   >(067) 262-43-43</a></li>
                                            <li class="tregion_2"><a href="tel:+380567887171"   >(056) 788-71-71</a></li>
                                            <li class="tregion_2"><a href="tel:+380952705071"   >(095) 270-50-71</a></li>
                                            <li class="tregion_12"><a href="tel:+380622074690"    >(062) 207-46-90</a></li>
                                            <li class="tregion_12"><a href="tel:+380504446825"   >(050) 444-68-25</a></li>
                                            <li class="tregion_9"><a href="tel:+380617011960"    >(061) 701 19 60</a></li>
                                            <li class="tregion_9"><a href="tel:+380988671292"   >(098) 867-13-92</a></li>
                                            <li class="tregion_1 active"><a href="tel:+380442238520"   >(044) 223-8-520</a></li>
                                            <li class="tregion_1 active"><a href="tel:+380675900591"   >(067) 590-0-591</a></li>
                                            <li class="tregion_5"><a href="tel:+380522595039"   >(0522) 59-50-39</a></li>
                                            <li class="tregion_5"><a href="tel:+380665208066"   >(066) 520-80-66</a></li>
                                            <li class="tregion_17" ><a href="tel:+380683229922"   >(068) 322 99 22</a></li>
                                            <li class="tregion_13"><a href="tel:+380564435039"    >(056) 443-50-39</a></li>
                                            <li class="tregion_13"><a href="tel:+380987864286"    >(098) 786-42-86</a></li>
                                            <li class="tregion_4"><a href="tel:+380322470409"   >(032) 247-04-09</a></li>
                                            <li class="tregion_4"><a href="tel:+380674346800"   >(067) 434-68-00</a></li>
                                            <li class="tregion_21"><a href="tel:+380939294637"    >(093) 929-46-37</a></li>
                                            <li class="tregion_20"><a href="tel:+380552441287"   >(0552) 44-12-87</a></li>
                                            <li class="tregion_7"><a href="tel:+380487025684"   >(048) 702-56-84</a></li>
                                            <li class="tregion_7"><a href="tel:+380503334133"   >(050) 333-41-33</a></li>
                                            <li class="tregion_3"><a href="tel:+380577626033"   >(057) 762-60-33</a></li>
                                            <li class="tregion_3"><a href="tel:+380504436143"   >(050) 443-61-43</a></li>
                                            <li  class="tregion_22"><a href="tel:+380552441287" >(0552) 44-12-87</a></li>
                                            <li class="tregion_19"><a href="tel:+380472511539"   >(0472) 51-15-39</a></li>
                                            <li class="tregion_19"><a href="tel:+380987864286"  >(098) 786-42-86</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <!--<div class="selectyNumb">-->
                                <!--<select name="selectyMenuNumb" id="selectyMenuNumb">-->
                                <!--<option selected><img src="/assets/img/kiev.png" alt="">(067) 590-0-591</option>-->
                                <!--<option ><img src="/assets/img/kiev.png" alt="">(050) 590-0-590</option>-->
                                <!--<option ><img src="/assets/img/kiev.png" alt="">(044) 223-8-520</option>-->
                                <!--<option><img src="/assets/img/kiev.png" alt="">(093) 590-0-590</option>-->
                                <!--</select>-->
                                <!---->
                                <!--</div>-->


                            </div>
                            <div class="inpp">
                                <form action="">
                                    <input type="поиск" placeholder="Перезвонить? Введите номер...">
                                    <div class="send"><img src="/assets/img/phon.png" alt=""></div>
                                </form>
                            </div>
                        </div>


                        <div class="inpp">
                            <form action="">
                                <input type="поиск" class="numb" placeholder="Перезвонить? Введите номер...">
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