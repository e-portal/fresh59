{include file='layouts/_header.tpl'}


<div class="container">

    {if '13'|in_array:array(12, 13, 15, 18, 21, 24, 25, 28, 29, 37, 45, 46, 48, 49, 50, 66, 68, 78, 92, 94, 141, 145, 169, 178, 210, 211, 212, 213, 270, 274, 308)}
        <h3>INARRAY</h3>
    {else}
        <h3>not INARRAY</h3>
    {/if}

    {if $seo_text_bottom}
        <div class="equip">
            <div class="container">
                <div class="nozer">
                    {$seo_text_bottom}
                </div>
            </div>
        </div>
    {/if}


    {include file='layouts/orig.tpl'}
    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>
{include file='layouts/_footer.tpl'}
