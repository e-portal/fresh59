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
{php} echo $this->menu->findOneBy( 'active', true);{/php}{if $zf.params.brand}{php}foreach (explode('_',$this->_tpl_vars['zf']['params']['brand']) as $brandId) $brands[] = $brandId; echo mb_convert_case(' '.join(', ', $brands), MB_CASE_TITLE, "UTF-8");
{/php}{/if}
{if $accepted_filters}
({foreach from=$accepted_filters item=filter name=filters}{$filter.name} - {foreach from=$filter.values item=filterValue name=filter_values}{$filterValue}
{if !$smarty.foreach.filter_values.last}, {/if}
{/foreach}
{if !$smarty.foreach.filters.last}; {/if}{/foreach})
{/if} - купить {if !$zf.params.brand}{php} echo  mb_strtolower($this->menu->findOneBy( 'active', true));{/php}{/if} {if $accepted_filters}({foreach from=$accepted_filters item=filter name=filters}{$filter.name} - {foreach from=$filter.values item=filterValue name=filter_values}{$filterValue}{if !$smarty.foreach.filter_values.last}, {/if}{/foreach}{if !$smarty.foreach.filters.last}; {/if}{/foreach}){/if}в Киеве, Харькове, Одессе, Днепре, цена - интернет-магазин 590.ua{if $zf.params.page} - Страница {$pages->current}{/if}
{/if}

{if $zf.params.action=='search'} Поиск {$zf.params.searchtext} в интернет-магазине 590{/if}
{if $zf.params.action=='item'}{if $item.category_onename}{$item.category_onename}{else}{$item.category}{/if} {$item.brand} {$item.name} купить по низкой цене в Киеве, Харькове, Одессе,
Днепре, отзывы – магазин 590.ua{/if}
{if $zf.params.action=='set'}{$set.category_onename} {$set.brand} {$set.name} – купить в Киеве, интернет-магазин, цена, продажа, фото, описание, доставка - 590.ua{/if}
{if $zf.params.action=='brand'}{if $zf.params.page}Техника {$brandName} по лучшим ценам в Украине - 590.ua - Страница № {$zf.params.page|intval}{else}Техника {$brandName} по лучшим ценам в Украине - 590.ua{/if}{/if}
{elseif $zf.params.controller=='page'}{if $page} {$pagename|translate} - интернет-магазин бытовой техники и электроники 590.ua{/if}
{elseif $zf.params.controller=='basket' && $zf.params.action=='order'}
Оформление заказа в интернет-магазине 590.ua
{elseif $zf.params.controller=='news' && $zf.params.action=='index'}
{if $singleNews}{$news.name}. Новости – интернет-магазин 590.ua
{else}Новости – интернет-магазин 590.ua
{/if}
{elseif $zf.params.controller=='articles' && $zf.params.action=='index'}
{if $article.announce}{$article.announce} - все о бытовой технике на 590.ua
{else}Статьи – интернет-магазин 590.ua
{/if}
{elseif $zf.params.controller=='faq' && $zf.params.action=='index'}
{if $article.name}{$article.name} Вопрос-ответ – интернет-магазин 590.ua
{else}Вопрос-ответ – интернет-магазин 590.ua
{/if}
{elseif $zf.params.controller=='index' && $zf.params.action=='page404'}
    Ошибка 404. Страница не найдена |  Интернет-магазин бытовой техники 590.ua
{else}Интернет-магазин бытовой техники 590.ua – купить бытовую технику с доставкой по Украине: Киев, Днепр, Запорожье, Харьков, Кировоград.{/if}