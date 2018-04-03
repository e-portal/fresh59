<div class="ourr">

    <div class="most-item">

        <div class="slick hasl">
            {foreach from=$footer_news item=article key=key name=news}
                {if 3 > $smarty.foreach.news.index}
                    <div class="igyy">
                        <img src="/uploads/{$article.big_img}" alt="{$article.name|htmlspecialchars}"
                             title="{$article.name|htmlspecialchars}">
                        <div class="khob acty">Все скидки
                            <a {if strlen($article.ext_url)> 0 && strpos($article.ext_url,'ucenka')>0}rel='nofollow'{/if}
                               href="{if strlen($article.ext_url) > 0}{$article.ext_url}{else}/news/{$article.url}{/if}"
                               class="link"></a>
                        </div>
                    </div>
                {/if}
            {/foreach}
        </div>

    </div>


    <div class="most-item slick">
        {foreach from=$footer_news item=article key=key name=news}
            {if 3 <= $smarty.foreach.news.index && 6 > $smarty.foreach.news.index}
                <a {if strlen($article.ext_url)> 0 && strpos($article.ext_url,'ucenka')>0}rel='nofollow'{/if}
                   href="{if strlen($article.ext_url) > 0}{$article.ext_url}{else}/news/{$article.url}{/if}">
                    <img src="/uploads/{$article.big_img}" alt="{$article.name|htmlspecialchars}"
                         title="{$article.name|htmlspecialchars}">
                </a>
            {/if}
        {/foreach}
    </div>


    <div class="most-item slick">
        {foreach from=$footer_news item=article key=key name=news}
            {if 6 <= $smarty.foreach.news.index && 9 > $smarty.foreach.news.index}
                <div>
                    <img src="/uploads/{$article.big_img}" alt="{$article.name|htmlspecialchars}"
                         title="{$article.name|htmlspecialchars}">
                    <a class="blue"
                       {if strlen($article.ext_url)> 0 && strpos($article.ext_url,'ucenka')>0}rel='nofollow'{/if}
                       href="{if strlen($article.ext_url) > 0}{$article.ext_url}{else}/news/{$article.url}{/if}">
                        Подробнее<span class="linn"></span>
                    </a>
                </div>
            {/if}
        {/foreach}
    </div>

    <div class="most-item-sale">

        <div class="most-item">
            <a href=""><img src="/assets/img/host1.png" alt=""></a>
        </div>

        <div class="most-item">
            <a href=""><img src="/assets/img/host2.png" alt=""></a>

        </div>

        <div class="most-item">
            <a href=""><img src="/assets/img/host3.png" alt=""></a>
        </div>

        <div class="most-item">
            <a href="/"><img src="/assets/img/host1.png" alt=""></a>
        </div>

    </div>
</div>