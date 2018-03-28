<div class="container wrap all-sale">
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

        <div class="right-banner">
            <div class="three-column">
                {foreach from=$news item=new key=key name=news}
                <div class="one-sale">
                    {if $new.is_action==1}
                    <div class="sale-from-to">Акция действует с {mdates arr=$new.start_date}г по {mdates
                        arr=$new.end_date}г
                    </div>
                    {/if}
                    <div class="sale-img-text">
                        <img src="/uploads/news/{$new.id}.{$new.img}" alt="">
                        <div class="sale-img-text-contain">
                            <div class="sale-img-text-text">При покупке техники
                                <span>Gorenje</span> Гарантированные
                                подарки
                            </div>
                        </div>
                    </div>
                    <a><h5>{$new.name}</h5></a>

                    {if $new.expired && $new.is_action==1}
                    <div class="sale-from-to">
                        Акция завершена
                    </div>
                    {else}
                    <div class="timer" data-year="{getdate arr=$new.end_date arr='Y'}"
                         data-month="{getdate arr=$new.end_date arr='m'}"
                         data-days="{getdate arr=$new.end_date arr='d'}"></div>
                    {/if}

                    <a href="/news/{$new.url|mblower}" class="khob acty">Подробнее</a>
                </div>
                {/foreach}

                <!--            START pagination-->
                {assign var=pages value=$paginator->getPages()}
                {if $pages->pageCount > 1}
                <div class="blocks-pagination">
                    {if $pages->current > 1}
                    <a href="/news{if $pages->current-1=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$pages->current-1}{/if}"
                       class="blocks-pagination-back blocks-pagination-arrow"></a>
                    {/if}
                    {if $pages->firstPageInRangeNum!=1}
                    <a href="/news" class="pagin-number active-pagin-number">1</a>
                    <span>...</span>
                    {/if}
                    {if $pages->pagesInRange}
                    {foreach from=$pages->pagesInRange item=p key=k}
                    {if $pages->current!=$k}
                    <a href="/news{if $k=='1'}{$firstPageUrl}{else}{$firstPageUrl}/page/{$k}{/if}"
                       class="pagin-number">{$k}</a>
                    {else}
                    <a class="pagin-number pagin-number-active">{$pages->current}</a>
                    {/if}
                    {/foreach}
                    {/if}
                    {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
                    <span>...</span>
                    <a href="/news{$firstPageUrl}/page/{$pages->pageCount}" class="pagin-number">{$pages->pageCount}</a>
                    {/if}
                    {if $pages->current < $pages->pageCount}
                    <a class="blocks-pagination-forward blocks-pagination-arrow"
                       href="/news{$firstPageUrl}/page/{$pages->current+1}"></a>
                    {/if}
                </div>
                {/if}
                <!--            End pagination-->

            </div>
        </div>
    </div>


    {include file='layouts/slider_view.tpl'}
    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>