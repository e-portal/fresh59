<div class="seap wrap ac_">
    <div class="discount">
        <a class="blue" href="/">Все новые поступления<span class="linn"></span></a>


        <div class="liner"><span>Неимоверные скидки</span></div>


        <div class="parag parag-home">
            <div class="parag-item parag-item_one active">Популярные модели</div>
            <div class="parag-item" onclick="topNewProductIndex(17,'act'); return false;">Отдельностоящая</div>
            <div class="parag-item" onclick="topNewProductIndex(7,'act'); return false;">Встраиваемая</div>
            <div class="parag-item" onclick="topNewProductIndex(44,'act'); return false;">Мелкая бытовая</div>
            <div class="parag-item" onclick="topNewProductIndex(193,'act'); return false;">Красота и здоровье</div>
            <div class="parag-item" onclick="topNewProductIndex(57,'act'); return false;">Для уборки</div>
            <div class="parag-item" onclick="topNewProductIndex(215,'act'); return false;">Посуда</div>
            <div class="parag-item" onclick="topNewProductIndex(27,'act'); return false;">Мойки и смесители</div>
            <div class="parag-item" onclick="topNewProductIndex(136,'act'); return false;">Климатическая</div>
        </div>


        <div class="iteem-mainy act_product">

            <div class="hate ">

                <div class="hate-item ">

                    {foreach from=$actionItems item=item name=action_items}
                    <div class="ityy">
                        <div class="hovyy"></div>
                        <a href="{iurl assoc.cat_latin=$item.cat_latin_single assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}">
                            <div class="left-iteem">
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
                                        <p>
                                            от
                                            <span>
                                                {if $item.rent >= 25}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=8}
                                                {elseif $item.rent > 12.5}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=6}
                                                {elseif $item.rent > 7.5}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                                                {else}
                                                    {math equation="x/y*$curs_evro_smarty|round" x=$item.price y=3}
                                                {/if}
                                            </span>
                                            грн/мес
                                        </p>
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
                                        <p>Лучшая <span>цена</span></p>
                                    </div>
                                {/if}
                                {if $item.acttype=='gift'}
                                    <div class="itee present">
                                        <div class="numeral"><img src="/assets/img/present-img.png" alt="present">
                                        </div>
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
                        </a>
                        <div class="right-iteem">
                            <div class="name-iteem">
                                {if 1 == $item.id_availability}
                                    <h5 class="green">В наличии</h5>
                                {/if}
                                {if 2 == $item.id_availability}
                                    <h5 class="gray">Наличие уточняйте</h5>
                                {/if}
                                {if 3 == $item.id_availability}
                                    <h5 class="blue">Под заказ</h5>
                                {/if}
                                <h4>
                                    {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}
                                    {$item.brand} {$item.name}
                                </h4>
                                <object type="lol/wut">
                                    <a href="#" class="otzv">
                                        <div class="left-otzv">
                                            <img src="/assets/img/patr.png" alt="">
                                        </div>
                                        <div class="right-otzv">
                                            <span>10 отзывов</span>
                                        </div>
                                    </a>
                                </object>
                                <div class="cash">

                                    {if $item.specprice && ($item.bdprice > $item.price) && (($item.bdprice - $item.price)/$item.price > 0.01) }
                                        {price $item.price $item.id_currency}
                                        <span>{price $item.bdprice} {$smarty.session.Currency.title}</span>
                                    {else}
                                        {price $item.price $item.id_currency} {$smarty.session.Currency.title}
                                    {/if}

                                </div>


                                <div class="times">
                                    <div class="timer"
                                         data-year="{getdate arr=$item.end_date arr='Y'}"
                                         data-month="{getdate arr=$item.end_date arr='m'}"
                                         data-days="{getdate arr=$item.end_date arr='d'}"></div>

                                    <div class="right-times">
                                        <object type="lol/wut">
                                            <a class="open-in-popup add-to-cart bask acty" {include file='layouts/cart-item.tpl' cart_item=$item}>
                                                <span>В корзину</span>
                                            </a>
                                        </object>
                                    </div>
                                </div>
                            </div>

                            <div class="news">
                                <div class="left-butt">
                                    <object type="lol/wut">
                                        <span>В избранное</span>
                                    </object>
                                </div>
                                <div class="right-butt" data-id="{$item.id}">
                                    <object type="lol/wut">
                                        <span>Сравнение</span>
                                    </object>
                                </div>
                            </div>


                        </div>

                    </div>

                    {if 0 == $smarty.foreach.action_items.iteration%2 && !$smarty.foreach.action_items.last}
                </div>
                <div class="hate-item">
                    {/if}
                    {if $smarty.foreach.action_items.last}
                </div>
                {/if}
                {/foreach}

            </div>

        </div>

    </div><!--mainy end-->


</div>
</div>