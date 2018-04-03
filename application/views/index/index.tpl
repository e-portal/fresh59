{include file='layouts/_header.tpl'}

<div class="container">
    <div class="wrap">
        {*{assign var="arr1" value=array(1,2,3)}*}
        {*-----------TOP_SLIDER-----------*}
        {include file='index/top-slider.tpl'}
        {*-----------TOP_SLIDER-----------*}
    </div>
    {debug}
    {*{$actionItems|@debug_print_var}*}
    {*-----------TOP_SALES-----------*}
    {include file='index/top-sales.tpl'}
    {*-----------TOP_SALES-----------*}

    {if $seo_text_bottom}
        <div class="equip">
            <div class="nozer wrap">
                {$seo_text_bottom}
            </div>
        </div>
    {/if}


    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>
{include file='layouts/_footer.tpl'}
