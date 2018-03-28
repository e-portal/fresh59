<!-- Главная страница -->

<!-- navigation -->
<div class="base-menu">

    <ul>
        {foreach from=$container item=page}
        {foreach from=$page->pages item=page}
        <li>
            <a href="{$page->getHref()}">{$page->getLabel()}</a>
            <!--<div id="submenu-{$page->id}" class="sub_menu_wrapper">
                <div class="sub_menu_box" style="background: url(/assets/media/cat-pics/category-pics-{$page->id}.jpg) no-repeat right bottom #fff">
                    <ul>
                        {foreach from=$page->pages item=page name=links}
                        <li><a href="{$page->getHref()|mblower}">{$page->getLabel()}</a></li>
                        {if $smarty.foreach.links.iteration == round($smarty.foreach.links.total/2)} </ul><ul> {/if}
                        {/foreach}
                    </ul>
                </div>-->
</div>
</li>
{/foreach}
{/foreach}
</ul>


</div>

<!-- end navigation -->
