<div class="container">
    <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
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
    <h1 class="liner cent"><span>{$article.announce}</span></h1>
    <div class="ourr left-right-banner">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">
            <div class="one-content">
                {debug}
                {if isset($article.img) }
                <div class="article-img">
                    <img src="/assets/img/articles/{$article.img}">
                </div>
                {/if}
                <div class="one-article-date-btn one-article-under-img">
                    <div class="date">{mdates $article.date}</div>
                    <div class="rewiev">24</div>
                </div>
                {$article.full_text}

                <div class="social-back">
                    <div class="social">
                        <div>Поделиться:</div>
                        <div class="link">
                            <a href="/" class="linky"><img src="/assets/img/white-face.png" alt=""></a>
                            <a href="/" class="linky"><img src="/assets/img/white-twit.png" alt=""></a>
                            <a href="/" class="linky"><img src="/assets/img/white-gogle.png" alt=""></a>
                        </div>
                    </div>
                    <a href="/articles" class="khob khob-back acty">к статьям</a>
                </div>
            </div>
        </div>
    </div>
    <div class="orig">
        <div class="container">
            <div class="orii">
                <div class="orig-item">
                    <img src="/assets/img/orig1.png" alt="">
                    <p><span>100% оригинал</span><br> от европейских производителей</p>
                </div>


                <div class="orig-item">
                    <img src="/assets/img/orig2.png" alt="">
                    <p><span>Акции!<br> Подарки! Скидки!</span>
                        <br>каждые 2-е недели что-то
                        новенькое</p>
                </div>


                <div class="orig-item">
                    <img src="/assets/img/orig3.png" alt="">
                    <p>Быстрая доставка в любой
                        город Украины. От 2000 грн
                        по Киеву <span>БЕСПЛАТНО</span></p>
                </div>


                <div class="orig-item">
                    <img src="/assets/img/orig4.png" alt="">
                    <p>Наши менеджеры<br>
                        самые отзывчивые и
                        профессиональные</p>
                </div>

            </div>
        </div>
    </div>
    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>