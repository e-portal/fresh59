{include file='layouts/_header.tpl'}

<div class="container">
    <div class="wrap">
        {*{assign var="arr1" value=array(1,2,3)}*}
        {*-----------TOP_SLIDER-----------*}
        {include file='index/top-slider.tpl'}
        {*-----------TOP_SLIDER-----------*}
    </div>
    {*{debug}*}
    {*{$actionItems|@debug_print_var}*}
    {*-----------TOP_SALES-----------*}
    {include file='index/top-sales.tpl'}
    {*-----------TOP_SALES-----------*}
    {*----------MAIN BANNER----------*}
    <div class="main-baner">
        <div class="banny  wrap">
            <div class="banny-text">
                <p class="ad-blue">Самые выгодные покупки</p>
                <p class="ad-cheaper">У нас дешевле! <br>Получите скидку <b>до 60%</b></p>
                <div class="khob acty">Все скидки<a href="/news"></a></div>
            </div>
            <div class="banny-img">
                <img src="/assets/img/sale/sale4.png" alt="sale">
                <img src="/assets/img/sale/sale5.png" alt="sale">
            </div>
        </div>
    </div>
    {*----------MAIN BANNER----------*}



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
