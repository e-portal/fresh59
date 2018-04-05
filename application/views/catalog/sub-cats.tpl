<div class="container">
    {if $pages->totalItemCount > 0}
        <div class="options wrap">

            {php}echo $this->navigation($this->menu)->breadcrumbs()->setPartial(array('catalog/breadcrumbs.tpl', 'default'));{/php}


            <div class="liner cent"><span>Стиральные машины</span></div>
            <div class="base-options">

                {*----------SORT----------*}
                {include file='catalog/subs-nav.tpl'}
                {*----------SORT----------*}

                <div class="right-options">
                    <div class="selec">
                        <p>Сортировать по:</p>


                        <div id=selectyBoxi>
                            <p class=valueTags name=selects>цена по возростанию<span></span></p>
                            <ul id=selectyMenuBoxi>
                                <li class=options>цены 0</li>
                                <li class=options>цены 4</li>
                                <li class=options>цены 5</li>

                            </ul>
                        </div>
                    </div>


                    <div class="share">
                        <p>Текущие акции:</p>

                        <div class="share-main">
                            <div class="share-item active">Вернем до 30%</div>
                            <div class="share-item">С подарками</div>

                            <div class="share-item">Вместе дешевле</div>
                        </div>


                    </div>


                    <div class="under-senn">
                        <div class="item-senn more-senn">
                            <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                               tabindex="-1" class="sench">

                                {*----------in stock--------*}
                                {if $top_item.id_availability == 1}
                                    <h5 class="green">В наличии</h5>
                                {/if}
                                {if $top_item.id_availability == 2}
                                    <h5 class="gray">Наличие уточняйте</h5>
                                {/if}
                                {if $top_item.id_availability == 3}
                                    <h5 class="blue">Под заказ</h5>
                                {/if}
                                {*----------in stock--------*}


                                <h4>{$item.brand} {$item.name}</h4>
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


                                <div class="front-wrap">
                                    <div class="front">

                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>

                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>
                                <a href="/" class="otzv" tabindex="-1">
                                    <div class="left-otzv">
                                        <img src="/assets/img/patr.png" alt="">
                                    </div>
                                    <div class="right-otzv">
                                        <span>10 отзывов</span>
                                    </div>
                                </a>
                                <div class="bakk">
                                    <div class="left-bakk">
                                        <p>2 500 грн</p>
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>
                                    <div class="right-bakk">
                                        <object type="lol/wut">
                                            <a class="bask acty" href="javascript:void(0)"
                                               tabindex="-1"><span>В корзину</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
                                <h5 class="gray">Наличие уточняйте</h5>
                                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                                <div>
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
                                        <div class="itee">
                                            <img src="/assets/img/izee3.png" alt="">
                                            <p>от <span>1200</span> грн/мес</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>
                                <!--<object type="lol/wut"><a href="javascript:void(0)" class="morr">Больше +</a></object>-->


                                <object type="lol/wut"><a href="/otzv" class="otzv" tabindex="-1">
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
                                            <a class="bask acty" href="javascript:void(0)"
                                               tabindex="-1"><span>В корзину</span></a></object>
                                    </div>
                                </div>
                            </a>
                            <div class="hovv">


                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
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

                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>

                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty" href="javascript:void(0)"
                                               tabindex="-1"><span>В корзину</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>


                            <div class="hovv">


                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
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

                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>

                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty blue-bask" href="javascript:void(0)"
                                               tabindex="-1"><span>Под заказ</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">


                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
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

                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>


                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty" href="javascript:void(0)"
                                               tabindex="-1"><span>В корзину</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">


                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
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

                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>


                                </div>
                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty" href="javascript:void(0)"
                                               tabindex="-1"><span>В корзину</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="/assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>

                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>


                                </div>


                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>


                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty blue-bask" href="javascript:void(0)"
                                               tabindex="-1"><span>Под заказ</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn  ad-sale">
                            <a class="sench" href="javascript:void(0)" tabindex="-1">
                                <p class="ad-blue">Самые выгодные покупки</p>
                                <p class="ad-cheaper">У нас дешевле! <br> скидки <b>до 60%</b></p>
                                <div>
                                    <img src="/assets/img/saucepan.png" alt="sale saucepan">
                                </div>
                            </a>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="/assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>


                                </div>

                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty blue-bask" href="javascript:void(0)"
                                               tabindex="-1"><span>Под заказ</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="/assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>

                                    <div class="itee present">
                                        <div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>
                                        <p>Подарок!</p>
                                        <img src="/assets/img/present.png" alt="present">
                                    </div>


                                </div>


                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>

                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty blue-bask" href="javascript:void(0)"
                                               tabindex="-1"><span>Под заказ</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="/assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>

                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>


                                </div>


                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>


                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
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
                                            <a class="bask acty blue-bask" href="javascript:void(0)"
                                               tabindex="-1"><span>Под заказ</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-senn more-senn">
                            <a class="sench" href="/" tabindex="-1">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="/assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>


                                </div>


                                <div class="front-wrap">
                                    <div class="front">
                                        <table>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Максимальная загрузка:</p></td>
                                                <td><span>6 кг</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Тип стиральной машины:</p></td>
                                                <td><span>Фронтальная</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс энергопотребления:</p></td>
                                                <td><span>А+</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс отжима:</p></td>
                                                <td><span>А</span></td>
                                            </tr>
                                            <tr>
                                                <td><p>Класс стирки:</p></td>
                                                <td><span>C</span></td>
                                            </tr>
                                        </table>


                                    </div>
                                    <a href="javascript:void(0)" class="morr">Больше +</a>
                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv" tabindex="-1">
                                        <div class="left-otzv">
                                            <img src="/assets/img/patr.png" alt="">
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
                                            <a class="bask acty blue-bask" href="javascript:void(0)"
                                               tabindex="-1"><span>Под заказ</span></a>
                                        </object>

                                    </div>
                                </div>
                            </a>
                            <div class="hovv">
                                <div class="news">
                                    <div class="left-butt">
                                        <a href="" tabindex="-1">В избранное</a>
                                    </div>
                                    <div class="right-butt">
                                        <a href="" tabindex="-1">Сравнение</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="d" style="clear: both"></div>


                    </div>


                    <!--            START pagination-->
                    {if $pages->pageCount > 1}
                        <div class="blocks-pagination">
                            {if $pages->current > 1}
                                <a class="blocks-pagination-back blocks-pagination-arrow"
                                   href="{if $pages->current-1=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$pages->current-1}{/if}"></a>
                            {/if}
                            {if $pages->firstPageInRangeNum!=1}
                                <a class="pagin-number active-pagin-number" href="{$firstPageUrl}">1</a>
                                <span>...</span>
                            {/if}
                            {if $pages->pagesInRange}
                                {foreach from=$pages->pagesInRange item=p key=k}
                                    {if $pages->current!=$k}
                                        <a class="pagin-number"
                                           href="{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}">{$k}</a>
                                    {else}
                                        <span class="pagin-number pagin-number-active">{$pages->current}</span>
                                    {/if}
                                {/foreach}
                            {/if}
                            {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                                <span>...</span>
                                <a class="pagin-number"
                                   href="{$firstPageUrl}/page/{$pages->pageCount}">{$pages->pageCount}</a>
                            {/if}

                            {if $pages->current < $pages->pageCount}
                                <a class="blocks-pagination-forward blocks-pagination-arrow"
                                   href="{$firstPageUrl}/page/{$pages->current+1}"></a>
                            {/if}
                        </div>
                        <!--            End pagination-->
                    {/if}


                    <div class="owls interest">
                        {*----------ARTICLES----------*}
                        <div class="container">
                            <a class="blue" href="javascript:void(0)">Все советы<span class="linn"></span></a>
                            <div class="liner"><span>Полезно и интересно</span></div>
                            <div class="owl-main">

                                <div class="owl interest-slide">

                                    {foreach from=$articles item=article}
                                        <div class="items">
                                            <a href="/articles/{$article.url|mblower}" class="items">

                                                {if isset($article.img) }
                                                    <img src="/assets/img/articles/{$article.img}">
                                                {else}
                                                    <img src="/assets/img/articles/art{1|rand:6}.png">
                                                    {*<img src="/assets/img/noimage.png">*}

                                                {/if}

                                                {*<h4>{$article.title|default:'title'}</h4>*}
                                                <h4>{$article.announce|default:'announce'}</h4>

                                                <div class="item-comen">
                                                    <div class="clock">
                                                        <img src="/assets/img/clock.png" alt="">
                                                        <p>{mdates arr=$article.date}</p>
                                                    </div>
                                                    <div class="clock">
                                                        <img src="/assets/img/chat.png" alt="">
                                                        <p>423</p>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    {/foreach}

                                </div>

                            </div>
                        </div>
                        {*----------ARTICLES----------*}
                        <div class="interest-sale">
                            <p class="ad-blue">Самые выгодные покупки</p>
                            <p class="ad-cheaper">У нас дешевле! <br> скидки <b>до 60%</b></p>
                            <div><img src="/assets/img/interest-sale.png" alt="sale"></div>
                        </div>
                    </div>

                    {*-----------LAST VIEWED-----------*}
                    {include file='layouts/slider_view.tpl' small=true}
                    {*-----------LAST VIEWED-----------*}


                </div>
            </div>
        </div>
    {else}
        По заданным параметрам ничего не найдено
        <div class="khob acty">вернуться назад
            <a href="{$baseUrl}" class="link" tabindex="-1"></a>
        </div>
    {/if}
    <!-- SEO -->
    <div class="fashion wrap">
        {$seo_text_bottom|default:''}
    </div>
    <!-- SEO -->
    {include file='layouts/orig.tpl'}
</div>
<div class="doww"><img src="/assets/img/verh.png" alt=""></div>