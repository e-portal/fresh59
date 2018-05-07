<div class="small-product">
    <a class="blue" href="javascript:void(0)">Все новые поступления<span class="linn"></span></a>
    <div class="liner"><span>Вы смотрели</span></div>

    {if $zf.params.controller=='catalog' && true==$small}
        {assign var=slider_class value='watched-small'}
    {else}
        {assign var=slider_class value='watched-slider'}
    {/if}
    <div class="{$slider_class}">

        {if $smarty.session.items|@count > 0}
            <ul>
                {foreach from=$smarty.session.items item=vieweditems name=content_vieweditems}
                    {if $smarty.foreach.content_vieweditems.index < 1}
                        <li>
                            {*<a href="/catalog/item/{$vieweditems.id}" alt="{$vieweditems.brand} {$vieweditems.name}">
                                {$vieweditems.brand} {$vieweditems.name}
                            </a>*}
                            {*<pre>{$vieweditems|var_dump}</pre>*}
                            <pre>{$item|@debug_print_var}</pre>
                        </li>
                    {/if}
                {/foreach}
            </ul>
        {/if}

        {*<div class="item-senn">
            <a class="sench" href="/">
                <h5 class="green">В наличии</h5>
                <h4>Микроволновая печь GORENJE MO 6240</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn0.png" alt=""></div>
                    <div class="itee">
                        <img src="/assets/img/izee0.png" alt="">
                        <p>Вернем: <span>500 грн</span></p>
                    </div>

                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <p>от <span>500</span> грн/мес</p>
                    </div>
                </div>
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>

                </div>
            </div>

            <div class="hovv">


                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="gray">Наличие уточняйте</h5>
                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn5.png" alt=""></div>
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
                </div>
            </a>
            <object type="lol/wut"><a href="/otzv" class="otzv">
                    <div class="left-otzv">
                        <img src="/assets/img/patr.png" alt="">
                    </div>
                    <div class="right-otzv">
                        <span>Оставить отзыв</span>
                    </div>
                </a></object>

            <div class="bakk">
                <div class="left-bakk">
                    <p>17 500 грн</p>
                    <p>Вернем: <span>2000 грн</span></p>
                </div>
                <div class="right-bakk">
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>
                </div>
            </div>
            <div class="hovv">


                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="green">В наличии</h5>
                <h4>Стиральная машина Electro ELECTROLUX</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn2.png" alt=""></div>
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
                    <div class="itee present">
                        <div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>
                        <p>Подарок!</p>
                        <img src="/assets/img/present.png" alt="present">
                    </div>
                    <div class="itee change">
                        <img src="/assets/img/izee5.png" alt="">
                        <p>Замена</p>
                    </div>
                </div>
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>

                </div>
            </div>
            <div class="hovv">


                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="bluee">Под заказ</h5>
                <h4>Чайник ELECTROLUX </h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn3.png" alt=""></div>
                    <div class="itee">
                        <img src="/assets/img/izee0.png" alt="">
                        <p>Вернем: <span>500 грн</span></p>
                    </div>

                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <p>от <span>500</span> грн/мес</p>
                    </div>
                </div>
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty blue-bask"
                           href="javascript:void(0)"><span>Под заказ</span></a>
                    </object>

                </div>
            </div>

            <div class="hovv">


                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="green">В наличии</h5>
                <h4>Наушники Monster beats Monster beats</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn4.png" alt=""></div>
                    <div class="itee">
                        <img src="/assets/img/izee0.png" alt="">
                        <p>Вернем: <span>500 грн</span></p>
                    </div>

                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <p>от <span>500</span> грн/мес</p>
                    </div>
                </div>
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>

                </div>
            </div>
            <div class="hovv">
                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="green">В наличии</h5>
                <h4>Стиральная машина Electro ELECTROLUX</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn2.png" alt=""></div>
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
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>

                </div>
            </div>
            <div class="hovv">
                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="gray">Наличие уточняйте</h5>
                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn5.png" alt=""></div>
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
                </div>
            </a>
            <object type="lol/wut"><a href="/otzv" class="otzv">
                    <div class="left-otzv">
                        <img src="/assets/img/patr.png" alt="">
                    </div>
                    <div class="right-otzv">
                        <span>Оставить отзыв</span>
                    </div>
                </a></object>

            <div class="bakk">
                <div class="left-bakk">
                    <p>17 500 грн</p>
                    <p>Вернем: <span>2000 грн</span></p>
                </div>
                <div class="right-bakk">
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>
                </div>
            </div>
            <div class="hovv">
                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="bluee">Под заказ</h5>
                <h4>Чайник ELECTROLUX </h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn3.png" alt=""></div>
                    <div class="itee">
                        <img src="/assets/img/izee0.png" alt="">
                        <p>Вернем: <span>500 грн</span></p>
                    </div>

                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <p>от <span>500</span> грн/мес</p>
                    </div>
                </div>
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty blue-bask"
                           href="javascript:void(0)"><span>Под заказ</span></a>
                    </object>

                </div>
            </div>
            <div class="hovv">
                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="item-senn">
            <a class="sench" href="/">
                <h5 class="green">В наличии</h5>
                <h4>Наушники Monster beats Monster beats</h4>
                <div class="centr">
                    <div class="itee-imgg"><img src="/assets/img/senn4.png" alt=""></div>
                    <div class="itee">
                        <img src="/assets/img/izee0.png" alt="">
                        <p>Вернем: <span>500 грн</span></p>
                    </div>

                    <div class="itee">
                        <img src="/assets/img/izee1.png" alt="">
                        <p>от <span>500</span> грн/мес</p>
                    </div>
                </div>
            </a>
            <object type="lol/wut">
                <a href="/" class="otzv">
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
                    <object type="lol/wut">
                        <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                    </object>
                </div>
            </div>
            <div class="hovv">
                <div class="news">
                    <div class="left-butt">
                        <a href="">В избранное</a>
                    </div>
                    <div class="right-butt">
                        <a href="">Сравнение</a>
                    </div>
                </div>
            </div>
        </div>*}

    </div>
</div>