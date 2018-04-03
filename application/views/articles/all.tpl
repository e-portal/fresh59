<div class="container wrap">
    <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Статьи</span>
            <meta itemprop="position" content="2">
        </div>
    </div>
    <h1 class="liner cent"><span>Статьи</span></h1>
    <div class="ourr left-right-banner">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">
            <div class="three-column">
                {foreach from=$articles item=item name=footer_articles}

                <div class="one-article">

                    {if isset($item.img) }
                    <div class="one-article-img">
                        <img src="/assets/img/articles/{$item.img}">
                    </div>
                    {else}
                        <div class="one-article-img">
                            <img src="/assets/img/articles/att{random in=1 out=6}.png">
                        </div>
                    {/if}

                    <div class="one-article-text-contain">
                        <a href="/articles/{$item.url|mblower}"><h3>{$item.announce}</h3></a>
                        <p>{$item.short_text}</p>
                    </div>

                    <div class="one-article-date-btn">
                        <div class="date">{mdates arr=$item.date}</div>
                        {if isset($item.review) }
                        <div class="rewiev">
                            {$item.review}
                        </div>
                        {/if}
                        <div class="rewiev">24</div>
                        <a href="/articles/{$item.url|mblower}" class="khob acty">Подробнее</a>
                    </div>
                </div>
                {/foreach}

            </div>
            <!--            START pagination-->
            {assign var=pages value=$paginator->getPages()}
            {if $pages->pageCount > 1}
            <div class="blocks-pagination">
                {if $pages->current > 1}
                <a class="blocks-pagination-back blocks-pagination-arrow"
                   href="{if $pages->current-1=='1'}/articles{else}/articles/page/{$pages->current-1}{/if}"></a>
                {/if}
                {if $pages->firstPageInRangeNum!=1}
                <a class="pagin-number active-pagin-number" href="/articles">1</a>
                <span>...</span>
                {/if}
                {if $pages->pagesInRange}
                {foreach from=$pages->pagesInRange item=p key=k}
                {if $pages->current!=$k}
                <a class="pagin-number" href="{if $k=='1'}/articles{else}/articles/page/{$k}{/if}">{$k}</a>
                {else}
                <span class="pagin-number pagin-number-active">{$pages->current}</span>
                {/if}
                {/foreach}
                {/if}
                {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                <span>...</span>
                <a class="pagin-number" href="/articles/page/{$pages->pageCount}">{$pages->pageCount}</a>
                {/if}

                {if $pages->current < $pages->pageCount}
                <a class="blocks-pagination-forward blocks-pagination-arrow"
                   href="/articles/page/{$pages->current+1}"></a>
                {/if}
            </div>
            <!--            End pagination-->
        </div>
    </div>

    {include file='layouts/slider_view.tpl'}
    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>

{/if}
<!-- / .pager -->