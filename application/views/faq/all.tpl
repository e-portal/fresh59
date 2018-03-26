<div class="container">
    <div class="bread-crumbs wrap breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Вопросы и ответы</span>
            <meta itemprop="position" content="1">
        </div>

    </div>
    <h1 class="liner cent wrap"><span>Вопрос / Ответ</span></h1>
    <div class="ourr wrap left-right-banner">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">

            <div class="accordion">
                {if $faq}
                {foreach from=$faq item=faq_item name=glossary}
                <section class="accordion_item">
                    <h3 class="title_block">{$faq_item.name}</h3>
                    <div class="info-accord">
                        <div class="article">
                            {$faq_item.text}
                        </div>
                    </div>
                </section>
                {/foreach}
                {else}
                <p>Материал готовится и скоро будет выложен на сайт.</p>
                {/if}
            </div>
            <div class="say-question">
                <span>Не нашли ответ на свой вопрос? <br class="enter"> Задайте его нашим менеджерам</span>
                <a href="#popup" rel="nofollow" class="modalbox">Задать вопрос</a>
            </div>
        </div>
    </div>


    <div class="small-product wrap">
        <a class="blue" href="javascript:void(0)">Все новые поступления<span class="linn"></span></a>

        <div class="liner"><span>Вы смотрели</span></div>


        <div class="watched-slider slick ">


            <div class="item-senn">
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
                </a>
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
                </a>
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
                                <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a></object>
                        </div>
                    </div>
                </a>
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
                </a>


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
                                <a class="bask acty blue-bask" href="javascript:void(0)"><span>Под заказ</span></a>
                            </object>

                        </div>
                    </div>
                </a>
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
                </a>
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
                </a>
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
                </a>
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
                                <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a></object>
                        </div>
                    </div>
                </a>
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
                </a>


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
                                <a class="bask acty blue-bask" href="javascript:void(0)"><span>Под заказ</span></a>
                            </object>

                        </div>
                    </div>
                </a>
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
                </a>
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
        </div>


    </div>
    {include file='layouts/orig.tpl'}
</div>

<div id="popup">
    <div class="popup-inner">
        <h1 class="liner cent"><span>Задать вопрос</span></h1>
        <div class="close"><img src="/assets/img/close.png" alt="close"></div>
        <form method="post" id="form-feedback">
            <div class="popup-block">
                <p>фио *</p>
                <input type="text" name="name" id="name"/>
                <div id="bthrow_error_name"></div>
                <p>E-mail *</p>
                <input type="email" name="name" id="email"/>
                <div id="bthrow_error_email"></div>
                <p>телефон * </p>
                <input type="text" name="phone" id="phone"/>
                <div id="bthrow_error_phone"></div>
            </div>
            <div class="popup-block">
                <p>ваш вопрос</p>
                <textarea name="textarea" id="textarea" cols="20" rows="7"></textarea>

                <input class="button" type="submit" value="Отправить вопрос"/>
                <div class="throw_error"></div>
            </div>
        </form>
    </div>
</div>

<div class="doww"><img src="/assets/img/verh.png" alt="up"></div>