<div class="menu-mob wrap">
    <div class="head-item">
        <a href="/"><img src="/assets/img/logo.png" alt="logo"></a>
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
        <div class="bask-item baskets">
            <div class="runn">
                <div class="imgg">
                    {include file='layouts/cart_svg.tpl'}
                    <div class="numeral">3</div>
                </div>
            </div>
        </div>
    </div>
    <div class="iteem iteem-menu">
        <nav class="mobile-display-none">
            <div class="base-menu">
                {php}
                    echo
                    $this->navigation()->menu($this->menu)->setPartial('layouts/menu.tpl')->setMinDepth(1)->setMaxDepth(2);
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
        <div class="burger">
            <div class="line-burger"></div>
            <div class="line-burger"></div>
            <div class="line-burger"></div>
        </div>
    </div>
</div>