{include file='layouts/_header.tpl'}


<div class="container">
    <div class="wrap">

        {*{assign var="arr1" value=array(1,2,3)}*}

        {include file='index/top-slider.tpl'}



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
    </div>
    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>
{include file='layouts/_footer.tpl'}
