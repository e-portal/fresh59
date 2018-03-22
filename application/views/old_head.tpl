<meta charset="UTF-8">
<title>{include file=seo/title.tpl}</title>
<meta name="Keywords" content="{include file=seo/keywords.tpl}"/>
<meta name="Description" content="{include file=seo/description.tpl}"/>
<!--<meta name="viewport" content="width=device-width, initial-scale=1.0">
-->
<meta name="google-site-verification" content="1-Hg0eNccK7uzcinucrrMC5a62qknmVFfRP8xlYaeYo"/>
<meta name="yandex-verification" content="175eb0f0b1f874ec"/>

<!-- Вывод картинки товара при расшаривании ссылки -->
{if $zf.params.action=='item'}
{if $item.images}
{foreach from=$item.images item=item_image name=item_image}
{if $smarty.foreach.item_image.first}
{assign var="item_full_info" value=$item_image}
{/if}
{/foreach}
{/if}

{php}
$url=$this->get_template_vars('url');
$item_image=$this->get_template_vars('item_full_info');

$full_url = "https://590.ua/".$url['img']."/catalog/".$item_image['id'].".".$item_image['imgext'];

$headers_array = array();
$headers_array = get_headers($full_url);//отсылаем запрос
$request = $headers_array[0];//выбираем главный ответ сервера
if ($request == 'HTTP/1.1 404 Not Found')
{
$address = '1';
$this->assign('addr_image',$address);
}
{/php}
{/if}
{if $item.images}
{foreach from=$item.images item=item_image name=item_image}
{if $smarty.foreach.item_image.first}
{if $addr_image}
<meta property="og:image" content="https://590.ua/{$url.img}/catalog/{$item_image.id}_s.{$item_image.imgext}">
{else}
<meta property="og:image" content="https://590.ua/{$url.img}/catalog/{$item_image.id}.{$item_image.imgext}">
{/if}
{/if}
{/foreach}
{else}
<meta property="og:image" content="https://590.ua/assets/media/logo.png">
{/if}
<!-- // Вывод картинки товара при расшаривании ссылки // -->

<!--Push OneSignal-->
<link rel="manifest" href="/manifest.json">
<script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async></script>
{literal}
<script>
    var OneSignal = window.OneSignal || [];
    OneSignal.push(["init", {
        appId: "19ea3981-909c-4378-bc9f-07bed650ca30",
        autoRegister: false,
        promptOptions: {
            /* These prompt options values configure both the HTTP prompt and the HTTP popup. */
            /* actionMessage limited to 90 characters */
            actionMessage: "Оповещать Вас об актуальных акциях и выгодных предложениях? Мы часто делаем скидки!",
            /* acceptButtonText limited to 15 characters */
            acceptButtonText: "ДА, КОНЕЧНО",
            /* cancelButtonText limited to 15 characters */
            cancelButtonText: "Нет, спасибо"
        },
        welcomeNotification: {
            "title": "Благодарим за подписку!",
            "message": "Нам очень приятно видеть Вас среди наших самых активных клиентов.",
            "url": "https://goo.gl/yehMm3" /* Leave commented for the notification to not open a window on Chrome and Firefox (on Safari, it opens to your webpage) */
        }
    }]);
    OneSignal.push(function () {
        OneSignal.showHttpPrompt();
    });
</script>
{/literal}


<link rel="shortcut icon" href="/images/favicon2.ico" type="image/x-icon">
<link href="/images/hint/hover-min.css" rel="stylesheet" media="all">
{if $zf.params.controller=='index'}
<link rel="stylesheet" href="{css arr=main}">
{elseif $zf.params.controller=='catalog' && ($zf.params.action=='cat' || $zf.params.action=='brand' || $zf.params.action=='search' || $zf.params.action=='gifts' || $zf.params.action=='action') && !$finalCat}
<link rel="stylesheet" href="{css arr=cat arr=gifts}">
{if $smarty.cookies.display=='row'}
<link rel="stylesheet" href="{$url.css}/display-row.css" class="theme">
{else}
<link rel="stylesheet" href="{$url.css}/display-grid.css" class="theme">
{/if}
{elseif $zf.params.controller=='catalog' && ($zf.params.action=='cat' || $zf.params.action=='brand' || $zf.params.action=='search') && $finalCat}
<link rel="stylesheet" href="{css arr=cat-main}">
{elseif $zf.params.controller=='catalog' && ($zf.params.action=='sets' || $zf.params.action=='set')}
<link rel="stylesheet" href="{css arr=sets}">
{elseif $zf.params.controller=='catalog' && $zf.params.action=='compare'}
<link rel="stylesheet" href="{css arr=compare}">
{elseif $zf.params.controller=='catalog' && $zf.params.action=='item'}
<link rel="stylesheet" href="{css arr=item}">
{elseif $zf.params.controller=='page' || $zf.params.controller=='articles' || $zf.params.controller=='actions'}
<link rel="stylesheet" href="{css arr=page}">
{if $zf.params.controller == 'articles'}
<link rel="stylesheet" href="{$url.css}/display-grid.css" class="theme">
<link rel="stylesheet" href="{$url.css}/articles.css" class="theme">
{/if}
{elseif $zf.params.controller=='faq' || $zf.params.controller=='news'}
<link rel="stylesheet" href="{css arr=page arr=faq}">
{elseif $zf.params.controller=='basket' && ($zf.params.action == 'order' || $zf.params.action == 'thankyou')}
<link rel="stylesheet" href="{css arr=basket}">
<link rel="stylesheet" href="/js/calendar/skins/aqua/theme.css">
{elseif $zf.params.controller=='basket' && ($zf.params.action == 'paybycard' || $zf.params.action == 'card')}
<link rel="stylesheet" href="{css arr=paybycard}">
{elseif $zf.params.controller=='auth'}
<link rel="stylesheet" href="{css arr=zend_style}">
{if $manager || $user_type == 'card'}
<link rel="stylesheet" href="{$url.css}/personal.css">
{/if}
{else}
<link rel="stylesheet" href="{css arr}">
{/if}

