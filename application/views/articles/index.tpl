{include file='layouts/_header.tpl'}

{if $id}

{include file='articles/one.tpl'}

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

{include file='layouts/_footer.tpl'}