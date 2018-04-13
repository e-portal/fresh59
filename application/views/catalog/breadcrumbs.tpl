<div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
     itemtype="http://schema.org/BreadcrumbList">

    {foreach from=$pages item=page name=pages}
        {if !$smarty.foreach.pages.last}
            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <a itemprop="item" href="{$page->getHref()|mblower}">{$page->getLabel()}</a>
                <meta itemprop="position" content="{$smarty.foreach.pages.iteration}">
            </div>
        {else}
            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">

                <span itemprop="name" class="label1">{$page->getLabel()}</span>
                <meta itemprop="position" content="{$smarty.foreach.pages.iteration}">
            </div>
        {/if}
    {/foreach}
</div>