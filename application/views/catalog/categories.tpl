{literal}
<script>
    $(function () {
        $('.b-navigation-toggle').click()
    });
</script>
{/literal}

<div class="h1_holder span-12 no_margin"><h1>{$catName}</h1></div>
<!-- {if !$catId == 275 || !$cat.parent == 275} -->
<a class="banner-set" href="/catalog/sets"></a>
<!-- {/if} -->
<div class="category_listing span-12 no_margin">
    {foreach from=$categories item=cat name=categories}
    <div class="span-3 subcategory_item">
        {if $smarty.foreach.categories.iteration <= 4 && $smarty.foreach.categories.iteration <=
        $smarty.foreach.categories.total}
        <div style="display:none"><!--cartdname-->{$cat.name}<!--/cartdname--></div>
        {/if}
        <a href="/{$cat.subdomain}/{$cat.latin_name|replace:' ':'-'|mblower}">
            <div class="img_holder">
                <img alt="{$catName}"
                     src="{if $cat.id==86}/images/catalog/38342_s.jpg{else}{$url.img}/catalog/{$img[$cat.id].id}_s.{$img[$cat.id].ext}{/if}"/>
            </div>
            <span>{$cat.name}</span>
        </a>
    </div>
    {/foreach}
</div>
<!-- SEO -->
<article class="stext-footer" id="stextfooter_js">{if $seo_text_bottom}{$seo_text_bottom}{/if}</article>
<!-- SEO -->