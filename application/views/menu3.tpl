<!-- Главная страница -->

<!-- navigation -->
<div class="sidebar">
    <ul id="navigation-menu" class="sidebar">
        {foreach from=$container item=page}
        {foreach from=$page->pages item=page}
        <li data-submenu-id="submenu-{$page->id}">
            <a href="{$page->getHref()}">{$page->getLabel()}</a>
            <div id="submenu-{$page->id}" class="sub_menu_wrapper">
                <div class="sub_menu_box" style="background: url(/assets/media/cat-pics/category-pics-{$page->id}.jpg) no-repeat right bottom #fff">
                    <ul>
                        {foreach from=$page->pages item=page name=links}
                            <li><a href="{$page->getHref()|mblower}">{$page->getLabel()}</a></li>
                            {if $smarty.foreach.links.iteration == round($smarty.foreach.links.total/2)} </ul><ul> {/if}
                        {/foreach}
                    </ul>
                </div>
            </div>
        </li>
        {/foreach}
        {/foreach}
    </ul>
</div>
<!-- end navigation -->
