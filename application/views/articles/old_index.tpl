{include file=_header.tpl}

{if $id}

<nav class="breadcumbs" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
    <a href="/">Главная</a><i>→</i><a href="/articles">Статьи</a>
    <i>→</i><span>{$article.announce}</span>
</nav>

<h1 class="blue-head">{$article.announce}</h1>

{$article.full_text}

<div class="like">
    <div class="like-item">
        {literal}
        <a href="https://twitter.com/share" class="twitter-share-button"
           data-url='https://590.ua/articles/{/literal}{$article.id}{literal}' data-via="590Ua"
           data-lang="ru">Твитнуть</a>
        <script>!function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
                if (!d.getElementById(id)) {
                    js = d.createElement(s);
                    js.id = id;
                    js.src = p + '://platform.twitter.com/widgets.js';
                    fjs.parentNode.insertBefore(js, fjs);
                }
            }(document, 'script', 'twitter-wjs');</script>
        {/literal}
    </div>
    <div class="like-item">
        {literal}
        <fb:like send="false" layout="button_count" width="126" show_faces="true"></fb:like>
        {/literal}
    </div>
    <div class="like-item">
        <div class="g-plusone" data-size="medium" data-annotation="none" data-width="120"></div>
        {literal}
        <script type="text/javascript">
            (function () {
                var po = document.createElement('script');
                po.type = 'text/javascript';
                po.async = true;
                po.src = 'https://apis.google.com/js/plusone.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(po, s);
            })();
        </script>
        {/literal}
    </div>
    <div class="like-item">
        {literal}
        <script type="text/javascript" src="http://userapi.com/js/api/openapi.js?34"></script>
        <script type="text/javascript">
            VK.init({apiId: 3076385, onlyWidgets: true});
        </script>
        <div id="vk_like"></div>
        <script type="text/javascript">
            VK.Widgets.Like("vk_like", {type: "mini"});
        </script>
        {/literal}
    </div>
</div><!-- / .like -->

<a href="/articles" class="btn btn-info">&larr; К списку статей</a>

{else}

<h1 class="blue-head">Статьи <a href="/rss/articles"><img src="/images/rss.png" width="20" class="rss-link"/><a/></h1>

{foreach from=$articles item=item name=footer_articles}
<article class="article-item">
    <h2><a href="/articles/{$item.url|mblower}">{$item.announce}</a></h2>
    {$item.short_text}
    <p class="clearfix"></p>
    <a href="/articles/{$item.url|mblower}" class="btn btn-mini btn-info">Читать далее</a>
</article>
{/foreach}
<!-- pager -->
{assign var=pages value=$paginator->getPages()}
{if $pages->pageCount > 1}
<div class="pager-large">
    <span class="pager-large-txt">Страницы</span>
    <div class="pager-large-pages">
        {if $pages->current > 1}
        <a class="btn btn-mini"
           href="{if $pages->current-1=='1'}/articles{else}/articles/page/{$pages->current-1}{/if}">Предыдущая</a>
        {/if}
        {if $pages->firstPageInRangeNum!=1}
        <a class="btn btn-mini" href="/articles">1</a>
        <span class="btn btn-mini">...</span>
        {/if}
        {if $pages->pagesInRange}
        {foreach from=$pages->pagesInRange item=p key=k}
        {if $pages->current!=$k}
        <a class="btn btn-mini" href="{if $k=='1'}/articles{else}/articles/page/{$k}{/if}">{$k}</a>
        {else}
        <span class="btn btn-mini btn-warning active">{$pages->current}</span>
        {/if}
        {/foreach}
        {/if}
        {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
        <span class="btn btn-mini">...</span>
        <a class="btn btn-mini" href="/articles/page/{$pages->pageCount}">{$pages->pageCount}</a>
        {/if}

        {if $pages->current < $pages->pageCount}
        <a class="btn btn-mini" href="/articles/page/{$pages->current+1}">Следующая</a>
        {/if}
    </div>
</div>
{/if}
<!-- / .pager -->
{/if}

{include file=_footer.tpl}