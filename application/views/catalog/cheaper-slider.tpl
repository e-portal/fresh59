<!--           СЛАЙДЕР ВМЕСТЕ ДЕШЕВЛЕ             -->

<div class="cheaper-together">
    <div class="liner smaller-liner"><span>Вместе дешевле!</span></div>
    <div class="cheaper-slider">
        {foreach from=$assocItems item=assocItems name=similarItems}
            {foreach from=$assocItems.items item=assocItem}
                {if $item.rent < 7.5 && $assocItem.rent < 7.5}
                {else}
                    <div class="">
                        <div class="cheaper-slide">
                            <div class="cheaper-prod flexibal">
                                <div class="cheaper-prod-img">
                                    <img src="{$url.img}/catalog/{$item.images[0].id}_s.{$item.images[0].imgext}"/>
                                </div>
                                <div class="cheaper-prod-text">
                                    <div class="prod-code">Код товара {$item.id}</div>
                                    <a class="cheaper-prod-title">{$item.category_onename} {$item.brand} {$item.name}</a>
                                    <div class="price">{price $item.price $item.id_currency} грн</div>
                                </div>
                            </div>
                            <div class="border-plus"><span>+</span></div>
                            <div class="cheaper-prod flexibal">
                                <div class="cheaper-prod-img">
                                    <img src="/images/catalog/{$assocItem.imgid}_s.{$assocItem.imgext}"/>
                                </div>
                                <div class="cheaper-prod-text">
                                    <div class="prod-code">Код товара {$assocItem.id} <span class="red-sale">-5%</span>
                                    </div>
                                    <a href="{iurl assoc.parent=$assocItem.parentname assoc.subdomain=$assocItem.subdomain assoc.cat_latin=$assocItem.cat_latin_single assoc.brand=$assocItem.brand assoc.item=$assocItem.name}"
                                       class="cheaper-prod-title">
                                        {$assocItem.cat_onename} {$assocItem.brand} {$assocItem.name}
                                    </a>
                                    <div class="old-price">700 грн</div>
                                    <div class="red price">500 грн</div>
                                </div>
                            </div>
                            <div class="border-plus"><span>=</span></div>
                            <div class="cheaper-prod flexibal">
                                <div class="cheaper-prod-img">
                                </div>
                                <div class="cheaper-prod-text">
                                    <div class="old-price">12 700 грн</div>
                                    <div class="red price">12 500 грн</div>
                                    <div class="busket-marg">
                                        <object type="lol/wut">
                                            <a class="bask acty" href="javascript:void(0)"><span>В корзину</span></a>
                                        </object>
                                    </div>
                                    <div class="oplata-part">
                                        Купить в <a class="green-link">Кредит</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/if}
            {/foreach}
        {/foreach}
    </div>
</div>
<!--           end СЛАЙДЕР ВМЕСТЕ ДЕШЕВЛЕ             -->