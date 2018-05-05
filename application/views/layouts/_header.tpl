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
                                <svg viewBox="0 0 586 544" version="1.1"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path class="st0" d="M586.2,89.3c-6,19.1-12.1,38.2-18,57.3c-18.8,60.7-37.5,121.4-56.3,182c-3.7,11.8-8.6,15.1-22.9,16.7
        c-24.4,2.7-48.8,5.9-73.3,8.8c-23.6,2.8-47.2,5.5-70.8,8.3c-23.6,2.8-47.2,5.9-70.8,8.7c-23.4,2.8-46.9,5.5-71.1,8.4
        c0,4.7-0.8,9.6,0.3,14c0.5,2.1,4.6,4.4,7.2,4.6c10.6,0.7,21.3,1.5,31.8,0.6c29.1-2.7,58.2-6.4,87.3-9.4
        c44.5-4.6,89.2-3.1,133.8-2.2c10.8,0.2,21.7,0.2,32.5,0.3c10.8,0.1,18.4,7.7,18.4,18.1s-7.8,17.9-18.6,17.9
        c-35.2-0.3-70.3-1.5-105.5-0.7c-28.4,0.6-56.8,3.4-85.1,5.7c-26.2,2.1-52.3,5.3-78.5,7.1c-9.3,0.6-19.1-0.3-28.1-2.6
        c-21.7-5.5-34.9-24.3-31.8-48.8c2.2-16.9-1.3-32-5.5-47.6c-22.1-82-44-164-66-246C90.8,74,85.8,57.7,81.1,41.2
        c-0.4-1.2-0.9-2.4-1.4-3.9c-18.8,0-37.5-0.3-56.1,0.1C12.1,37.6,4,33.6,0.2,22.3c0-2,0-4,0-6C5.2,3.8,9.1,1.2,22.6,1.2
        c23.1,0,46.3,0,69.4,0c10.4,0,16.2,4.5,19.2,14.6c4.4,15.1,8.9,30.2,12.9,45.4c1.3,5.1,3.6,6.6,8.8,6.6
        c143.6,0,287.1,0.2,430.7,0.4c13.6,0.1,17.6,2.7,22.6,15.1C586.2,85.3,586.2,87.3,586.2,89.3z M352.6,182.1c0,21.2,0,42.1,0,62.8
        c25.3,0,50.1,0,75,0c0-21.1,0-41.8,0-62.8C402.4,182.1,377.5,182.1,352.6,182.1z M328,182c-25,0-49.7,0-74.6,0c0,21.1,0,42,0,62.9
        c25.1,0,49.8,0,74.6,0C328,223.9,328,203.1,328,182z M328.1,269.7c-24.9,0-49.7,0-74.8,0c0,22.5,0,44.8,0,67.6
        c25.1-3,49.9-6.1,74.8-9.1C328.1,308.4,328.1,289.3,328.1,269.7z M228.8,104.1c-30.9,0-61.6,0-92.5,0c4.6,17.2,9.2,33.8,13.5,50.4
        c0.8,3.3,2.6,3.6,5.3,3.6c23.1-0.1,46.3,0,69.4-0.1c1.4,0,2.9-0.2,4.3-0.4C228.8,139.6,228.8,122,228.8,104.1z M452.1,104.4
        c0,18.1,0,35.7,0,53.2c0.8,0.2,1.3,0.4,1.8,0.4c23.3,0,46.6,0.1,69.9-0.1c1.4,0,3.6-2,4.2-3.6c3-8.9,5.6-18,8.4-27.1
        c2.3-7.5,4.6-15,7.1-22.9C512.6,104.4,482.5,104.4,452.1,104.4z M352.4,157.6c1,0.2,1.6,0.4,2.3,0.4c23.2,0,46.3,0,69.5,0.1
        c3.3,0,3.9-1.4,3.8-4.2c-0.1-12.5,0-25,0-37.5c0-3.9,0-7.9,0-12c-25.6,0-50.5,0-75.6,0C352.4,122.2,352.4,139.7,352.4,157.6z
         M157.2,182.1c5.4,20.5,10.7,40.5,16.2,60.4c0.3,1.2,2.8,2.6,4.3,2.7c10.2,0.2,20.3,0.1,30.5,0.1c6.8,0,13.6,0,20.6,0
        c0-21.3,0-42.1,0-63.2C205.1,182.1,181.5,182.1,157.2,182.1z M327.9,157.8c0-18.2,0-35.8,0-53.6c-25,0-49.7,0-74.5,0
        c0,18,0,35.7,0,53.6C278.4,157.8,303,157.8,327.9,157.8z M427.7,269.7c-25.3,0-50.3,0-75.2,0c0,18.6,0,36.9,0,55.6
        c25.3-3,50.2-6.1,75.2-9.1C427.7,300.4,427.7,285.1,427.7,269.7z M452.1,182c0,21.3,0,42.1,0,63.3c15.4,0,30.4,0.1,45.3-0.2
        c1.2,0,3.1-2.1,3.6-3.6c3-9,5.6-18,8.4-27c3.3-10.7,6.6-21.4,10.1-32.5C496.7,182,474.6,182,452.1,182z M228.9,269.6
        c-16.3,0-32,0-48.2,0c6.7,24.9,13.3,49.4,19.9,74c10-1.2,19.1-2.4,28.4-3.5C228.9,316.3,228.9,293.1,228.9,269.6z M452,313.4
        c8.3-1,16.3-2.3,24.3-2.9c2.9-0.2,4-1.5,4.8-3.9c2.7-9,5.5-18.1,8.2-27.1c1-3.2,2-6.5,3-10c-13.8,0-26.9,0-40.4,0
        C452,284,452,298.4,452,313.4z"/>
                                    <path class="st0" d="M221.5,543.4c-24.2,0-43.3-19.1-43.3-43.4c0-24.1,19.4-43.6,43.4-43.5c23.8,0,43.6,19.9,43.6,43.6
        C265.1,524.1,245.6,543.4,221.5,543.4z"/>
                                    <path class="st0" d="M415.8,499.6c0.3-24.1,20.1-43.6,43.8-43.1c24.2,0.5,43.1,19.9,42.9,44c-0.2,24.7-19.6,43.2-44.8,42.9
        C434.4,543.1,415.5,523.4,415.8,499.6z"/>
                                </svg>
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
        {include file='layouts/login-form.tpl'}
    </div>
    <div class="close show"></div>
</div>
<!--end POPUP AUTORIZATION-TEMPLATE -->