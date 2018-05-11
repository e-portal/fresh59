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
                        <li><a href="">Бонус-клуб</a></li>
                        <li><a href="">Програма “Замена”</a></li>
                        <li><a href="">Под заказ дешевле</a></li>
                        <li><a href="">Полезно и интересно</a></li>
                    </ul>
                </div>
                <div class="mob-main-menu">
                    <ul>
                        <li><a href="/">Акции</a></li>
                        <li><a href="/">Оплата</a></li>
                        <li><a href="/">Доставка</a></li>
                        <li><a href="/">Гарантии и сервис</a></li>
                        <li><a href="/">Вопрос / Ответ</a></li>
                        <li><a href="/">Контакты</a></li>
                    </ul>
                </div>
                <div class="mob-social">
                    <p>Мы в социальных сетях</p>
                    <div class="link">
                        <a href="/" class="linky"><img src="/assets/img/white-f.svg" alt=""></a>
                        <a href="/" class="linky"><img src="/assets/img/white-twit.svg" alt=""></a>
                        <a href="/" class="linky"><img src="/assets/img/white-g.svg" alt=""></a>
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