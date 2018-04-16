{include file=_header.tpl}

{if !$error}
    <div class="breadcrumbs span-16 no_margin">
        <a href="/">Интернет магазин бытовой техники</a>
        <span>→</span>
        <span>Сравнение товаров</span>
    </div>
    <div class="h1_holder span-16 no_margin">
        <span class="back_button" onclick="javascript:history.back(-1);">← Вернуться</span>
        <h1>Сравнение товаров</h1>
    </div>
    <div class="span-16 prod_compare_block no_margin">
        <table>
            <tbody>
            <tr>
                <td></td>
                {foreach from=$items item=item}
                    <td><span class="prod_compare_del" onclick="delCompareItem({$item.id})"></span></td>
                {/foreach}
            </tr>
            <tr>
                <td>Изображение товара</td>
                {foreach from=$items item=item}
                    <td>
                        <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"><img {if $item.imgid} class="data-zoom" src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}" data-url="{$url.img}/catalog/{$item.imgid}.{$item.imgext}"{else} src="/{$module}/images/no-image.jpg"{/if}
                                    data-alt="Фото {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}"/></a>
                    </td>
                {/foreach}
            </tr>
            <tr>
                <td>Модель</td>
                {foreach from=$items item=item}
                    <td>
                        <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                           class="compare_title">{$item.brand} {$item.name}</a></td>
                {/foreach}
            </tr>
            <tr>
                <td>Цена</td>
                {foreach from=$items item=item}
                    <td>
                        <span class="one_item_price complect_current_price"><span
                                    class="prod_price">{price $item.price $item.id_currency} {$smarty.session.Currency.title}</span></span>
                        <div class="clear"></div>
                        {if !in_array($item.id, $basketStats.ids)}
                            <a href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal"
                               class="one_item_blue_button prodbox_buy_button compare_buy_button data-AddToCart data-itemId-{$item.id}">&nbsp;Добавить
                                в корзину</span></a>
                        {else}
                            <a href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal"
                               class="one_item_blue_button prodbox_buy_button compare_buy_button btn-warning data-AddToCart data-itemId-{$item.id}">&nbsp;
                                Уже в корзине</a>
                        {/if}
                    </td>
                {/foreach}
            </tr>

            {foreach from=$fields item=grp name=grp}
                <tr>
                    <td colspan="3">{$grp.name}</td>
                </tr>
                {foreach from=$grp.fields item=field name=field}
                    <tr>
                        <td>{$field.name}</td>
                        {foreach from=$items item=item}
                            <td class="{$field.class}">{$field.itemvalues[$item.id]}</td>
                        {/foreach}
                    </tr>
                {/foreach}
            {/foreach}
            </tbody>
        </table>
    </div>
{literal}
    <script type="text/javascript">
        function getBrandItems(brand, catid) {
            $.getJSON("/catalog/getcomparemodels", {brand: brand.options[brand.selectedIndex].value, catId: catid},
                function (data) {
                    var list = $("#compareModels");
                    list
                        .find('option')
                        .remove()
                        .end()
                        .append('<option value="0">Выберите товар</option>')
                        .val('');
                    var ieList = document.getElementById('compareModels');
                    $.each(data, function (index, itemData) {
                        ieList.options[ieList.options.length] = new Option(itemData.name, itemData.id);
                    });
                });
        }

        function addCompareItem(item) {
            id = item.options[item.selectedIndex].value;
            window.location = window.location + ',' + id;
        }

        function delCompareItem(id) {
            var arr = window.location.toString().split('/');
            var ids = arr[arr.length - 1].split(',');
            var newids = new Array();
            $.each(ids, function (index, value) {
                if (value != id)
                    newids.push(value);
            });
            if (newids.length == 0)
                window.location = "http://590.ua";
            arr[arr.length - 1] = newids;
            window.location = arr.join('/');
        }
    </script>
{/literal}

{else}
    {$error}
{/if}

{include file=_footer.tpl}