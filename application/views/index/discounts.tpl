<div class="seap wrap">
    <div class="discount">
        <a class="blue" href="/">Все новые поступления<span class="linn"></span></a>


        <div class="liner"><span>Неимоверные скидки</span></div>


        <div class="parag parag-home">
            <div class="parag-item">Отдельностоящая</div>
            <div class="parag-item">Встраиваемая</div>
            <div class="parag-item">Мелкая бытовая</div>
            <div class="parag-item">Красота и здоровье</div>
            <div class="parag-item">Для уборки</div>
            <div class="parag-item">Посуда</div>
            <div class="parag-item">Мойки и смесители</div>
            <div class="parag-item">Климатическая</div>
        </div>


        <div class="iteem-mainy">

            <div class="hate ">

                <div class="hate-item">

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
                                <div class="right-iteem">
                                    <div class="name-iteem">
                                        <h5 class="gray">Наличие уточняйте</h5>
                                        <h4>{$item.brand} {$item.name}</h4>
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
                                        <div class="cash">187 500 грн <span>205 500 грн</span></div>


                                        <div class="times">
                                            <div class="timer" data-year="2018" data-month="03" data-days="05"></div>

                                            <div class="right-times">
                                                <object type="lol/wut">
                                                    <a class="bask acty"
                                                       href="javascript:void(0)"><span>В корзину</span></a>
                                                </object>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="news">
                                        <div class="left-butt">
                                            <object type="lol/wut"><a href="">В избранное</a></object>
                                        </div>
                                        <div class="right-butt">
                                            <object type="lol/wut"><a href="">Сравнение</a></object>
                                        </div>
                                    </div>


                                </div>
                            </a>
                        </div>
                    {/foreach}

                </div>

            </div>

        </div><!--mainy end-->


    </div>
</div>