{*<div class="other-items-box">
    <ul>
        {foreach from=$otherItems item=brand}
            <li>
                <span>{$brand.brand}</span>
                <ul>
                    {foreach from=$brand.items item=itemtopsale}
                        <li class="data-item-{$itemtopsale.id}">
                            <em><a href="/{$cat_info.subdomain}{iurl assoc.cat_latin=$itemtopsale.cat_latin_single assoc.parent=$itemtopsale.parentname assoc.cat=$itemtopsale.cat_onename assoc.brand=$itemtopsale.brand assoc.item=$itemtopsale.name}"
                                   {if $itemtopsale.id_availability== 2 || $itemtopsale.id_availability==
                                   3}class="disabled"
                                   rel="tooltip" {/if} {if $itemtopsale.id_availability ==
                                2}data-original-title="Наличие уточняйте"{/if} {if $itemtopsale.id_availability
                                == 3}data-original-title="Под заказ"{/if}>{$itemtopsale.name}</a></em>
                            {if $itemtopsale.acttype=='gift'}
                                <i class="mini-icon mini-icon-gift" rel="tooltip"
                                   data-original-title="Подарок"></i>
                            {/if}
                            {if $itemtopsale.specprice && ($itemtopsale.bdprice > $itemtopsale.price) &&
                            (($itemtopsale.bdprice - $itemtopsale.price)/$itemtopsale.price > 0.01)}
                                <i class="mini-icon mini-icon-sale" rel="tooltip"
                                   data-original-title="Скидка"></i>
                            {/if}
                            {if $itemtopsale.bestprice > $itemtopsale.price}
                                <i class="mini-icon mini-icon-price" rel="tooltip"
                                   data-original-title="Лучшая цена"></i>
                            {/if}
                        </li>
                    {/foreach}
                </ul>
            </li>
        {/foreach}
    </ul>
</div>*}

{*<pre>{$otherItems|var_dump}</pre>*}
{*$assocItemsVmeste*}

<div class="small-product">
    <div class="container">
        <div class="liner"><span>Другие модели</span></div>


        <div class="parag">
            <div class="other-model">{$item.category}</div>
            {foreach from=$otherItems item=brand}
                <div class="other-model other-model-item"><a>{$brand.brand}</a> <span>({$brand.items|@count})</span>
                </div>
            {/foreach}

        </div>

        <div class="senn-main watched-slider slider-more-prod">
            <div class="item-senn">
                <a class="sench" href="/">
                    <h5 class="gray">Наличие уточняйте</h5>
                    <h4>Чайник Electrolux</h4>
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
            <div class="item-sitenenn">
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

        </div>


    </div>
</div>