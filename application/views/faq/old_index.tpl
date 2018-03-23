{include file=_header.tpl}

{if $id}
<div class="breadcrumbs span-12 no_margin">
    <a href="/">Интернет магазин бытовой техники</a>
    <span>→</span>
    <span><a href="/faq">Вопросы и ответы</a></span>
    <span>→</span>
    <span>{$article.name}</span>
</div>

<div class="h1_holder span-12 no_margin"><h1>{$article.name}</h1></div>
{$article.text}
<p class="clearfix"></p>
<br>
<a href="/faq" class="btn btn-mini btn-info">&larr; Все вопросы и ответы</a>
{if $id==96}
{literal}
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 590_инвертор -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-7416138730155689"
     data-ad-slot="2980765851"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
{/literal}
{/if}
{else}
<div class="breadcrumbs span-12 no_margin">
    <a href="/">Интернет магазин бытовой техники</a>
    <span>→</span>
    <span>Вопросы и ответы</span>
</div>

<div class="h1_holder span-12 no_margin">
    <h1>вопросы и ответы</h1>
</div>
<div class="span-12 faq_block no_margin">
    {if $faq}
    {foreach from=$faq item=faq_item name=glossary}
    <div class="span-12 faq_item no_margin">
        <div class="faq_control_button"><img src="/assets/media/faq_toggle.png"></div>
        <span class="faq_title">{$faq_item.name}</span>
        <div class="faq_text">
            <p>{$faq_item.small_text}</p>
            <p><a href="/faq/{$faq_item.id}" class="btn btn-mini btn-info">Подробнее</a></p>
        </div>
    </div>
    {/foreach}
    {else}
    <p>Материал готовится и скоро будет выложен на сайт.</p>
    {/if}

    {literal}
    <script>
        $('.faq_item').on('click', function () {
            $('.faq_text').hide();
            $(this).find('.faq_text').show();
        });
    </script>
    {/literal}
</div>

<div class="clear"></div>
<div class="alert alert-info">
    Не нашли ответ на свой вопрос, <a href="#callback" data-toggle="modal">задайте его нашим менеджерам</a>.
</div>

{/if}

{include file=_footer.tpl}