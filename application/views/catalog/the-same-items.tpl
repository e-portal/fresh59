<div class="small-product">
    <div class="container">
        <div class="liner"><span>Другие модели</span></div>

        <div class="parag">
            <div class="other-model">{$item.category}</div>
            {*<pre>{$cat_info|@debug_print_var}</pre>*}
            {foreach from=$otherItems item=brand}
                <div class="other-model other-model-item">
                    <a href="{brandurl assoc.subdomain=$cat_info.subdomain
                    assoc.cat_latin=$cat_info.latin_name
                    assoc.brand=$brand.brand}">
                        {$brand.brand}
                    </a>
                    <span>({$brand.items|@count})</span>
                </div>
            {/foreach}

        </div>
        <div class="watched-slider">
            {assign var="slide_iteration" value=0}
            {foreach from=$otherItems item=brand name=slider_brands}
                {foreach from=$brand.items item=itemtopsale name=slider_items}
                    {if $item.id != $itemtopsale.id && $slide_iteration <= 15}
                        {assign var="slide_iteration" value=$slide_iteration+1}
                        <div class="item-senn">
                            <a class="sench"
                               href="/{$cat_info.subdomain}{iurl assoc.cat_latin=$itemtopsale.cat_latin_single assoc.parent=$itemtopsale.parentname assoc.cat=$itemtopsale.cat_onename assoc.brand=$itemtopsale.brand assoc.item=$itemtopsale.name}">

                                {*<pre>{$itemtopsale.id_availability|@debug_print_var}</pre>*}

                                {if ($item.id_availability === '4')}
                                    <h5 class="green">В наличии</h5>
                                {/if}
                                {if $itemtopsale.id_availability === '2'}
                                    <h5 class="gray">Наличие уточняйте</h5>
                                {/if}
                                {if $itemtopsale.id_availability === '3'}
                                    <h5 class="bluee">Под заказ</h5>
                                {/if}
                                <h4>
                                    {if $itemtopsale.cat_onename}{$itemtopsale.cat_onename}{else}{$itemtopsale.cat}{/if} {$itemtopsale.brand}
                                    {$itemtopsale.name}
                                </h4>


                                <div class="centr">
                                    <div class="itee-imgg">
                                        <img {if $itemtopsale.imgid} src="/images/catalog/{$itemtopsale.imgid}_s.{$itemtopsale.imgext}" {else}
                                            src="{$url.img}/no-image.jpg" {/if}
                                                alt="{$itemtopsale.name}-{$itemtopsale.brand}">
                                    </div>


                                    {if $itemtopsale.bonus_amount>0}
                                        <div class="itee">
                                            <img src="/assets/img/izee0.png" alt="">
                                            <p>Вернем: <span>{$itemtopsale.bonus_amount|round} грн</span></p>
                                        </div>
                                    {/if}
                                    {if $itemtopsale.id_availability == 1}
                                        <div class="itee">
                                            <img src="/assets/img/izee1.png" alt="">
                                            <p>
                                                от
                                                <span>
                                                    {if $itemtopsale.rent >= 25}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$itemtopsale.price y=8}
                                                    {elseif $itemtopsale.rent > 12.5}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$itemtopsale.price y=6}
                                                    {elseif $itemtopsale.rent > 7.5}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$itemtopsale.price y=3}
                                                    {else}
                                                        {math equation="x/y*$curs_evro_smarty|round" x=$itemtopsale.price y=3}
                                                    {/if}
                                                </span>
                                                грн/мес
                                            </p>
                                        </div>
                                        <div class="itee">
                                            <img src="/assets/img/izee3.png" alt="">
                                            <p>от
                                                <span>{$itemtopsale.price*0.0099*$curs_evro_smarty+$itemtopsale.price/24*$curs_evro_smarty|round}</span>
                                                грн/мес
                                            </p>
                                        </div>
                                    {/if}
                                    {if $itemtopsale.id_brand == '26' && $itemtopsale.id_category != 60}
                                        <div class="itee">
                                            <img src="/assets/img/izee2.png" alt="">
                                            <p>Гарантия <span>12</span> мес</p>
                                        </div>
                                    {/if}
                                    {if $itemtopsale.bestprice > $itemtopsale.price || $itemtopsale.id2==41385}
                                        <div class="itee">
                                            <img src="/assets/img/izee4.png" alt="">
                                            <p>Лучшая <span>цена</span></p>
                                        </div>
                                    {/if}
                                    {if $itemtopsale.bestprice > $itemtopsale.price || $itemtopsale.id2==41385}
                                        <div class="itee change">
                                            <img src="/assets/img/izee5.png" alt="">
                                            <p>Замена</p>
                                        </div>
                                    {/if}
                                    {if $itemtopsale.acttype=='gift'}
                                        <div class="itee present">
                                            <div class="numeral">
                                                <img src="/assets/img/present-img.png" alt="present">
                                            </div>
                                            <p>Подарок!</p>
                                            <img src='/images/catalog/{gift assoc.id=$itemtopsale.actid}'/>
                                        </div>
                                    {/if}

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
                                        <p>{price $itemtopsale.price $item.id_currency} {$smarty.session.Currency.title}</p>
                                        <p>Вернем: <span>{$itemtopsale.bonus_amount|round} грн</span></p>
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
                    {/if}
                {/foreach}
            {/foreach}
        </div>
    </div>
</div>