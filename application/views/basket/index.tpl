{include file=_header_new.tpl}

{if $smarty.session.Basket.items || $smarty.session.Basket.sets}

<div class="container">
    <div class="row">
        <div class="col-sm-9 main_cart">
            <h1>Корзина</h1>
            <form>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr class="success">
                                <td class="text-center"></td>
                                <td class="text-center">Наименование</td>
                                <td class="text-center">Количество</td>
                                <td class="text-center">Сумма</td>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$data.Basket.items item=item key=id}
                                <tr>
                                    <td class="text-center">
                                        {if $data.itemsInfo[$id].imgid}
                                            <img src="/images/catalog/{$data.itemsInfo[$id].imgid}_s.{$data.itemsInfo[$id].imgext}" alt="" title="" class="img-thumbnail">
                                        {else}
                                            <img src="{$url.img}/noimage.jpg" alt="" />
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        <a href="/catalog/item/{$id}" class="basket_product_title">
                                            {$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}
                                            {if $data.itemsInfo[$id].bonus_amount > 0}<p class="bonus"><span>+ <span class='data-bonusSum'>{math equation="x*y" x=$data.itemsInfo[$id].bonus_amount y=$item.amount}</span> грн</span> на бонусный счет</p>{/if}
                                        </a>
                                    </td>
                                    <td class="text-center"><span>{$item.amount}</span></td>
                                    <td class="text-right"><span>{price $item.price $item.id_currency $item.amount} {$smarty.session.Currency.title}</span></td>
                                </tr>
                                {if $item.hasGift}
                                    <tr class="gift warning">
                                        <td class="text-center"><img src="/images/catalog/{$item.gift.imgid}.{$item.gift.imgext}" alt="" /></td>
                                        <td>
                                            <p class="text-info">Подарок - {$item.gift.category} {$item.gift.brand} {$item.gift.name}</p>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                {/if}
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>

            <div class="row">
                <div class="col-sm-9">
                    <div class="alert alert-info main_cart_summ">
                        <p class="text-right">Итого {$basketStats.summ} {$smarty.session.Currency.title}</p>
                        <p class="text-right"><a class="btn btn-success btn-lg" href="/basket/order">Оформить заказ</a></p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-9">
                    <p class="text-warning">Оформляя заказ, Вы соглашаетесь с <a href="http://590.ua/page/confidentiality">политикой 590.ua</a> относительно защиты персональных данных покупателя.</p>
                </div>
            </div>

    <div class="row-fluid data-order">