{if $zf.params.controller!=='index'}
{literal}
<style>
    .central_block .sidebar > ul.sidebar {
        display: none;
    }
</style>
{/literal}
{/if}

<script src="{$url.js}/jquery.min.js"></script>
<script src="{$url.js}/jquery-ui-1.8.23.custom.min.js"></script>
{if $manager}
<link rel="stylesheet" href="{$url.css}/jcarousel.css">
<link rel="stylesheet" href="{$url.css}/manager.css">
{/if}

<!--всплывающие подсказки-->
<link rel="stylesheet" type="text/css" href="https://590.ua/jGrowl/jquery.jgrowl.min.css"/>
<script src="https://590.ua/jGrowl/jquery.jgrowl.min.js"></script>


<!--	<script src="/js/jquery.cookie.js"></script>
		<script src="/js/jquery.qtip.min.js"></script> -->
<script async src="{$url.js}/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<!--	<script src="{$url.js}/jquery-ui-1.8.23.custom.min.js"></script> -->
<script async src="{$url.js}/jquery.menu-aim.js"></script>
<script async src="{$url.js}/navigation.js"></script>
<link rel="stylesheet" href="/assets/media/prettyPhoto.css">
<link rel="stylesheet" href="{$url.js}/custom-scroller/jquery.custom-scrollbar.css">
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic' rel='stylesheet'
      type='text/css'>
<!--	<script src="/assets/media/jquery.prettyPhoto.js"></script>
		<script src="{$url.js}/custom-scroller/jquery.custom-scrollbar.js"></script> -->
{if $zf.params.controller=='catalog' && $zf.params.action=='item'}
<link rel="stylesheet" href="{$url.js}/galleryS/galleryS.css">
<script src="{$url.js}/galleryS/galleryS.js"></script>
{literal}
<script>
    $(document).ready(function () {
        $('.galleryS').galleryS();
    });
</script>
{/literal}
{/if}
<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet"
      type="text/css"/>
{if $zf.params.controller=='index'}
<script type="text/javascript" src="{js arr=main arr=jquery/jquery.numeric}"></script>
<script async src="{$url.js}/jquery.slider.js"></script>
{elseif $zf.params.controller=='catalog' && ($zf.params.action=='cat' || $zf.params.action=='brand' || $zf.params.action=='search' || $zf.params.action=='gifts'|| $zf.params.action=='action')}
<!-- <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/> -->
<script type="text/javascript" src="{js arr=cat arr=calc arr=jquery/jquery.numeric}"></script>
<link rel="stylesheet" href="{$url.js}/fancybox/jquery.fancybox-1.3.4.css">
{elseif $zf.params.controller=='catalog' && ($zf.params.action=='sets' || $zf.params.action=='set')}
<script type="text/javascript" src="{js arr=sets arr=calc}"></script>
{elseif $zf.params.controller=='catalog' && $zf.params.action=='item'}
<!-- rate -->
<script src="{$url.js}/rate/jquery.rating.js"></script>
<link rel="stylesheet" href="{$url.js}/rate/jquery.rating.css">
<!-- / rate -->
<link rel="stylesheet" href="{$url.js}/fancybox/jquery.fancybox-1.3.4.css">
<script type="text/javascript" src="{$url.js}/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="{js arr=item arr=calc}"></script>
{elseif $zf.params.controller=='catalog' && $zf.params.action=='compare'}
<script type="text/javascript" src="{js arr=item}"></script>
{elseif $zf.params.controller=='basket'}
<script type="text/javascript"
        src="{js arr=basket arr=calendar/calendar arr=calendar/lang/calendar-ru arr=calendar/calendar-setup}"></script>
{else}
<script type="text/javascript" src="{js}"></script>
{/if}

