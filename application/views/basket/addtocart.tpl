
{if !empty($data)}
<table class="table">
<thead>
  <tr>
      <th>&nbsp;</th>
      <th colspan="2">Наименование</th>
      <th>К-во</th>
      <th>Цена, {$smarty.session.Currency.title}</th>
      {if $datastats.discount>0}<th>Цена со скидкой</th>{/if}
      <th>Сумма, {$smarty.session.Currency.title}</th>
  </tr>
  </thead>
                  {literal}
                <script type="text/javascript">
                    function my_reload(){
                      setTimeout(function(){
                        location.reload();
                      }, 1000)
                    }
                </script>
                {/literal}

{foreach from=$data.Basket.items item=item key=id}
<tr {if $item.hasGift}class="data-gift"{/if}>
		<td><i class="icon-remove data-remove" id="item_{$id}" title="Удалить" onclick="my_reload()"></i></td>
		<td>
            <a href="/images/catalog/{$data.itemsInfo[$id].imgid}.{$data.itemsInfo[$id].imgext}" class="tozoom">
                <img src="/images/catalog/{$data.itemsInfo[$id].imgid}_s.{$data.itemsInfo[$id].imgext}" alt="{$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}" />
            </a>
        </td>
        <td>
        	<a href="/{$data.itemsInfo[$id].parentname|replace:' ':'-'}/{$data.itemsInfo[$id].cat_onename|replace:' ':'-'}/{$data.itemsInfo[$id].brand|replace:' ':'-'}-{$data.itemsInfo[$id].name|replace:' ':'-'}">{$data.itemsInfo[$id].cat_onename} {$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}</a>
        	{if $data.itemsInfo[$id].bonus_amount > 0}<p class="bp__product-summ item-bonus-summ"><span>+ <span class='data-bonusSum'>{$data.itemsInfo[$id].bonus_amount|round}</span> грн</span> на <a href="/page/bonus">бонусный счет</a></p>{/if}
        	<input type="hidden" class='data-bonus' value="{$data.itemsInfo[$id].bonus_amount}" />
        </td>
		<td><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' /><input oninput="my_reload()" class="data-amount span1" type="text" id="itema_{$id}" value="{$item.amount}" /></td>
        <td>{price $item.price $item.id_currency} </td>
        {if $datastats.discount>0}

        <td style="color: #1dbc1c; text-decoration: underline;    padding-left: 35px;"><strong>{$datastats.price_of_each[$id]|round}</strong></td>

        {/if}
		<td class="data-itemPrice">{math equation="x * y" x=$datastats.price_of_each[$id]|round y=$datastats.amount_of_each_item[$id]}</td>
</tr>

{if $item.hasGift}
<tr class="data-giftItem alert">
    <td></td>
    <td><img src="/images/catalog/{$item.gift.imgid}.{$item.gift.imgext}" alt="" /></td>
    <td>
      <p>&nbsp;</p>
        <p class="b-gift">Подарок</span> - <span class="b-gift-item">{$item.gift.category} {$item.gift.brand} {$item.gift.name}</span></p>
    </td>
    <td></td>
    <td></td>

    {if $datastats.discount>0}
    <td></td>
    {/if}
    <td></td>
</tr>
{/if}

{/foreach}
{foreach from=$data.Basket.sets item=item key=id}
<tr>
		<td><i class="icon-remove data-remove" id="set_{$id}" title="Удалить" onclick="my_reload()"></i></td>
        <td colspan="2"><a href="/catalog/set/{$id}">{$data.setsInfo[$id].short_info}</a>
            <table class="set-table">
            {foreach from=$item.items item=setItemId}
                <tr>
                    <td class="image"><a href="/catalog/item/{$setItemId}"><img src="/images/catalog/{$data.itemsInfo[$setItemId].imgid}_s.{$data.itemsInfo[$setItemId].imgext}" alt="" /></a></td>
                    <td class="name"><a href="/catalog/item/{$setItemId}">{if $data.itemsInfo[$setItemId].cat_onename}{$data.itemsInfo[$setItemId].cat_onename}{else}{$data.itemsInfo[$setItemId].cat}{/if} {$data.itemsInfo[$setItemId].brand} {$data.itemsInfo[$setItemId].name}</a></td>
                </tr>
            {/foreach}
            </table>
        </td>
        <td>{price $item.price $item.id_currency} </td>
        <td class="count"><input type="hidden" name = 'type' value='set'/><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' /><input class="data-amount span1" type="text" id="itema_{$id}" value="{$item.amount}" /></td>
        <td class="data-itemPrice">{price $item.price $item.id_currency $item.amount} грн.</td>
 </tr>
{/foreach}
{foreach from=$data.CreditBasket.items item=item key=id}
<tr class='creditI'>
		<td><i class="icon-remove data-remove" id="item_{$id}" title="Удалить" onclick="my_reload()"></i></td>
		<td class="image"><a href="/images/catalog/{$data.itemsInfo[$id].imgid}.{$data.itemsInfo[$id].imgext}" class="tozoom"><img src="/images/catalog/{$data.itemsInfo[$id].imgid}_s.{$data.itemsInfo[$id].imgext}"
			alt="{$data.itemsInfo[$id].brand} {$data.itemsInfo[$id].name}" /></a></td>
		<td class="name">
            <p>Кредит</p>
            <p><a href="/catalog/item/{$data.itemsInfo[$id].id}">{$data.itemsInfo[$id].cat_onename} <br /> {$data.itemsInfo[$id].brand} <br /> {$data.itemsInfo[$id].name}<span class='strong'> грн.</span>id_currency} </span></p>
        </td>
		<td class="count"><input type="hidden" name = 'price' value = '{price $item.price $item.id_currency}' /><input class="data-amount span1" type="text" id="itema_{$data.itemsInfo[$id].id}" value="{$item.amount}" /></td>
		<td class="data-itemPrice">{price $item.price $item.id_currency $item.amount} </td>
	</tr>
{/foreach}
{/if}

