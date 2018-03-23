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
</div>

<div class="clear"></div>
<div class="alert alert-info">
    Не нашли ответ на свой вопрос, <a href="#callback" data-toggle="modal">задайте его нашим менеджерам</a>.
</div>