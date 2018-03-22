{if !$zf.params.page}
{if $seo_keywords}{$seo_keywords}
{elseif $keywords}{$keywords}
{elseif $zf.params.controller=='catalog'}
{if $zf.params.action=='cat' || $zf.params.action=='item'}
{php} echo $this->menu->findOneBy( 'active', true) ;{/php},
{if $zf.params.action=='item'}{$item.brand}, {$item.name}, {$item.category_onename}{/if}{if $zf.params.action=='cat'}{if $zf.params.brand}{php}echo $this->allbrands[$this->_tpl_vars['zf']['params']['brand']];{/php}{/if}{/if}, купить, Киев, 590,{php} echo $this->menu->findOneBy( 'active', true)->getParent()->id == 7 ? "встраиваемая" : ($this->menu->findOneBy( 'active', true)->getParent()->id == 17 ? "отдельностоящая" : '');{/php} бытовая техника{/if}{if $zf.params.action=='search'},Поиск, {$zf.params.searchtext},интернет-магазин
{elseif $zf.params.action=='brand'}{if !$zf.params.page}{$brandName},купить, интернет-магазин, бытовая техника{/if}{/if}
{/if}
{/if}