<meta name="nd-verif" content="{$filtersCount}"/>
{if $filtersCount >= 1 || ($filtersCount === 1 && $zf.params.brand) || $zf.params.availability || $zf.params.sort || $zf.params.specprice || $zf.params.sale}
<meta name="robots" content="noindex,follow"/>
{/if}
{php}
if (!function_exists('strposa')) {
function strposa($haystack, $needle, $offset=0) {
if(!is_array($needle)) $needle = array($needle);
foreach($needle as $query) {
if (strpos($haystack, $query, $offset) !== false) return true; // stop on first true result
}
return false;
}
}
if (strposa($_SERVER['REQUEST_URI'], array('utm','gclid=','UAH','RUR','WMZ','USD','?on_page','?sort','price_from','price_to'))){
echo '
<meta name="robots" content="noindex,nofollow"/>';
}
{/php}

<link rel="publisher" href="https://plus.google.com/101839783687775705263/about"/>

{if ($countBrand > 2)}
<meta name="robots" content="noindex, follow">
{/if}

{if isset($zf.params.brand) && !$singleBrand}
<meta name="robots" content="noindex, follow">{/if}

{if $paginator}
{assign var=pages value=$paginator->getPages()}
{if $zf.params.controller=='catalog' && in_array($zf.params.action, array('cat','brand'))}
{if intval($pages->current) > 1}
<link rel="prev" href="{$firstPageUrl}{if $pages->current-1 > 1}/page/{$pages->current-1}{/if}">
<!-- <link rel="canonical" href="{$categoryUrl}{if $zf.params.brand}/brand/{$zf.params.brand}{/if}{if $zf.params.page}{/if}"> -->
<link rel="canonical"
      href="{$categoryUrl}{if $zf.params.brand}/brand/{$zf.params.brand}{elseif $zf.params.action=='brand'}https://590.ua/{$brandName|mblower}{else}{/if}">
{/if}
{if intval($pages->current) != $pages->pageCount}
<link rel="next" href="{$firstPageUrl}/page/{$pages->current+1}">
{/if}
{/if}
{/if}

<link rel="stylesheet" href="/assets/media/main.css">
<link rel="stylesheet" href="/assets/media/oleg.css">
<link rel="stylesheet" href="/assets/media/taras.css">
<link rel="stylesheet" href="/assets/media/slider590.css">

{literal}
<script>
    (function (g, r, a, v, i, t, y) {
        g[a] = g[a] || [], y = r.createElement(v),
            g = r.getElementsByTagName(v)[0];
        y.async = 1;
        y.src = '//' + i + '/js/' + t + '/gr_reco5.min.js';
        g.parentNode.insertBefore(y, g);
        y = r.createElement(v), y.async = 1;
        y.src = '//' + i + '/grrec-' + t + '-war/JSServlet4?cc=1';
        g.parentNode.insertBefore(y, g);
    })(window, document, '_gravity', 'script', '590ua.yusp.com', '590ua');
</script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-46008870-1', 'auto');
    ga('require', 'ec');
    ga('send', 'pageview');
</script>

<!--PUSH уведомления от E-sputnik-->
<!--<script>
    (function(i,s,o,g,r,a,m){
    i["esSdk"] = r;
    i[r] = i[r] || function() {
        (i[r].q = i[r].q || []).push(arguments)
    }, a=s.createElement(o), m=s.getElementsByTagName(o)[0]; a.async=1; a.src=g;
    m.parentNode.insertBefore(a,m)}
    ) (window, document, "script", "https://esputnik.com/scripts/v1/public/scripts?apiKey=eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI0NTI0ZWZhYTJkYzI2MGRmYTM4YTE1NDBlMWFhYjE0N2Q1OTAzNTEyM2U0MWNlOTYwZGU0NDM3MGRmY2Q1OTBjNjRlZGIxM2M0NWExYTQzMzJhMDg3MGQ5ZDU2YThlNWM1NGIwYjUxZjQxNzUzNWVkZjE0OTE0ODM2YTU0YmY0MGEzZDZiZDcwNmYyODMzNDJhZjYwYjUyNmJhODQ0MjEyMDA4OGU1OTA5MDE5MmMifQ.cOJ6YZCZz_JqSFe_X41oh3YXWFmxHlUWQ6hTcRi74-4fz8b1UzvAETe5d0ALDTiLvc9AzwXel46RSWnrm2pliw&domain=407F3F41-E516-402B-A2F9-043E153901AA", "es");
    es("pushOn");
</script>-->
{/literal}
