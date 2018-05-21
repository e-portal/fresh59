<footer class="footers">

    <div class="bonus-score">
        <div class="wrap">
            <div class="score">
                <div class="item-score">
                    <p>Подпишитесь на рассылку</p>
                </div>
                <div class="item-score">
                    <p>... и получите <span>100 грн</span> на бонусный счет!</p>
                </div>
                <div class="item-score">
                    <div class="inpp">
                        <form action="">
                            <input type="поиск" placeholder="E-mail">
                            <div class="send">Подписаться</div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="foot">
        <div class="container wrap">
            <div class="item-foot">
                <img src="/assets/img/logo.png" alt="">
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

                <span class="rights-security"><b>2007-{$smarty.now|date_format:"%Y"}.</b> Все права защищены</span>
            </div>

            <div class="item-foot">

                <p>590.ua</p>

                <ul>
                    <li><a href="/news">Акции</a></li>
                    <li><a href="/page/payment">Оплата</a></li>
                    <li><a href="/page/delivery">Доставка</a></li>
                    <li><a href="/page/guarantee">Гарантии и сервис</a></li>
                    <li><a href="/faq">Вопрос/Ответ</a></li>
                    <li><a href="/page/address">Контакты</a></li>
                    <li>
                        <a href="/news/%D0%BC%D0%B5%D0%BD%D1%8F%D0%B9%D1%82%D0%B5-%D0%B1%D0%BE%D0%BD%D1%83%D1%81%D1%8B-%D0%BD%D0%B0-%D1%82%D0%B5%D1%85%D0%BD%D0%B8%D0%BA%D1%83">
                            Бонус-клуб
                        </a>
                    </li>
                    <li><a href="/articles">Статьи</a></li>
                </ul>
            </div>


            <div class="item-foot">

                <p>Услуги и сервисы</p>

                <ul>
                    <li><a href="/page/bonus">Бонусная программа</a></li>
                    <li><a href="/">Подарочные карты</a></li>
                    <li><a href="/">Кредит и оплата частями</a></li>
                    <li><a href="/page/delivery">Доставка с подключением</a></li>
                    <li><a href="/page/connection">Установка</a></li>
                    <li><a href="/">Страховка</a></li>
                    <li><a href="/">Дополнительная гарантия</a></li>
                    <li><a href="/page/confidentiality">Политика конфиденцеальности</a></li>
                </ul>
            </div>


            <div class="item-foot">
                <div class="call">
                    <p>Пн-Вс: 09:00 - 18:00 Call центр </p>
                    <span><a href="tel:+380442238520">+38 (044) 223 85 20</a></span>
                    <span><a href="tel:+380675900591">+38 (067) 590-0-591</a></span>
                    <span><a href="tel:+380505900590">+38 (050) 590-0-590</a></span>
                    <span><a href="tel:+380935900590">+38 (093) 590-0-590</a></span>
                    <span class="rights-security"><b>2007-{$smarty.now|date_format:"%Y"}. </b> Все права защищены</span>
                </div>

                <div class="adree">
                    <p>Адрес:</p>
                    <span>Ул. Дегтяровская 25а, корпус 1,
                    секция 3, оф. 413, 04119,
                    Украина, Киев</span>
                </div>


                <div class="fresh">
                    <div class="created">САЙТ РАЗРАБОТАН</div>

                    <a href="http://freshweb.agency/?utm_source=our-site&utm_medium=590.ua" target="_blank">
                        <div class="fresh-logo"><span>F</span><span>R</span><span>E</span><span>S</span><span>H</span>
                        </div>
                    </a>
                    <div class="creative">CREATIVE WEB AGENCY</div>
                </div>
            </div>


        </div>
    </div>

</footer>

{*--------------CART--------------*}
{include file='layouts/cart.tpl'}
{*--------------CART--------------*}

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
{if isset($js_int) }
    {$js_int}
{/if}
<script src="/assets/js/main.js"></script>
<script src="/assets/js/slick.min.js"></script>
<script src="/assets/js/mask.js"></script>
<script src="/assets/js/order.js"></script>
<script src="/assets/js/jquery.cookie.js"></script>
<script src="//code.tidio.co/nnyvrxcw6rbyxx6ryjnoioigpohmsben.js"></script>


{*<script>*}


    {*(function() {*}
        {*var d = document, s = d.createElement('script');*}
        {*s.src = 'https://590.disqus.com/embed.js';*}
        {*s.setAttribute('data-timestamp', +new Date());*}
        {*(d.head || d.body).appendChild(s);*}
    {*})();*}
{*</script>*}
{*<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>*}
{*<script id="dsq-count-scr" src="//590.disqus.com/count.js" ></script>*}

</body>
</html>