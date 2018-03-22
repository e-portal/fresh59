{if $seo_title}{$seo_title}{elseif $title}{$title}
{elseif $zf.params.controller=='catalog'}
{if $zf.params.action=='actions'}
Акционные предложения интернет-магазина 590.ua{if $catInfo} - {$catInfo->name|mblower}{/if}
{/if}
{if $zf.params.action=='gifts'}
Подарочные предложения интернет-магазина 590
{/if}
{if $zf.params.action=='compare'}
Сравнение товаров
{/if}
{if $zf.params.action=='sets'}
Акционные комплекты в интернет-магазине 590
{/if}
{if $zf.params.action=='cat'}
{if $catId != 1}{php} echo $this->menu->findOneBy( 'active', true);{/php}{else}Бытовая техника{/if}{if $zf.params.brand}{php}foreach (explode('_',$this->_tpl_vars['zf']['params']['brand']) as $brandId) $brands[] = $brandId; echo ' '.join(', ', $brands);{/php}{/if}{if $accepted_filters}({foreach from=$accepted_filters item=filter name=filters}{$filter.name} - {foreach from=$filter.values item=filterValue name=filter_values}{$filterValue}{if !$smarty.foreach.filter_values.last}, {/if}{/foreach}{if !$smarty.foreach.filters.last}; {/if}{/foreach}){/if} - купить {if $catId != 1}{php} echo mb_strtolower($this->menu->findOneBy( 'active', true),'utf-8');{/php}{else}бытовую технику{/if}{if $zf.params.brand}{php}echo ' '.join(', ', $brands);{/php}{/if}{if $accepted_filters}({foreach from=$accepted_filters item=filter name=filters}{$filter.name} - {foreach from=$filter.values item=filterValue name=filter_values}{$filterValue}{if !$smarty.foreach.filter_values.last}, {/if}{/foreach}{if !$smarty.foreach.filters.last}; {/if}{/foreach}){/if} в Киеве, Харькове, Одессе, Днепре, недорого, цена в Украине - интернет-магазин 590.ua{if $zf.params.page} - Страница {$pages->current}{/if}
{/if}
{if $zf.params.action=='search'} Поиск {$zf.params.searchtext} в интернет-магазине 590{/if}
{if $zf.params.action=='item'}{if $item.category_onename}{$item.category_onename}{else}{$item.category}{/if} {$item.brand} {$item.name}, купить в Киеве по лучшим ценам, {if $item.category_onename}{$item.category_onename|mblower}{else}{$item.category|mblower}{/if} {$item.brand} {$item.name} в Украине - интернет магазин 590.ua{/if}
{if $zf.params.action=='set'}{$set.category_onename} {$set.brand} {$set.name} – купить в Киеве, интернет-магазин, цена, продажа, фото, описание, доставка - 590{/if}
{if $zf.params.action=='brand'}{if $zf.params.page}Страница № {$zf.params.page|intval} раздела {$brandName} - интернет магазин 590.ua{else}{$brandName}, купить {$brandName} по выгодным ценам в Украине - интернет магазин 590.ua{/if}{/if}
{elseif $zf.params.controller=='page'}{if $page} {$pagename|translate} - интернет-магазин бытовой техники и электроники 590.ua{/if}
{elseif $zf.params.controller=='basket' && $zf.params.action=='order'}
Оформление заказа в интернет-магазине 590.ua
{elseif $zf.params.controller=='news' && $zf.params.action=='index'}
{if $singleNews}{$news.name}. Новости – интернет-магазин 590
{else}Новости – интернет-магазин 590
{/if}
{elseif $zf.params.controller=='articles' && $zf.params.action=='index'}
{if $article.announce}{$article.announce}. Статьи – интернет-магазин 590
{else}Статьи – интернет-магазин 590
{/if}
{elseif $zf.params.controller=='faq' && $zf.params.action=='index'}
{if $article.name}{$article.name} Вопрос-ответ – интернет-магазин 590
{else}Вопрос-ответ – интернет-магазин 590
{/if}
{elseif $zf.params.controller=='index' && $zf.params.action=='page404'}
    Ошибка 404. Страница не найдена |  Интернет-магазин бытовой техники 590.UA
{else}Интернет-магазин бытовой техники 590.UA – купить бытовую технику с доставкой по Украине: Киев, Днепр, Запорожье, Харьков, Кировоград.{/if}