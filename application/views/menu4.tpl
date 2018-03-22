<ul id="navigation-menu" class="b-navigation-menu">
    {foreach from=$container item=page}
        {foreach from=$page->pages item=page}
            {if count($page->pages) > 0}
                <li data-submenu-id="submenu-{$page->id}">
                    <a href="{$page->getHref()}"><span>{$page->getLabel()}</span></a>
                    <div id="submenu-{$page->id}" class="b-hidden">
                        {if $page->banner_file} <div class="banner-menu"><a onclick="_gaq.push(['_trackEvent', 'Banner_click', '{$page->banner_url}'])" href="{$page->banner_url}"><img src="{$page->banner_file}" alt=""></a></div> {/if}
                        <ul>
                            {foreach from=$page->pages item=page name=links}
                            <li><a href="{$page->getHref()}">{$page->getLabel()}</a></li>
                            {if $smarty.foreach.links.iteration == round($smarty.foreach.links.total/2)} </ul><ul> {/if}
                            {/foreach}
                        </ul>
                    </div>
                </li>
            {/if}
        {/foreach}
    {/foreach}
    <li class="navigation-menu-sets"><a href="/catalog/sets"><span>Акционные комплекты</span></a></li>
</ul>