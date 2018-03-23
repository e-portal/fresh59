<div class="container">
    <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Статьи</span>
            <meta itemprop="position" content="2">
        </div>

    </div>
    <h1 class="liner cent"><span>Статьи</span></h1>
    <div class="ourr left-right-banner">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">
            <div class="three-column">
                {foreach from=$articles item=item name=footer_articles}

                <pre>
                    {$item.date|var_dump}
                </pre>

                <div class="one-article">

                    {if isset($item.img) }
                    <div class="one-article-img">
                        <img src="/assets/img/articles/{$item.img}">
                    </div>
                    {/if}

                    <div class="one-article-text-contain">
                        <a href="/articles/{$item.url|mblower}"><h3>{$item.announce}</h3></a>
                        <p>{$item.short_text}</p>
                    </div>

                    <div class="one-article-date-btn">
                        <div class="date">{mdates $item.date}</div>
                        {if isset($item.review) }
                        <div class="rewiev">
                            {$item.review}
                        </div>
                        {/if}
                        <div class="rewiev">24</div>
                        <a href="/articles/{$item.url|mblower}" class="khob acty">Подробнее</a>
                    </div>
                </div>
                {/foreach}

            </div>
            <!--            START pagination-->
            {assign var=pages value=$paginator->getPages()}
            {if $pages->pageCount > 1}
            <div class="blocks-pagination">
                {if $pages->current > 1}
                <a class="blocks-pagination-back blocks-pagination-arrow"
                   href="{if $pages->current-1=='1'}/articles{else}/articles/page/{$pages->current-1}{/if}"></a>
                {/if}
                {if $pages->firstPageInRangeNum!=1}
                <a class="pagin-number active-pagin-number" href="/articles">1</a>
                <span>.</span><span>.</span><span>.</span>
                {/if}
                {if $pages->pagesInRange}
                {foreach from=$pages->pagesInRange item=p key=k}
                {if $pages->current!=$k}
                <a class="pagin-number" href="{if $k=='1'}/articles{else}/articles/page/{$k}{/if}">{$k}</a>
                {else}
                <span class="pagin-number pagin-number-active">{$pages->current}</span>
                {/if}
                {/foreach}
                {/if}
                {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                <span>.</span><span>.</span><span>.</span>
                <a class="pagin-number" href="/articles/page/{$pages->pageCount}">{$pages->pageCount}</a>
                {/if}

                {if $pages->current < $pages->pageCount}
                <a class="blocks-pagination-forward blocks-pagination-arrow"
                   href="/articles/page/{$pages->current+1}"></a>
                {/if}
            </div>
            <!--            End pagination-->
        </div>
    </div>
    <div class="small-product">
        <a class="blue" href="javascript:void(0)">Все новые поступления<span class="linn"></span></a>
        <div class="liner"><span>Вы смотрели</span></div>


        <div class="senn-main watched-slider slider-more-prod">
            <div class="item-senn">
                <a class="sench" href="/">
                    <h5 class="gray">Наличие уточняйте</h5>
                    <h4>Чайник Electrolux</h4>
                    <div class="centr">
                        <div class="itee-imgg"><img src="./img/senn0.png" alt=""></div>
                        <div class="itee">
                            <img src="./img/izee0.png" alt="">
                            <p>Вернем: <span>500 грн</span></p>
                        </div>

                        <div class="itee">
                            <img src="./img/izee1.png" alt="">
                            <p>от <span>500</span> грн/мес</p>
                        </div>


                    </div>
                    <object type="lol/wut">
                        <a href="/" class="otzv">
                            <div class="left-otzv">
                                <img src="./img/patr.png" alt="">
                            </div>
                            <div class="right-otzv">
                                <span>10 отзывов</span>
                            </div>
                        </a>
                    </object>

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
                    <h4>Наушники Monster beats Monster beats</h4>
                    <div class="centr">
                        <div class="itee-imgg"><img src="./img/senn4.png" alt=""></div>
                        <div class="itee">
                            <img src="./img/izee0.png" alt="">
                            <p>Вернем: <span>500 грн</span></p>
                        </div>

                        <div class="itee">
                            <img src="./img/izee1.png" alt="">
                            <p>от <span>500</span> грн/мес</p>
                        </div>


                    </div>
                    <object type="lol/wut">
                        <a href="/" class="otzv">
                            <div class="left-otzv">
                                <img src="./img/patr.png" alt="">
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
                        <div class="itee-imgg"><img src="./img/senn5.png" alt=""></div>
                        <div class="itee">
                            <img src="./img/izee0.png" alt="">
                            <p>Вернем: <span>500 грн</span></p>
                        </div>

                        <div class="itee">
                            <img src="./img/izee1.png" alt="">
                            <p>от <span>500</span> грн/мес</p>
                        </div>


                    </div>
                    <object type="lol/wut">
                        <a href="/" class="otzv">
                            <div class="left-otzv">
                                <img src="./img/patr.png" alt="">
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
                    <h4>Стиральная машина Electro ELECTROLUX</h4>
                    <div class="centr">
                        <div class="itee-imgg"><img src="./img/senn2.png" alt=""></div>
                        <div class="itee">
                            <img src="./img/izee0.png" alt="">
                            <p>Вернем: <span>500 грн</span></p>
                        </div>

                        <div class="itee">
                            <img src="./img/izee1.png" alt="">
                            <p>от <span>500</span> грн/мес</p>
                        </div>
                        <div class="itee">
                            <img src="./img/izee3.png" alt="">
                            <p>от <span>1200</span> грн/мес</p>
                        </div>
                        <div class="itee">
                            <img src="./img/izee2.png" alt="">
                            <p>Гарантия <span>12</span> мес</p>
                        </div>
                        <div class="itee">
                            <img src="./img/izee4.png" alt="">
                            <p>Лучша <span>цена</span></p>
                        </div>


                    </div>
                    <object type="lol/wut">
                        <a href="/" class="otzv">
                            <div class="left-otzv">
                                <img src="./img/patr.png" alt="">
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
            <div class="item-sitenenn">
                <a class="sench" href="/">
                    <h5 class="green">В наличии</h5>
                    <h4>Стиральная машина Electro ELECTROLUX</h4>
                    <div class="centr">
                        <div class="itee-imgg"><img src="./img/senn2.png" alt=""></div>
                        <div class="itee">
                            <img src="./img/izee0.png" alt="">
                            <p>Вернем: <span>500 грн</span></p>
                        </div>

                        <div class="itee">
                            <img src="./img/izee1.png" alt="">
                            <p>от <span>500</span> грн/мес</p>
                        </div>
                        <div class="itee">
                            <img src="./img/izee3.png" alt="">
                            <p>от <span>1200</span> грн/мес</p>
                        </div>
                        <div class="itee">
                            <img src="./img/izee2.png" alt="">
                            <p>Гарантия <span>12</span> мес</p>
                        </div>
                        <div class="itee">
                            <img src="./img/izee4.png" alt="">
                            <p>Лучша <span>цена</span></p>
                        </div>


                    </div>
                    <object type="lol/wut">
                        <a href="/" class="otzv">
                            <div class="left-otzv">
                                <img src="./img/patr.png" alt="">
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
                        <div class="itee-imgg"><img src="./img/senn3.png" alt=""></div>
                        <div class="itee">
                            <img src="./img/izee0.png" alt="">
                            <p>Вернем: <span>500 грн</span></p>
                        </div>

                        <div class="itee">
                            <img src="./img/izee1.png" alt="">
                            <p>от <span>500</span> грн/мес</p>
                        </div>


                    </div>
                    <object type="lol/wut">
                        <a href="/" class="otzv">
                            <div class="left-otzv">
                                <img src="./img/patr.png" alt="">
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

        </div>
    </div>
    <div class="orig">
        <div class="container">
            <div class="orii">
                <div class="orig-item">
                    <img src="./img/orig1.png" alt="">
                    <p><span>100% оригинал</span><br> от европейских производителей</p>
                </div>


                <div class="orig-item">
                    <img src="./img/orig2.png" alt="">
                    <p><span>Акции!<br> Подарки! Скидки!</span>
                        <br>каждые 2-е недели что-то
                        новенькое</p>
                </div>


                <div class="orig-item">
                    <img src="./img/orig3.png" alt="">
                    <p>Быстрая доставка в любой
                        город Украины. От 2000 грн
                        по Киеву <span>БЕСПЛАТНО</span></p>
                </div>


                <div class="orig-item">
                    <img src="./img/orig4.png" alt="">
                    <p>Наши менеджеры<br>
                        самые отзывчивые и
                        профессиональные</p>
                </div>

            </div>
        </div>
    </div>
    <div class="doww"><img src="./img/verh.png" alt=""></div>
</div>

{/if}
<!-- / .pager -->