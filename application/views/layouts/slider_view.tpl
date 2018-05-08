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
                    <a class="sench" href="/catalog/item/{$vieweditems.id}" tabindex="0"
                       alt="{$vieweditems.brand} {$vieweditems.name}">

                        {*----------in stock--------*}
                        {if $vieweditems.id_availability == 1}
                            <div class="green">В наличии</div>
                        {elseif $vieweditems.id_availability == 3}
                            <div class="bluee">Под заказ</div>
                        {else}
                            <div class="gray">Наличие уточняйте</div>
                        {/if}
                        {*----------in stock--------*}

                        <h4>
                            {if $vieweditems.category_onename}
                                {$vieweditems.category_onename}
                            {else}
                                {$vieweditems.category}
                            {/if}
                            {$vieweditems.brand} {$vieweditems.name}
                        </h4>

                        <div class="centr">
                            <div class="itee-imgg">
                                <img {if $vieweditems.img} src="/images/catalog/{$vieweditems.img}" {else}
                                    src="{$url.img}/noimage.jpg" {/if}
                                        alt="{$vieweditems.name}-{$vieweditems.brand}">
                            </div>


                            {if $vieweditems.bonus_amount>0}
                                <div class="itee">
                                    <img src="/assets/img/izee0.png" alt="">
                                    <p>Вернем: <span>{$vieweditems.bonus_amount|round} грн</span></p>
                                </div>
                            {/if}







                            {*<div class="itee">
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
                            </div>*}
                        </div>
                    </a>
                    <object type="lol/wut">
                        <a href="/" class="otzv" tabindex="0">
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