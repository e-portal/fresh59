<div class="container category">

    <div class="libe wrap">
        <!--<div class="container">-->
        <div class="slick libe-slick">
            <div class="item-libe">
                <img src="/assets/img/categ.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link" tabindex="0"></a></div>
            </div>


            <div class="item-libe">
                <img src="/assets/img/categ.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link" tabindex="0"></a></div>
            </div>


            <div class="item-libe">
                <img src="/assets/img/categ.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link" tabindex="0"></a></div>
            </div>
        </div>

        <!--</div>-->
    </div>
    {debug}

    <div class="tehni wrap">

        <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
             itemtype="http://schema.org/BreadcrumbList">
            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <a href="/" itemprop="item">Главная</a>
                <meta itemprop="position" content="1">
            </div>


            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <span itemprop="name" class="label1">{$catName}</span>
                <meta itemprop="position" content="2">
            </div>

        </div>


        <div class="liner cent"><span>{$catName}</span></div>
        <div class="main-tehni">
            {foreach from=$categories item=cat name=categories}
            <a href="/{$cat.subdomain}/{$cat.latin_name|replace:' ':'-'|mblower}" class="item-tehni">
                <div class="base-tehni">
                    <div class="left-tehni">
                        <img src="{if $cat.id==86}/images/catalog/38342_s.jpg{else}{$url.img}/catalog/{$img[$cat.id].id}_s.{$img[$cat.id].ext}{/if}"
                             alt="{$catName}">
                    </div>
                    <div class="right-tehni">{$cat.name}</div>
                </div>

            </a>
            {/foreach}
        </div>
    </div>


    <div class="senn senn-scrol">
        <div class="senn-container wrap">
            <a class="blue" href="/">Все просмотренные товары<span class="linn"></span></a>


            <div class="liner"><span>Топ продаж</span></div>


            <div class="parag parag-prev">
                <div class="parag-item active">Отдельностоящая</div>
                <div class="parag-item">Встраиваемая</div>
                <div class="parag-item">Мелкая бытовая</div>
                <div class="parag-item">Красота и здоровье</div>
                <div class="parag-item">Для уборки</div>
                <div class="parag-item">Посуда</div>
                <div class="parag-item">Мойки и смесители</div>
                <div class="parag-item">Климатическая</div>
            </div>

            <div class="senn-main maii">

                <div class="senn-slik slick">


                    <div class="maii-item">


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
                                    <div class="itee-imgg"><img src="/assets/img/senn1.png" alt=""></div>
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
                                            <a class="bask acty blue-bask"
                                               href="javascript:void(0)"><span>Под заказ</span></a>
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
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
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

                    <div class="maii-item">


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
                                    <div class="itee-imgg"><img src="/assets/img/senn1.png" alt=""></div>
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
                                            <a class="bask acty blue-bask"
                                               href="javascript:void(0)"><span>Под заказ</span></a>
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
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
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


            </div>
            <!--and senn-main-->


        </div>
    </div>


    <div class="saww wrap">
        <!--        <div class="liner"><span>Вы смотрели</span></div>-->

        {include file='layouts/slider_view.tpl'}

        <!-- SEO -->
        <div class="texx">
            {if $seo_text_bottom}{$seo_text_bottom}{/if}
        </div>
        <!-- SEO -->
    </div>

    {include file='layouts/orig.tpl'}


</div>


<div class="doww"><img src="/assets/img/verh.png" alt=""></div>