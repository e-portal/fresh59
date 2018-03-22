{include file=_header.tpl}

    <div class="one_news_container category_description no_margin">
      <div class="news_head"><h1>{$action.name}</h1></div>
      {if $action.description}{$action.description}{elseif $action.full_info}{$action.full_info|htmlspecialchars_decode}{/if}
    </div>

{literal}
	<style type="text/css">
    .banner-valentine {
      width:750px;
      height:60px;
      margin-bottom:10px;
      background:url(/banner/banner-small.jpg) no-repeat;	
    }
    .banner-valentine .form-horizontal {
      padding:11px 0 0 186px;
    }
    </style>
{/literal}

{include file=_footer.tpl}
