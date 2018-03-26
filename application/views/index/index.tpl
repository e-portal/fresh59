{include file='layouts/_header.tpl'}


{if $footer_news|count > 0}
<!--slider-->
<div class="billboard">
    <pre>
    {$footer_news|var_dump}</pre>
    {foreach from=$footer_news item=news key=key name=news}
    <a class="img-large" {if strlen($news.ext_url)> 0 && strpos($news.ext_url,'ucenka')>0}rel='nofollow'{/if} href="{if
        strlen($news.ext_url) > 0}{$news.ext_url}{else}/news/{$news.url}{/if}">
        <img src="/uploads/{$news.big_img}" alt="{$news.name|htmlspecialchars}" title="{$news.name|htmlspecialchars}">
    </a>
    {/foreach}
    <span class="billboard-control__left"></span><span class="billboard-control__right"></span>
    <ul class="img-small">
        {foreach from=$footer_news item=news key=key name=news}
        <li><img src="/uploads/{$news.big_img}" alt="{$news.name|htmlspecialchars}"></li>
        {/foreach}
    </ul>
</div>
{/if}


<div class="ourr">

    <div class="most-item">

        <div class="slick hasl">
            <div class="igyy">
                <img src="./img/host8.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link"></a></div>
            </div>


            <div class="igyy">
                <img src="./img/host9.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link"></a></div>
            </div>

            <div class="igyy">
                <img src="./img/host8.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link"></a></div>
            </div>


            <div class="igyy">
                <img src="./img/host8.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link"></a></div>
            </div>


            <div class="igyy">
                <img src="./img/host9.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link"></a></div>
            </div>


        </div>

    </div>


    <div class="most-item">
        <a href="/"><img src="./img/host5.png" alt=""></a>
    </div>


    <div class="most-item">
        <img src="./img/host9.png" alt="">

        <a class="blue" href="/">Подробнее<span class="linn"></span></a>

    </div>

    <div class="most-item">
        <a href=""><img src="./img/host1.png" alt=""></a>
    </div>

    <div class="most-item">
        <a href=""><img src="./img/host2.png" alt=""></a>

    </div>

    <div class="most-item">
        <a href=""><img src="./img/host3.png" alt=""></a>
    </div>

    <div class="most-item">
        <a href="/"><img src="./img/host1.png" alt=""></a>
    </div>

</div>









<div class="container">

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
    <div class="doww"><img src="./img/verh.png" alt=""></div>
</div>
{include file='layouts/_footer.tpl'}