<!--         <div class="basket">
            <h1>Заказанные товары</h1>
            <table class="table basket-items">
                <thead>
                <tr>
                    <th class="basket-items-num"></th>
                    <th colspan="2">Наименование</th>
                    <th>Цена</th>
                    <th>К-во</th>
                    <th class="basketSummTh">Сумма, {$smarty.session.Currency.title}</th>
                </tr>
                </thead>
                <tbody>
                {foreach from=$data.Basket.items item=item key=id}
                    <tr {if $item.hasGift}class="data-gift"{/if}>
                        <td class="remove_from_basket_td"><i class="remove_from_basket data-remove" id="item_{$id}" title="Удалить"></i></td>
                        <td class="basket-img">
                            {if $data.itemsInfo[$id].imgid}
                                <img class="data-zoom" rel="tooltip" data-original-title="Увеличить изображение" data-url="/images/catalog/{$data.itemsInfo[$id].imgid}.{$data.itemsInfo[$id].imgext}" src="/images/catalog/{$data.itemsInfo[$id].imgid}_s.{$data.itemsInfo[$id].imgext}" data-alt="{$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}" />
                            {else}
                                <img src="{$url.img}/noimage.jpg" alt="" />
                            {/if}
                        </td>
                        <td>
                            <a href="/catalog/item/{$id}" class="basket_product_title">{$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}</a>
                            {if $data.itemsInfo[$id].bonus_amount > 0}<p class="bonus"><span>+ <span class='data-bonusSum'>{math equation="x*y" x=$data.itemsInfo[$id].bonus_amount y=$item.amount}</span> грн</span> на бонусный счет</p>{/if}
                            <input type="hidden" class='data-bonus' value="{$data.itemsInfo[$id].bonus_amount}" />
                        </td>
                        <td><strong>{price $item.price $item.id_currency}</strong></td>
                        <td class="basket_items"><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' />
                            <input class="data-amount span1" type="number" id="itema_{$id}" value="{$item.amount}" /></td>
                        <td class="data-itemPrice"><strong>{price $item.price $item.id_currency $item.amount}</strong></td>
                    </tr>
                    {if $item.hasGift}
                        <tr class="data-giftItem alert gift_basket">
                            <td></td>
                            <td class="basket-img"><img src="/images/catalog/{$item.gift.imgid}.{$item.gift.imgext}" alt="" /></td>
                            <td>
                                <p class="b-gift"><strong>Подарок - {$item.gift.category} {$item.gift.brand} {$item.gift.name}</strong></p>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    {/if}
                {/foreach}
                {foreach from=$data.Basket.sets item=item key=id}
                    <tr>
                        <td><i class="icon-remove data-remove" id="set_{$id}" title="Удалить"></i></td>
                        <td colspan="2"><a href="/catalog/set/{$id}">{$data.setsInfo[$id].short_info}</a>
                            <table>
                                {foreach from=$item.items item=setItemId}
                                    <tr>
                                        <td class="basket-img"><img class="data-zoom" data-url="/images/catalog/{$data.itemsInfo[$setItemId].imgid}.{$data.itemsInfo[$setItemId].imgext}" src="/images/catalog/{$data.itemsInfo[$setItemId].imgid}_s.{$data.itemsInfo[$setItemId].imgext}"  alt="{$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}" /></td>
                                        <td>
                                            <a href="/catalog/item/{$setItemId}">{if $data.itemsInfo[$setItemId].cat_onename}{$data.itemsInfo[$setItemId].cat_onename}{else}{$data.itemsInfo[$setItemId].cat}{/if} {$data.itemsInfo[$setItemId].brand} {$data.itemsInfo[$setItemId].name}</a>
                                            {if $login=='Покупатель' && $data.itemsInfo[$id].bonus_amount > 0}<p class="bp__product-summ"><span>+ {$data.itemsInfo[$id].bonus_amount|round} грн</span> на бонусный счет</p>{/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            </table>
                        </td>
                        <td>{price $item.price $item.id_currency} </td>
                        <td class="count"><input type="hidden" name = 'type' value='set'/><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' /><input class="data-amount span1" type="text" id="itema_{$id}" value="{$item.amount}" /></td>
                        <td class="data-itemPrice">{price $item.price $item.id_currency $item.amount} грн.</td>
                    </tr>
                {/foreach}
                </tbody>
                <tfoot>
                <tr>
                    <td rowspan="2" colspan="3">
                        {if $data.bonus}
                            <span class="promo-button alert-info">Промо-код принят. Ваша скидка составляет <span class="promo-summ">{$data.bonus->amount} {$smarty.session.Currency.title}</span> </span>
                        {else}
                            <span class="promo-button">
                                    <a class="promo-link" href="#promocode" data-toggle="modal">Ввести промо-код</a>
                                    <a href="#" class="info-mini" data-toggle="popover" data-placement="top" data-content="Программа лояльности 590.ua для постоянных покупателей. <br>
    Детали можно узнать по телефону: (095) 757 22 41" title="" data-original-title="Условия"></a>
                                </span>
                        {/if}
                    </td>

                    <td colspan="3" class="cart-mini-summ">
                        <p class="data-transfer transfer_info">&nbsp;</p>
                        <p>Итого <span class="data-tableSumm">{$basketStats.summ}</span> {$smarty.session.Currency.title}</p>
                    </td>
                </tr>
                </tfoot>
            </table>

        </div> -->

        {if $manager}
            {literal}
                <!-- Google Code for &#1052;&#1086;&#1088;&#1086;&#1078;&#1077;&#1085;&#1080;&#1094;&#1072; Conversion Page -->
                <script type="text/javascript">
                    /* <![CDATA[ */
                    var google_conversion_id = 1020030188;
                    var google_conversion_language = "uk";
                    var google_conversion_format = "1";
                    var google_conversion_color = "ffffff";
                    var google_conversion_label = "KhGhCNTVtlEQ7Nmx5gM";
                    var google_conversion_value = 1;
                    /* ]]> */
                </script>
                <script type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js">
                </script>
                <noscript>
                    <div style="display:inline;">
                        <img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1020030188/?value=1&amp;label=KhGhCNTVtlEQ7Nmx5gM&amp;guid=ON&amp;script=0"/>
                    </div>
                </noscript>
            {/literal}
        {/if}

    </div>
<!--     <div class="row">
        <div class="col-md-offset-10 col-md-2">
            <a class="btn btn-success" href="/basket/order">Оформить заказ</a>
        </div>
    </div> -->

</div>

{else}
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="alert alert-info" style="margin-top: 50px;">
                    <strong><p>Ваша корзина пуста</p></strong>
                </div>
            </div>
        </div>
    </div>
{/if}

{include file=_footer_new.tpl}