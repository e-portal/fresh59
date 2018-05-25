{include file='layouts/_header.tpl'}

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