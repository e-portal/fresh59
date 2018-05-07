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
            {*<ul>
                {foreach from=$smarty.session.items item=vieweditems name=content_vieweditems}
                    *}{*{if $smarty.foreach.content_vieweditems.index < 1}*}{*
                        <li>
                            *}{*<a href="/catalog/item/{$vieweditems.id}" alt="{$vieweditems.brand} {$vieweditems.name}">
                                {$vieweditems.brand} {$vieweditems.name}
                            </a>*}{*
                            *}{*<pre>{$vieweditems|var_dump}</pre>*}{*
                            <pre>{$vieweditems|@debug_print_var}</pre>
                        </li>
                    *}{*{/if}*}{*
                {/foreach}
            </ul>*}

            {foreach from=$smarty.session.items item=vieweditems name=content_vieweditems}
                <div class="item-senn">
                    <a class="sench" href="/" tabindex="0">
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
                            <div class="itee present">
                                <div class="numeral"><img src="./img/present-img.png" alt="present"></div>
                                <p>Подарок!</p>
                                <img src="./img/present.png" alt="present">
                            </div>
                            <div class="itee change">
                                <img src="./img/izee5.png" alt="">
                                <p>Замена</p>
                            </div>
                        </div>
                    </a>
                    <object type="lol/wut">
                        <a href="/" class="otzv" tabindex="0">
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
                                <a class="bask acty" href="javascript:void(0)" tabindex="0"><span>В корзину</span></a>
                            </object>

                        </div>
                    </div>
                    <div class="hovv">


                        <div class="news">
                            <div class="left-butt">
                                <a href="" tabindex="0">В избранное</a>
                            </div>
                            <div class="right-butt">
                                <a href="" tabindex="0">Сравнение</a>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        {/if}
    </div>
</div>