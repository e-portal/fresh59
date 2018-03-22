{include file=_header.tpl}

{if true}
    <div class="paybycard">
        <h1>Оплата заказа №{$order.id} с помощью платежной карты</h1>
        <p class="basket-items"><span class='strong'>Заказанные товары:</span> <a href="#">{$order.items_info}</a></p>
<span class='strong'>Сумма заказа:</span>а:</strong>  <span class="order-summ">{$order.summ} {$smarty.session.Currency.title}</span></p>

        <h2>Оплатить с помощью:</h2>
        <p>
            <input type="radio" id="upc" name="pay" value="upc" checked="checked" /><label for="upc"><img src="/images/icons/logo-upc.jpg" alt="" /></label>
            <input type="radio" id="liqpay" name="pay" onclick="window.location='/basket/paybycard'" value="liqpay" /><label for="liqpay"><img src="/images/icons/logo-liqpay.png" alt="" /></label>
        </p>
        {$form}
    </div>
{else}

    <h1>Оплата заказа №{$order.id} с помощью платежной карты</h1>
    Товары: {$order.items_info}
    <br />
    Сумма заказа: {$order.summ}грн
    {$form}

{/if}

{include file=_footer.tpl}