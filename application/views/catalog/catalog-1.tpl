<div class="h1_holder span-12 no_margin">
    <h1>{if $seo_h1}{$seo_h1}{else}Каталог{/if}</h1>
</div>

{literal}
    <script>
        $(function () {
            $('.b-navigation-toggle').click();
            $('.cat-item-info').each(function () {
                if ($(this).find('li').size() > 10) {
                    $(this).append("<a href='#' class='show-all'>Показать все</a>")
                }
            });
            $('.show-all').on('click', function (e) {
                e.preventDefault();
                $(this).parent().find('div').toggleClass('nav-hide');
                $(this).remove();
            })
        });
    </script>
{/literal}

<a class="banner-set" href="/catalog/sets"></a>
{foreach from=$categories item=cat name=catI key=key}
    <div class="b-category">
        <h3>{$cat.name}</h3>
        <div class="b-categoty__group">
            <ul>
                {foreach from=$menu->findOneById($cat.id) item=page name=pages}
                <li><a href="{$page->getHref()}">{$page->getLabel()}</a></li>
                {if ceil($smarty.foreach.pages.total/3)/$smarty.foreach.pages.iteration == 1}
            </ul>
            <ul>
                {/if}
                {if round(ceil($smarty.foreach.pages.total/3)/$smarty.foreach.pages.iteration,2) == 0.5}
            </ul>
            <ul>
                {/if}
                {/foreach}
            </ul>
        </div>
    </div>
{/foreach}
<!-- SEO -->
{if $seo_text_bottom}
    <article class="stext-bottom">{$seo_text_bottom}</article>
{/if}
<!-- SEO -->