<div class="senn senn-scrol">
    <div class="senn-container wrap">
        <a class="blue" href="/">Все новые поступления<span class="linn"></span></a>


        <div class="liner"><span>Топ продаж</span></div>
        <div class="parag parag-prev ">
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
                    {foreach from=$topsales_items item=item name=topsales_items}
                    {$item|@debug_print_var}
                    <div class="item-senn">
                        <a class="sench"
                           href="{iurl  assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">

                            {if 1 == $item.id_availability}
                                <h5 class="green">В наличии</h5>
                            {/if}
                            {if 2 == $item.id_availability}
                                <h5 class="gray">Наличие уточняйте</h5>
                            {/if}
                            {if 3 == $item.id_availability}
                                <h5 class="blue">Под заказ</h5>
                            {/if}

                            <h4>{$item.brand} {$item.name}</h4>


                            <div class="centr">
                                <div class="itee-imgg">
                                    <img src="/images/catalog/{$item.imgid}_s.{$item.imgext}"
                                         alt="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name} {'купить'}"
                                         title="{if $item.cat_onename}{$item.cat_onename|mblower}{else}{$item.cat|mblower}{/if} {$item.brand} {$item.name}">
                                </div>
                                {if $item.bonus_amount>0}
                                    <div class="itee">
                                        <img src="/assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                    </div>
                                {/if}
                                {if $item.id_availability == 1}
                                    <div class="itee">
                                        <img src="/assets/img/izee1.png" alt="">
                                        <p>от <span>{$item.price/$rent_index*$curs_evro_smarty|round}</span> грн/мес</p>
                                    </div>
                                {/if}
                                <div class="itee">
                                    <img src="/assets/img/izee3.png" alt="">
                                    <p>от
                                        <span>{$item.price*0.0099*$curs_evro_smarty+$item.price/24*$curs_evro_smarty|round}</span>
                                        грн/мес</p>
                                </div>
                                {if $item.id_brand == '26' && $item.id_category != 60}
                                    <div class="itee">
                                        <img src="/assets/img/izee2.png" alt="">
                                        <p>Гарантия <span>12</span> мес</p>
                                    </div>
                                {/if}
                                {if $item.bestprice > $item.price || $item.id2==41385}
                                    <div class="itee">
                                        <img src="/assets/img/izee4.png" alt="">
                                        <p>Лучша <span>цена</span></p>
                                    </div>
                                {/if}
                                {if $item.acttype=='gift'}
                                    <div class="itee present">
                                        <div class="numeral"><img src="/assets/img/present-img.png" alt="present"></div>
                                        <p>Подарок!</p>
                                        <img src='/images/catalog/{gift assoc.id=$item.actid}' alt="gift"/>
                                    </div>
                                {/if}
                                {if $item.bestprice > $item.price || $item.id2==41385}
                                    <div class="itee change">
                                        <img src="/assets/img/izee5.png" alt="">
                                        <p>Замена</p>
                                    </div>
                                {/if}


                            </div>
                            <object type="lol/wut">
                                <span class="otzv">
                                    <div class="left-otzv">
                                        <img src="assets/img/patr.png" alt="">
                                    </div>
                                    <div class="right-otzv">
                                        <span>10 отзывов</span>
                                    </div>
                                </span>
                            </object>

                            <div class="bakk">
                                <div class="left-bakk">
                                    <p>{price $item.price $item.id_currency} {$smarty.session.Currency.title}
                                        грн</p>
                                    {if $item.bonus_amount>0}
                                        <p>Вернем: <span>{$item.bonus_amount|round} грн</span></p>
                                    {/if}
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

                    {if 0 === $smarty.foreach.topsales_items.index%6 && !$smarty.foreach.topsales_items.last && !$smarty.foreach.topsales_items.first}
                    <div class="d" style="clear: both"></div>
                </div>
                <div class="maii-item">

                    {/if}
                    {if $smarty.foreach.topsales_items.last}
                        <div class="d" style="clear: both"></div>
                    {/if}

                    {/foreach}
                </div>
            </div>
            <div class="slick-ipad">
                <div class="slide-item">
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="green">В наличии</h5>
                                <h4>Микроволновая печь GORENJE MO 6240</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn0.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                                    <div class="itee-imgg"><img src="assets/img/senn2.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee3.png" alt="">
                                        <p>от <span>1200</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee2.png" alt="">
                                        <p>Гарантия <span>12</span> мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee4.png" alt="">
                                        <p>Лучша <span>цена</span></p>
                                    </div>


                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX </h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn3.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>


                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>


                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                    </div>

                </div>
                <div class="slide-item">
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="gray">Наличие уточняйте</h5>
                                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn1.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee3.png" alt="">
                                        <p>от <span>1200</span> грн/мес</p>
                                    </div>
                                </div>
                                <object type="lol/wut"><a href="/otzv" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="gray">Наличие уточняйте</h5>
                                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn1.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee3.png" alt="">
                                        <p>от <span>1200</span> грн/мес</p>
                                    </div>
                                </div>
                                <object type="lol/wut"><a href="/otzv" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                <div class="slide-item">
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="green">В наличии</h5>
                                <h4>Микроволновая печь GORENJE MO 6240</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn0.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                                    <div class="itee-imgg"><img src="assets/img/senn2.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee3.png" alt="">
                                        <p>от <span>1200</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee2.png" alt="">
                                        <p>Гарантия <span>12</span> мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee4.png" alt="">
                                        <p>Лучша <span>цена</span></p>
                                    </div>


                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX </h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn3.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>


                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                <h5 class="bluee">Под заказ</h5>
                                <h4>Чайник ELECTROLUX EEWA 7300 Electro</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn7.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>


                                </div>
                                <object type="lol/wut">
                                    <a href="/" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                    </div>

                </div>
                <div class="slide-item">
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="gray">Наличие уточняйте</h5>
                                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn1.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee3.png" alt="">
                                        <p>от <span>1200</span> грн/мес</p>
                                    </div>
                                </div>
                                <object type="lol/wut"><a href="/otzv" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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
                    <div class="slide-block">
                        <div class="item-senn">
                            <a class="sench" href="/">
                                <h5 class="gray">Наличие уточняйте</h5>
                                <h4>Плита кухонная GORENJE G 6111 WJ</h4>
                                <div class="centr">
                                    <div class="itee-imgg"><img src="assets/img/senn1.png" alt=""></div>
                                    <div class="itee">
                                        <img src="assets/img/izee0.png" alt="">
                                        <p>Вернем: <span>500 грн</span></p>
                                    </div>

                                    <div class="itee">
                                        <img src="assets/img/izee1.png" alt="">
                                        <p>от <span>500</span> грн/мес</p>
                                    </div>
                                    <div class="itee">
                                        <img src="assets/img/izee3.png" alt="">
                                        <p>от <span>1200</span> грн/мес</p>
                                    </div>
                                </div>
                                <object type="lol/wut"><a href="/otzv" class="otzv">
                                        <div class="left-otzv">
                                            <img src="assets/img/patr.png" alt="">
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
                                            <a class="bask acty"
                                               href="javascript:void(0)"><span>В корзину</span></a>
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

        </div> <!--and senn-main-->


    </div>
</div>