{include file='layouts/_header.tpl'}


{if $message}
{include file= error/404.tpl}
{elseif $pagetext}
    <div class="container">
    <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">{$pagename}</span>
            <meta itemprop="position" content="2">
        </div>

    </div>
        <h1 class="liner cent wrap"><span>{$pagename}</span></h1>
        <div class="ourr left-right-banner wrap">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">
            <div class="one-content">
                {$pagetext}
            </div>
        </div>
    </div>

    {include file='layouts/slider_view.tpl'}
    {include file='layouts/orig.tpl'}

    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>
</div>
{/if}

{include file='layouts/_footer.tpl'}