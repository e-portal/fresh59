{include file=_header.tpl}

{if $singleNews}
<script type="text/javascript" src="/js/jquery.countdown.package/jquery.plugin.js"></script>
<script type="text/javascript" src="/js/jquery.countdown.package/jquery.countdown.js"></script>
<script type="text/javascript" src="/js/jquery.countdown.package/jquery.countdown-ru.js"></script>
<link rel="stylesheet" href="{$url.css}/display-grid.css">

<div class="breadcrumbs span-12 no_margin">
    <a href="/">Интернет магазин бытовой техники</a>
    <span>→</span>
    <a href="/news">Акции интернет магазина</a>
    <span>→</span>
    <span>{$news.name}</span>
</div>

<div class="one_news_container category_description no_margin">
    <div class="news_head">
        <h1>{$news.name}</h1>
        {if $startMonth && $endMonth}
        <div class="action_time">Акция действует с {$startDateArr[2]} {$startMonth} {$startDateArr[0]}г по
            {$endDateArr[2]} {$endMonth} {$endDateArr[0]}г
        </div>
        {/if}
        <!-- Таймер -->
        {literal}
        <script>
            $(function () {
                var dateArr = ('{/literal}{$news.end_date}{literal}').split('-');
                var austDay = new Date(dateArr[0], dateArr[1] - 1, dateArr[2], 11, 59);
                $('.defaultCountdown').countdown({until: austDay});
                $('.defaultCountdown').countdown($.countdown.regionalOptions['ru']);
            });
        </script>
        {/literal}

        {if $news.end_date && $news.is_action == 1}
        <div class="sale-time">
            <div class="sale-time-header">До конца акции осталось:</div>
            <div class="defaultCountdown"></div>
        </div>
        <div class="clearfix"></div>
        {/if}
        <!-- Конец таймера -->
    </div>
    {if $news.big_img}
    <div class="sale-image">
        {if !empty($news.inner_url)}
        <a href="{$news.inner_url}"><img src="/uploads/{$news.big_img}" alt="{$news.name|htmlspecialchars}"
                                         title="{$news.name|htmlspecialchars}"></a>
        {else}
        <a href="{$news.inner_url}"><img src="/uploads/{$news.big_img}" alt="{$news.name|htmlspecialchars}"
                                         title="{$news.name|htmlspecialchars}"></a>
        {/if}
    </div>
    {/if}
    <div class="clearfix"></div>
    <div class="ns-description">{$news.text}</div>
</div>
{else}
<div class="breadcrumbs span-12 no_margin">
    <a href="/">Интернет магазин бытовой техники</a>
    <span>→</span>
    <span>Акции интернет-магазина</span>
</div>
<div class="h1_holder span-12 no_margin">
    <h1 class="one_news">Акции интернет-магазина <a href="/rss/news"><img src="/images/rss.png" width="20"
                                                                          class="rss-link"/></a></h1>
</div>
<div class="action-new">
    <div class="action-new__inner">
        {foreach from=$news item=news key=key name=news}
        <a href="/news/{$news.url|mblower}"
           class="action-new__item{if $news.expired && $news.is_action==1} action-new__end{/if}">
            {if $news.expired && $news.is_action==1} <span class="action-new__end-message">Акция завершена</span>{/if}
            {if $news.is_action==1}<i class="action-new_icon"></i>{/if}
            <span class="action-new__img"><img src="/uploads/news/{$news.id}.{$news.img}" alt=""/></span>
            {if $news.is_action==1}
            <span class="action-new-date">
              <span>Сроки действия акции</span><span class="date-large">{if $news.end_date}{$news.start_date} - {$news.end_date}{else}с {$news.start_date}{/if}</span>
            </span>
            {/if}
            <span class="action-new__info">{$news.name}</span>
        </a>
        {if $smarty.foreach.news.iteration % 3 == 0}
        <div class="clearfix"></div>
        {/if}
        {/foreach}
    </div>
</div>
<!-- pager -->
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
<!-- / .pager -->
{/if}

{include file=_footer.tpl}
