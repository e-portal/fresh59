<div class="small-product slider-till-here">
    <div class="container">
        <div class="liner" id="prod-accessories">
            <span>С этим товаром покупают</span>
            <a class="arrow-right bluee">Смотреть все</a>
        </div>


        <div class="parag parag-prev">
            <div class="parag-item active">Все категории</div>
            {foreach from=$assocItemsVmeste item=assocItemsCats name=similarItems}
                <div class="parag-item">{$assocItemsCats.name}</div>
            {/foreach}
        </div>


        <div class="senn-main watched-slider slider-more-prod">

            {foreach from=$assocItemsVmeste item=assocItemsCats name=similarItems}
                {foreach from=$assocItemsCats.items item=assocItem}
                    <pre>{$assocItem|@debug_print_var}</pre>
                    <div class="item-senn">
                        <a class="sench"
                           href="{iurl assoc.parent=$assocItem.parentname assoc.subdomain=$assocItem.subdomain assoc.cat_latin=$assocItem.cat_latin_single assoc.brand=$assocItem.brand assoc.item=$assocItem.name}">


                            {if $assocItem.id_availability == 1 || $item.id_availability == 4}
                                <h5 class="green">В наличии</h5>
                            {/if}
                            {if $assocItem.id_availability == 2}
                                <h5 class="gray">Наличие уточняйте</h5>
                            {/if}
                            {if $assocItem.id_availability == 3}
                                <h5 class="bluee">Под заказ</h5>
                            {/if}
                            <h4>
                                {if $assocItem.cat_onename}{$assocItem.cat_onename}{else}{$assocItem.cat}{/if} {$assocItem.brand}
                                {$assocItem.name}
                            </h4>


                            {*<div class="centr">
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
                        </div>*}
                    </div>
                {/foreach}
            {/foreach}

        </div>


    </div>
</div>