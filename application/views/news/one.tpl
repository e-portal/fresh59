<div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
     itemtype="http://schema.org/BreadcrumbList">
    <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
        <a href="/" itemprop="item">Главная</a>
        <meta itemprop="position" content="1">
    </div>
    <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
        <a href="/articles" itemprop="item">Акции интернет магазина</a>
        <meta itemprop="position" content="2">
    </div>
    <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
        <span itemprop="name" class="label1">{$news.name}</span>
        <meta itemprop="position" content="3">
    </div>
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