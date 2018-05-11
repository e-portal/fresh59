<!-- Главная страница -->

<!-- navigation -->

<ul class="categ-menu">
    {foreach from=$container item=page}
        {foreach from=$page->pages item=page}
            <li>
                <a href="{$page->getHref()}">{$page->getLabel()}</a>
                <ul class="menu-0">
                    {foreach from=$page->pages item=page name=links}
                        <li><a href="{$page->getHref()|mblower}">{$page->getLabel()}</a></li>
                    {/foreach}
                </ul>
            </li>
        {/foreach}
    {/foreach}
</ul>

<!-- end navigation -->
