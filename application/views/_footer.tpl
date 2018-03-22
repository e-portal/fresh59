{if $zf.params.controller=='catalog' && ($zf.params.action=='cat' || $zf.params.action=='brand' || $zf.params.action=='search' || $zf.params.action=='item')}
  {php}echo $this->navigation($this->menu)->breadcrumbs()->setPartial(array('breadcrumbs.tpl', 'default'));{/php}
{/if}
    </div><!-- /.content -->
  </div><!-- /.central_block -->
</div><!-- /.main_block -->

<div style="display: none">
  <!--staticcategoryr-->
  {php} echo $this->menu->findOneBy('active', true);{/php}
  <!--/staticcategoryr-->
</div>
<div style="display: none">
  <!--staticbrandr-->
  {php}
    foreach (explode('_',$this->_tpl_vars['zf']['params']['brand']) as $brandId) $brands[] = $brandId; echo ' '.join(', ', $brands);
  {/php}
  <!--/staticbrandr-->
</div>

<div class="clear"></div>

<div class="full_width_background">
    <div class="main_block">

      <div class="span-16 subfooter">
        <div class="sitemap">
          <ul>
            {if $smarty.server.REQUEST_URI!='/'}
              <li><a href="https://590.ua/">Главная</a></li>
            {/if}
            {foreach from=$topmenu item=menutop name=topmenu}
              {if $smarty.foreach.topmenu.iteration % 4 == 0}
              </ul><ul>
              {/if}
              {if $menutop.type=='text'}
                <li><a href="https://590.ua/page/{$menutop.alias}">{$menutop.label|translate}</a></li>
              {/if}
              {if $menutop.type=='link'}
                <li class="test"><a href="https://590.ua{$menutop.param}">{$menutop.label|translate}</a></li>
              {/if}
            {/foreach}
            <li><a href="https://590.ua/sitemap">Карта сайта</a></li>
          </ul>
        </div>

        <div class="footer_contacts">
          <div class="top_contacts" itemscope itemtype="http://schema.org/Organization">
            <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                <img src="/assets/media/mark.png" width="14" height="20" alt="mark">
                <span>Адрес: <strong itemprop="streetAddress">ул. Дегтяревская 25а, корпус 1, секция №3, офис 413</strong>
                 <strong itemprop="postalCode">04119</strong>, <strong itemprop="addressLocality">Украина</strong>,
                                <strong itemprop="addressLocality">Киев</strong></span><br>
                <span>Телефон: <strong itemprop="telephone" class="ringo-phone">+38(044) 223-85-20</strong></span><br>
            </div>
          </div>
          <div class="bottom_contacts">
            <p>Если вы заметили неточность в описании, выделите текст и нажмите CTRL+ENTER</p>
            <p>Возможная ошибка будет оперативно исправлена</p>
            <p>Компания не несет ответсвенность за описание товара</p>
            <p class="currency-faq" id="currency-faq"><span class='strong'><span class="currency-faq-link">*</span> Цены в валюте указаны в качестве индикативных. Оплата товара производится в национальной валюте по курсу на день оплаты.</span></p>
          </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
    </div>

<div class="main_block main_block_footer">
  <div class="span-16 footer">
    <span itemprop="name">© Интернет-магазин бытовой техники <a href="/">590.ua</a> – продажа качественной бытовой техники наилучших брендов. Доставка, гарантия, бесплатное обслуживание</span>
    <div class="social_links">
      <a rel="nofollow" href="https://www.facebook.com/590.ua" target="_blank"><img src="/assets/media/fb.png" width="20" height="20" alt="facebook"></a>
      <a rel="nofollow" href="https://vk.com/ua590" target="_blank"><img src="/assets/media/vk.png" width="20" height="20" alt="vk"></a>
      <a rel="nofollow" href="https://twitter.com/590Ua" target="_blank"><img src="/assets/media/twiter.png" width="20" height="20" alt="twitter"></a>
      <a rel="nofollow" href="https://plus.google.com/101839783687775705263?rel=author"><img src="/assets/media/google.png" width="20" height="20" alt="google"></a>
    </div>
    <a rel="nofollow" href="http://hotline.ua/yp/4203/" target="_blank"><img src="/assets/media/hotline.png" width="102" height="29" alt="hotline"></a>
  </div>
</div>


