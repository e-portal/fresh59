<div class="category_nav_sort">
    <span>Сортировать:&nbsp;</span>
    <span class="sort_item_selected">
                    {if !$zf.params.sort}
                        Цене <!-- <div></div> -->
                    {else}
                        Популярности <!-- <div></div> -->
                    {/if}
                </span>
    <div class="sort_item">
        <a href="{url2 assoc.sort='popularity' param=$route}" class="sort_item">Популярности</a>
        <a href="{url2 assoc.sort=null param=$route}" class="sort_item">Цене</a>
    </div>
</div>

<div class="switch_view">
    <span>Вид</span>
    <div class="list_as_block data-display" data-display="grid">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
    <div class="list_as_list data-display" data-display="row">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
{literal}
    <script type="text/javascript">
        $(document).ready(function () {
            var now_url = '';
            $('body').on("click", ".filter_params label", function (event) {
                var url = $(this).attr('data-filter-name');

                if ($(this).attr('data-filter-chek') !== 'checked') {
                    if (now_url.length == 0 || now_url == '') {
                        now_url = document.location.href + '/' + url;
                    } else {
                        now_url = now_url + '/' + url;
                    }
                } else {
                    now_url = now_url.replace(url, '');
                }

                $.cookie('draw_ajax_filters', 'true', {expires: 1, path: '590.ua/index.php'});
                $.ajax({
                    url: now_url,
                    type: "get",
                    success: function (data) {
                        var html_print = $(data).find(".span-12.content").html();
                        $('.span-12.content').html(html_print);
                        $.removeCookie('draw_ajax_filters');
                    }
                });
            });
        });
    </script>
{/literal}
{assign var="rasprodaja_check" value=0}

{foreach from=$items item=itemcheck}
    {if $itemcheck.sale==1 && $itemcheck.d90==-1}
        {assign var="rasprodaja_check" value=1}
    {/if}
{/foreach}


<div class="filter_params span-6">
    {if $zf.params.availability==1}
        <input id="check1" checked="checked" type="checkbox" name="check" value="check1">
        <label data-filter-name="availability/1" data-filter-chek="checked" for="check1">Только в
            наличии</label>
    {else}
        <input id="check1" type="checkbox" name="check" value="check1">
        <label data-filter-name="availability/1" for="check1">Только в наличии</label>
    {/if}


    {if $rasprodaja_check==1}
        {if $zf.params.sale=='only'}
            <input id="check3" checked="checked" type="checkbox" name="check" value="check1">
            <label data-filter-name="sale/only" data-filter-chek="checked" for="check3">Распродажа</label>
        {else}
            <input id="check3" type="checkbox" name="check" value="check1">
            <label data-filter-name="sale/only" for="check3">Распродажа</label>
        {/if}
    {/if}
</div>