{if !empty($data.CreditBasket.items)}

    <tr class='creditI'>
    	<td colspan="5">
        	<table id="creditCalc" width="100%">
              <tr>
                <td colspan="2" class="fs18 padB10">Кредитный калькулятор</td>
              </tr>
              <tr>
                <td>Стоимость товаров</td>
                <td><input type="text" readonly="readonly" id="credit_amount" value="{$data.CreditBasket.summ} грн" /></td>
              </tr>
              <tr>
                <td>Первоначальный взнос</td>
                <td><input type="text" id="firstPay" value="{$smarty.cookies.credit_firstPay}"></td>
              </tr>
              <tr>
                <td>Сумма кредита</td>
                <td><input type="text" id="credit_summ" readonly="readonly" value="{math equation="x - y" x=$data.CreditBasket.summ y=0}"></td>
              </tr>
              <tr>
                <td>Срок кредита</td>
                <td><select id="credit_term">
                <option {if $smarty.cookies.credit_term==6}selected="selected"{/if} value="6">6</option>
                <option {if $smarty.cookies.credit_term==12}selected="selected"{/if}value="12">12</option>
                <option {if $smarty.cookies.credit_term==18}selected="selected"{/if}value="18">18</option>
                <option {if $smarty.cookies.credit_term==24}selected="selected"{/if}value="24">24</option>
                </select></td>
              </tr>
              <tr>
                <td class="padB10">Средний ежемесячный платеж</td>
                <td><stron<span class='<span class='strong'> грн.</span>trong> грн.</strong></td>
              </tr>
              <tr>
              	<td colspan="2"><a href="/news/59" class="cBlue" target="_blank">Подробнее о кредите</a></td>
              </tr>
            </table>
        </td>
    </tr>
{/if}


    <tr>
    	<td style="display: none;" class="data-transfer" colspan="6"></td>
      <td colspan="7"><p style="
    float: right;
    font-size: 22px;
    font-weight: 600;
    color: #4e8b89;" id="summ_za_vse"></p></td>
    </tr>
    <tr>
<td colspan="7" style="padding: 0px;">
    <img id="img_dostavka" style="display: none; float: right; width: 70px;" src="https://590.ua/assets/media/dost_gorod.png">
    <p style="
    float: right;
    margin-right: 5px;
    margin-top: 5px;
    font-size: 16px;
    font-style: italic;
    color: #3a6463;" id="text_dostavka_info"></p></td>
    <!--Вывод информации о доставке-->

      <td style="display: none;" colspan="7" class="cart-mini-summ">Сумма <span id="real_price_for_pay" class="data-tableSumm">{$basketStats.summ}</span> {$smarty.session.Currency.title}</td>
    </tr>
    </table>

    <div style="display: none;" class="summa_za_tovar"></div>
                    {literal}
                <script type="text/javascript">
$(document).ready(function() {
                      function get_price_sum() {
                      $(".summa_za_tovar").html($('#real_price_for_pay').text());
                      }
                      setInterval(get_price_sum, 500);

                      function show_delivery_information() {
                        var testElements = document.getElementsByClassName('summa_za_tovar')[0].innerHTML;
                        document.getElementById('summ_za_vse').innerHTML = "Сумма: "+testElements+"{/literal} {$smarty.session.Currency.title} {literal}";


                        if({/literal} {$smarty.cookies.region} {literal}==1){
                        if (testElements<2000){
                            document.getElementById('text_dostavka_info').innerHTML = '<b>Доставка по Киеву 40 грн.</b>';
                            document.getElementById('img_dostavka').style.display = "";
                        } else {
                          document.getElementById('text_dostavka_info').innerHTML = '<b>Доставка по Киеву бесплатно!</b>';
                          document.getElementById('img_dostavka').style.display = "";
                        }} else {
                          document.getElementById('text_dostavka_info').innerHTML = '';
                          document.getElementById('img_dostavka').style.display = "none";
                        }

                        if ({/literal} {$smarty.cookies.region} {literal}!=1){
                          document.getElementById('text_dostavka_info').innerHTML = '<b>Детали доставки у оператора.</b>';
                          document.getElementById('img_dostavka').style.display = "";
                        }
                  }
                  setInterval(show_delivery_information, 1000);
});
                </script>
                {/literal}