{include file=_modal.tpl}
  <div class="navbar navbar-fixed-bottom data-navbar">
    <div class="navbar-inner">
      <div class="container">
        <div class="nav-collapse collapse">
          <ul class="nav">
            <li class="dropdown data-CompareLnk">
              <a href="#" data-toggle="dropdown" class="dropdown-toggle data-tooltip" role="button">Список сравнения <i class="icon-list"></i></a>
              <ul class="dropdown-menu data-compareItems" role="menu" id="compareItems"></ul>
            </li>
            {if $smarty.session.items|@count > 0}
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle" role="button">Просмотренные товары <i class="icon-eye-open"></i></a>
                <ul class="dropdown-menu" role="menu">
                  {foreach from=$smarty.session.items item=vieweditems name=content_vieweditems}
                    <li><a href="/catalog/item/{$vieweditems.id}" alt="{$vieweditems.brand} {$vieweditems.name}">{$vieweditems.brand} {$vieweditems.name}</a></li>
                  {/foreach}
                </ul>
              </li>
            {/if}
            {if $GAdata}
              <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle" role="button">Analytics <i class="icon-eye-open"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="#">Посещения: {$GAdata.visitors}</a>
                  </li>
                  <li>
                    <a href="#">Конверсия: {$GAdata.conv|round:2}%</a>
                  </li>
                  {if $zf.params.action=='item'}
                    <li>
                      <a href="#">Показы: {$itemShows}</a>
                    </li>
                    <li>
                      <a href="#">Продано: {$itemSales}</a>
                    </li>
                  {/if}
                </ul>
              </li>
            {/if}
          </ul>
        </div>
      </div>
    </div>
  </div>

{literal}
<!--<script src="{$url.js}/jquery-ui-1.8.23.custom.min.js"></script>-->
<script src="/assets/media/jquery.prettyPhoto.js"></script>
<script src="/js/custom-scroller/jquery.custom-scrollbar.js"></script>
<script src="/js/jquery.cookie.js"></script>
<script src="/js/jquery.qtip.min.js"></script><!-- CSS and JavaScript End -->
{/literal}

{literal}
<script src="/js/lightslider.js"></script>
<script>

  $(document).ready(function() {
    $("#lightSlider").lightSlider({
      item: 1,
        speed: 400, //ms'
        auto: false,
    });
  });
</script>
{/literal}

{literal}
<!-- Tidiochat --><script src="//code.tidio.co/nnyvrxcw6rbyxx6ryjnoioigpohmsben.js"></script><!-- Tidiochat End -->
<!-- Binotel -->
<script type="text/javascript">
	(function(d, w, s) {
	    var widgetHash = 'yIdQ0BKcMG', gcw = d.createElement(s); gcw.type = 'text/javascript'; gcw.async = true;
	    gcw.src = '//widgets.binotel.com/getcall/widgets/'+ widgetHash +'.js';
	    var sn = d.getElementsByTagName(s)[0]; sn.parentNode.insertBefore(gcw, sn);
	})(document, window, 'script');
</script>
<script type="text/javascript">
	(function(d, w, s) {
		var widgetHash = 'DTQyWBNQR2', ctw = d.createElement(s); ctw.type = 'text/javascript'; ctw.async = true;
		ctw.src = '//widgets.binotel.com/calltracking/widgets/'+ widgetHash +'.js';
		var sn = d.getElementsByTagName(s)[0]; sn.parentNode.insertBefore(ctw, sn);
	})(document, window, 'script');
</script><!-- Binotel End -->
<!-- PrivatBank --><script class="cp_analytics" type="text/javascript" async src="https://socauth.privatbank.ua/cp/public/js/cp.js?sys=10012432.UA"></script><!-- PrivatBank End -->
{/literal}
{if $zf.params.action=='item'}
           {literal}
           <script type="text/javascript">
                var google_tag_params = {
                    dynx_itemid: {/literal}"{$item.id}"{literal},
                    dynx_pagetype: "offerdetail",
                    dynx_totalvalue: {/literal}{price $item.price $item.id_currency}.00{literal}
                };
            </script>
            <script type="text/javascript">
            /* <![CDATA[ */
            var google_conversion_id = 846411199;
            var google_custom_params = window.google_tag_params;
            var google_remarketing_only = true;
            /* ]]> */
            </script>
            <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
            </script>
            <noscript>
            <div style="display:inline;">
            <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/846411199/?guid=ON&amp;script=0"/>
            </div>
            </noscript>

            {/literal}
{/if}

</body>
</html>
