{include file=_header.tpl}

{if $items}
  {assign var=pages value=$paginator->getPages()}
  {if $pages->totalItemCount > 0 || $brand}
    {if $seo_text_top}
      <article class="stext-top" id="stext">{$seo_text_top}</article>
      <p class="stext-show"><span id="data-toggle-text">Читать дальше</span></p>
    {/if} 

    <div class="sort-group">
      <div class="price-group">
        <span class="sort-group-name">Сортировать по</span>
        <span class="btn-group">
          {if $zf.params.sort} <span class="btn btn-mini active">Популярности</span> {else} <a href="{url2 assoc.sort='popularity' param=$route}" class="btn btn-mini">Популярности</a> {/if}
          {if $zf.params.sort} <a href="{url2 assoc.sort=null param=$route}" class="btn btn-mini">Цене</a> {else} <span class="btn btn-mini active">Цене</span> {/if}
        </span>
      </div>
        <div class="dispay-group">
          <span class="sort-group-name">Отображение</span>
          <span class="btn-group">
            <span class="btn btn-mini data-display" data-display="grid"><i class="icon-th"></i></span>
            <span class="btn btn-mini data-display" data-display="row"><i class="icon-align-justify"></i></span>
          </span>
        </div>
    </div><!-- / .sort-group -->

    <div class="products">
      {foreach from=$items item=item name=catitems}
        <div class="cat-item">
          <div class="cat-item-img">
            {if $item.imgid}
              <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}" title="{$item.short_info|htmlspecialchars}">
                <img itemprop="image" src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}" alt="Фото - {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}" />
              </a>
              <i class="icon-zoom-in data-zoom" data-url="{$url.img}/catalog/{$item.imgid}.{$item.imgext}" data-alt="Фото {if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand} {$item.name}"></i>
            {else}
              <img src="/images/noimage.jpg" alt="{$item.brand} {$item.name}" />
            {/if}
          </div>
            <div class="cat-item-description">
              <p class="cat-item-name">
                <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}" title="{$item.brand} {$item.name}">
                  <span>{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if}</span>
                  <strong rel="tooltip" data-original-title="{$item.brand} {$item.name}">{if $zf.params.filter91 == 87}Гранитная мойка {$item.brand} {$item.name}{else}{$item.brand} {$item.name}{/if}</strong>
                </a>
              </p>
              <p class="cat-item-short">
                {if $zf.params.catid == 189}{$item.short_info|replace:'Стиральная машина':''}{else}{$item.short_info|truncate:270}{/if}
              </p>
              {if ($item.archive == 1 && $item.id_availability == 3)}
                <p class="cat-item-stock"><span class='strong'>Товар снят с производства</span></p>
                {if $item.newmodel_id}
                  <p>Заменен моделью <a href="/catalog/item/{$item.newmodel_id}">{$item.newmodel_name}</a></p>
                {/if}
              {/if}
              {if !($item.archive == 1 && $item.id_availability == 3) && ($manager || $item.id_availability == 3)}
                <p class="cat-item-stock">
                {if $item.id_availability == 1} <strong class="in-stock"><link itemprop = "availability" href = "http://schema.org/InStock" />Есть в наличии{/if}</strong>
                {if $item.id_availability == 2} <link itemprop = "availability" href = "http://schema.org/InStock" />Наличие уточняйте{/if}
                {if $item.id_availability == 3} <a class="on-order" href="/articles/4" title="Как получить товар под заказ"><link itemprop = "availability" href = "http://schema.org/PreOrder" />Под заказ</a>{/if}
                {if $item.id_availability == 4} <strong class="in-stock" rel="tooltip" data-placement="top" data-original-title="Есть в наличии. Доставка через 5 рабочих дней" title="Есть в наличии. Доставка через 5 рабочих дней"><link itemprop = "availability" href = "http://schema.org/InStock" />Есть в наличии. Доставка через 5 рабочих дней</strong>{/if}
                </p>
              {/if}
              {if $item.specprice && $item.bdprice > $item.price}
                <p class="cat-item-price">
                  <span class="old-price">{price $item.bdprice $item.id_currency}<small>{$smarty.session.Currency.title}</small></span>
                  <span class="new-price">{price $item.price $item.id_currency}<small>{$smarty.session.Currency.title}</small></span>
                </p>
              {else}
                <p class="cat-item-price">{price $item.price $item.id_currency}<small>{$smarty.session.Currency.title}</small></p>
              {/if}
              {if $manager}
                <p class="cat-manager-price">
                  <span class='strong'>{price $item.roznprice $item.id_currency} {$smarty.session.Currency.title}</span>e}</strong>
                  Скидка - {$item.discount}%
                </p>
              {/if}
               <p class="cat-item-buy"><a href="#data-basket" onclick="addToCart({$item.id})" data-toggle="modal" class="btn btn-info"><i class="icon-shopping-cart icon-white"></i> В корзину</a></p>
              <p class="cat-item-compare">
                <span id="comp_{$item.id}" data-id='{$item.id}' data-category='{$item.cat|mblower}' class="data-toggleCompare{if in_array($item.id, $compareItems)} checked{/if}">
                  <i>в список сравнения</i>
                </span>
              </p>
              {if $manager}<p class="btn-asked btn-group"><a href="#" class="btn btn-mini" onclick="askedItem({$item.id})">Спрашивали</a><a href="#asked" data-toggle="modal" onclick="callBack({$item.id})"  class="btn btn-mini">Уведомить о наличии</a></p>{/if}
            </div>
            {if $item.acttype=='gift'}
              <a href="#gift-modal-{$item.id}" data-toggle="modal" class="sale-icon sale-icon-gift data-getActInfo" id="i_{$item.id}"></a>
            {/if}
            {if $item.specprice && $item.acttype!='gift' && $item.bdprice > $item.price}<i title="Акционная цена" class="sale-icon sale-icon-discount"></i>{/if}
        </div><!-- / .cat-item -->
        {/foreach}
    </div><!-- / .products -->
   {/if}

  <!-- pager -->
  {if $pages->pageCount > 1}
    <div class="pager-large">
      <span class="pager-large-txt">Страницы</span>
        <div class="pager-large-pages">
          {if $pages->pagesInRange}
            {foreach from=$pages->pagesInRange item=p key=k}
              {if $pages->current!=$k}
                <a class="btn btn-mini" href="{if $k=='1'}{url assoc.page=null}{else}{$p}{/if}">{$k}</a>
              {else}
                <span class="btn btn-mini btn-warning active">{$pages->current}</span>
              {/if}
            {/foreach}
          {/if}
          {if $pages->pageCount && $pages->lastPageInRange != $pages->last}
            <a href="#" class="btn btn-mini">...</a><a class="btn btn-mini" href="{$pages->last}">{$pages->pageCount}</a>
          {/if}
        </div>
    </div>
  {/if}
  <!-- / .pager -->

  <nav class="breadcumbs" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
    <a href="/">Главная</a>
    <i>&rarr;</i>
    <a href="/catalog/gifts">Выбор подарка</a>
  </nav>

  {if !$brand}
    <div class="alert alert-error">
      Всего по В<span class='strong'>{$pages->totalItemCount}</span>talItemCount}</strong> записей.
    </div>
  {/if}
    
{else}
  {if $error}
    {/if}  
       <nav class="breadcumbs" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
          <a href="/">Главная</a>
          <i>&rarr;</i>
          <span>Выбор подарка</span>
       </nav>
{/if}

{include file=_footer.tpl}