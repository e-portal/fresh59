<div class="container">
    <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Акции интернет-магазина</span>
            <meta itemprop="position" content="2">
        </div>
    </div>
    <h1 class="liner cent"><span>Акции интернет-магазина</span></h1>


    <div class="ourr left-right-banner">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
    </div>

    <div class="right-banner">
        <div class="three-column">
            {foreach from=$news item=new key=key name=news}
            <div class="one-sale">
                <div class="sale-from-to">Акция действует с 08 февраля 2018г по 28 мая 2018г</div>
                <div class="sale-img-text">
                    <img src="/assets/img/sliders/sale.png" alt="">
                    <div class="sale-img-text-contain">
                        <div class="sale-img-text-text">При покупке техники
                            <span>Gorenje</span> Гарантированные
                            подарки
                        </div>
                    </div>
                </div>
                <a><h5>{$new.name}</h5></a>
                <div class="timer" data-year="2018" data-month="05" data-days="25"></div>
                <a class="khob acty">Подробнее</a>
            </div>
            {/foreach}

            <!--            START pagination-->
            {assign var=pages value=$paginator->getPages()}
            {if $pages->pageCount > 1}
            <div class="span-12 no_margin category_nav paggination">
                <p>Страницы:</p>
                {if $pages->current > 1}
                <a href="/news{if $pages->current-1=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$pages->current-1}{/if}">&larr;</a>
                {/if}
                {if $pages->firstPageInRangeNum!=1}
                <a href="{$firstPageUrl}">1</a>
                <p>...</p>
                {/if}
                {if $pages->pagesInRange}
                {foreach from=$pages->pagesInRange item=p key=k}
                {if $pages->current!=$k}
                <a href="/news{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}">{$k}</a>
                {else}
                <span class="current">{$pages->current}</span>
                {/if}
                {/foreach}
                {/if}
                {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                <p>...</p>
                <a href="/news{$firstPageUrl}/page/{$pages->pageCount}">{$pages->pageCount}</a>
                {/if}
                {if $pages->current < $pages->pageCount}
                <a href="/news{$firstPageUrl}/page/{$pages->current+1}">&rarr;</a>
                {/if}
            </div>
            {/if}
            <!--            End pagination-->

        </div>
    </div>


    {include file='layouts/slider_view.tpl'}
    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>