{include file=_header.tpl}

<div class="h1_holder span-12 no_margin holder_sets">
    <h1>Акционные комплекты</h1>
</div>

{foreach from=$sets item=set name=sets}
  <div class="sale_complect_block span-12 no_margin">
    <div class="sale_complect_content">
      {foreach from=$set.items item=item name=itemsets}
        <div class="sale_complect_item" onclick="javascript:window.location.href='{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}'">
          <div class="sale_complect_photo">
            <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}" title="{$item.brand} {$item.name}"><img src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}" alt="Фото {$item.brand} {$item.name}" /></a>
          </div>
          <a href="{iurl assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat_latin=$item.cat_latin_single assoc.brand=$item.brand assoc.item=$item.name}" title="{$item.brand} {$item.name}" class="one_item_complect_title sale_complect_title">{$item.brand} {$item.name}</a>
          <span class="one_item_complect_descr sale_complect_descr">{if $item.cat_onename}{$item.cat_onename}{else}{$item.cat}{/if} {$item.brand}</span>
        </div>
      {if !$smarty.foreach.itemsets.last}<div class="sale_complect_plus_block"><span class="sale_complect_plus"></span></div>{/if}
      {/foreach}
    </div>
    <div class="sale_complect_shadow"></div>
    <div class="sale_complect_footer">
      <div class="sale_complect_price">
        <span class="one_item_old_price sale_complect_old_price"><span class="prod_old_price">{price assoc.price=$set.price assoc.currency=$set.id_currency} </span> {$smarty.session.Currency.title}</span>
        <span class="one_item_price sale_complect_current_price"><span class="prod_price">Экономия {price $set.economy $set.id_currency}</span> {$smarty.session.Currency.title}</span>
      </div>
      <div class="sale_complect_text_out"></div>
      <span class="sale_complect_text">{$set.short_info}</span>
      <a href="/catalog/set/{$set.id}" class="sale_complect_more">Подробнее</a>
      <a class="sale_complect_buy" href="#data-basket" onclick='addToCart({$set.id},false,"set")' data-toggle="modal">Купить комплект</a>
    </div>
  </div>
  <div class="clear"></div>
{/foreach}

{*
{literal}
<script type="text/javascript">
    $(document).ready(function () {
        $(".sale_complect_content").customScrollbar({
          skin: "web-skin",
          vScroll: false
        });
    });
</script>
{/literal}
*}

<nav class="breadcumbs" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
    <a href="/">Главная</a><i>&rarr;</i><span>Акционные комплекты</span>
</nav>

{include file=_footer.tpl}
