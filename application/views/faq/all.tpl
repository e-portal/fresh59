<div class="container wrap">
    <div class="bread-crumbs wrap breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
         itemtype="http://schema.org/BreadcrumbList">
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <a href="/" itemprop="item">Главная</a>
            <meta itemprop="position" content="1">
        </div>
        <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
            <span itemprop="name" class="label1">Вопросы и ответы</span>
            <meta itemprop="position" content="1">
        </div>

    </div>
    <h1 class="liner cent wrap"><span>Вопрос / Ответ</span></h1>
    <div class="ourr wrap left-right-banner">
        <div class="left-banner">
            {include file='layouts/left-banner.tpl'}
        </div>
        <div class="right-banner">

            <div class="accordion">
                {if $faq}
                {foreach from=$faq item=faq_item name=glossary}
                <section class="accordion_item">
                    <h3 class="title_block">{$faq_item.name}</h3>
                    <div class="info-accord">
                        <div class="article">
                            {$faq_item.text}
                        </div>
                    </div>
                </section>
                {/foreach}
                {else}
                <p>Материал готовится и скоро будет выложен на сайт.</p>
                {/if}
            </div>
            <div class="say-question">
                <span>Не нашли ответ на свой вопрос? <br class="enter"> Задайте его нашим менеджерам</span>
                <a href="#popup" rel="nofollow" class="modalbox">Задать вопрос</a>
            </div>
        </div>
    </div>


    {include file='layouts/slider_view.tpl'}
    {include file='layouts/orig.tpl'}
    <div class="doww"><img src="/assets/img/verh.png" alt=""></div>

</div>

<div id="popup" class="popup-question">
    <div class="popup-inner">
        <h1 class="liner cent"><span>Задать вопрос</span></h1>
        <div class="close"><img src="/assets/img/close.png" alt="close"></div>
        <form method="post" id="form-feedback">
            <div class="popup-block">
                <p>фио *</p>
                <input type="text" name="name" id="name"/>
                <div id="bthrow_error_name"></div>
                <p>E-mail *</p>
                <input type="email" name="name" id="email"/>
                <div id="bthrow_error_email"></div>
                <p>телефон * </p>
                <input type="text" name="phone" class="numb"/>
                <div id="bthrow_error_phone"></div>
            </div>
            <div class="popup-block">
                <p>ваш вопрос</p>
                <textarea name="textarea" id="textarea" cols="20" rows="7"></textarea>

                <input class="button" type="submit" value="Отправить вопрос"/>
                <div class="throw_error"></div>
            </div>
        </form>
    </div>
    <div class="close-question"></div>
</div>

<div class="doww"><img src="/assets/img/verh.png" alt="up"></div>