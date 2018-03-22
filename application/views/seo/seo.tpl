{if $zf.params.controller=='index' || $zf.params.controller=='catalog' || ($zf.params.controller=='page' && $page=='8day')}
    {if $days ge "0"}
        <div id="mart_gifts" class="mart_gifts_{$days}"> <a href="/page/8day" class="sel_gift" title="Выбрать подарок"></a> <a href="#" class="close_gift" title="Скрыть"></a> </div>
	{/if}
{/if} 

{if $zf.params.controller=="catalog" && $zf.params.action=="brand" }
    <h1>
        {if $seo_h1}
        	{$seo_h1}
        {else}
            {$brandName} {if $zf.params.page} - Страница {$zf.params.page|intval}{/if}
        {/if}
     </h1>
{/if}

{if $zf.params.controller=="catalog" && $zf.params.action=="actions"}
  <h1>Акционные</span> предложения</h1>
{/if} 

{if $zf.params.controller=="catalog" && $zf.params.action=="search"}
  <h1>Результаты поиска по запросу &laquo;{$searchtext}&raquo; </h1> {if $zf.params.page} - Страница {$pages->current}{/if}
{/if} 

{*
{if $zf.params.controller=="catalog" && $zf.params.action=="item"}
  	{if $zf.params.itemId==6411}<a href="http://590.ua/catalog/cat/23/brand/20">Стиральные машины Miele</a>{/if}
    <h1> 
        <span itemprop="category" content="{php}echo $this->navigation($this->menu)->breadcrumbs()->setPartial(array('breadcrumbs_short.tpl', 'default'));{/php}">
            {if $item.category_onename}{$item.category_onename}{else}{$item.category}{/if}
        </span>
        <span itemprop="brand">{$item.brand}</span>
        <span itemprop="name">{$item.name}</span>
    </h1>
{/if} 
*}

{*
{if $zf.params.controller=="catalog" && $zf.params.action!='search' && $catId!=1 && $zf.params.action!='compare'}
	<h2>
	{if $seo_h2}
		{$seo_h2}
	{else}
        {if $zf.params.action=="item" && $item} {$item.category_onename} {$item.brand} {$item.name}: продажа, фото – купить в Киеве{/if}
        {if $zf.params.action=="cat"}{php}echo $this->menu->findOneBy( 'active',true).": цены, фото, описание, продажа";{/php}{/if}
    {/if}
  </h2>
{/if} 
*}
