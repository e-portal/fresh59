<div class="container">
    <div class="bread-crumbs breadcrumbs mobile-display-none wrap" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/articles" itemprop="item">Статьи</a>
            <meta itemprop="position" content="2">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">{$article.announce}</span>
            <meta itemprop="position" content="3">
        </div>
    </div>
    <h1 class="liner cent wrap"><span>{$article.announce}</span></h1>
    <div class="ourr left-right-banner wrap">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">
            <div class="one-content">
                {if isset($article.img) }
                <div class="article-img">
                    <img src="/assets/img/articles/{$article.img}">
                </div>
                {/if}
                <div class="one-article-date-btn one-article-under-img">
                    <div class="date">{mdates arr=$article.date}</div>
                    {if isset($article.review) }
                    <div class="rewiev">
                        {$article.review}
                    </div>
                    {/if}
                    <div class="rewiev">24</div>
                </div>

                {$article.full_text}

                <div class="social-back">
                    <div class="social">
                        <div>Поделиться:</div>
                        <div class="link">
                            <a href="https://www.facebook.com/590.ua" class="linky" rel="nofollow" target="_blank">
                                <img src="/assets/img/white-f.svg" alt="">
                            </a>
                            <a href="https://twitter.com/590Ua" class="linky" rel="nofollow" target="_blank">
                                <img src="/assets/img/white-twit.svg" alt="">
                            </a>
                            <a href="https://plus.google.com/101839783687775705263?rel=author"
                               class="linky" rel="nofollow" target="_blank">
                                <img src="/assets/img/white-g.svg" alt="">
                            </a>
                        </div>
                    </div>
                    <a href="/articles" class="khob khob-back acty">к статьям</a>
                </div>
            </div>
        </div>
    </div>
    {include file="layouts/orig.tpl"}
    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>