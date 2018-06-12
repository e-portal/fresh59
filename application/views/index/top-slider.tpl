<div class="ourr">

    <div class="most-item-slider">

        <div class="most-item">
            <div class="slick hasl">
                {foreach from=$footer_news item=article key=key name=news}
                    {if 5 > $smarty.foreach.news.index}
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
            {foreach from=$topSlider item=topSlide}
                <a href="{$topSlide->link}">
                    <img src="{$topSlide->image}" alt="{$topSlide->name|htmlspecialchars}"
                         title="{$topSlide->name|htmlspecialchars}">
                    </a>
            {/foreach}
        </div>

        <div class="most-item slick">
            {foreach from=$bottomSlider item=bottomSlide}
                <a href="{$bottomSlide->link}">
                    <img src="{$bottomSlide->image}" alt="{$bottomSlide->name|htmlspecialchars}"
                         title="{$bottomSlide->name|htmlspecialchars}">
                </a>
            {/foreach}
        </div>
    </div>

    <div class="most-item-sale">

        {foreach from=$staticBanner item=staticSlide}

                <div class="most-item">
                    <a href="{$staticSlide->link}">
                        <img src="{$staticSlide->image}" alt="{$staticSlide->name|htmlspecialchars}"
                             title="{$staticSlide->name|htmlspecialchars}">
                    </a>
                </div>
        {/foreach}

    </div>
</div>