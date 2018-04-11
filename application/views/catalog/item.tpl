{include file='layouts/_header.tpl'}

<div class="container wrap">

    {if $seo_text_bottom}
        <div class="equip">
            <div class="nozer wrap">
                {$seo_text_bottom}
            </div>
        </div>
    {/if}

    {include file='layouts/slider_view.tpl'}

    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>
{include file='layouts/_footer.tpl'}
