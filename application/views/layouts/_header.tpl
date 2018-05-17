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
                                <input type="tel" placeholder="Перезвонить? Введите номер..." class="numb">
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