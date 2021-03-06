<div class="container category">

    {*<pre>{$accepted_filters|@debug_print_var}</pre>*}

    <div class="libe wrap">

        <div class="slick libe-slick">
            <div class="item-libe">
                <img src="/assets/img/categ.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link" tabindex="0"></a></div>
            </div>


            <div class="item-libe">
                <img src="/assets/img/categ.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link" tabindex="0"></a></div>
            </div>


            <div class="item-libe">
                <img src="/assets/img/categ.png" alt="">
                <div class="khob acty">Все скидки<a href="/" id="link" tabindex="0"></a></div>
            </div>
        </div>

        <!--</div>-->
    </div>

    <div class="tehni wrap">

        <div class="bread-crumbs breadcrumbs mobile-display-none wrap" id="breadcrumbs" itemscope=""
             itemtype="http://schema.org/BreadcrumbList">
            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <a href="/" itemprop="item">Главная</a>
                <meta itemprop="position" content="1">
            </div>


            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <span itemprop="name" class="label1">{$catName}</span>
                <meta itemprop="position" content="2">
            </div>

        </div>


        <div class="liner cent"><span>{$catName}</span></div>
        <div class="main-tehni">
            {foreach from=$categories item=cat name=categories}
                {*<pre>{$cat|@debug_print_var}</pre>*}
                <div class="item-tehni">
                    <div class="base-tehni">
                        <div class="left-tehni">
                            <a href="/{$cat.subdomain}/{$cat.latin_name|replace:' ':'-'|mblower}">
                                <img src="{if $cat.id==86}/images/catalog/38342_s.jpg{else}{$url.img}/catalog/{$img[$cat.id].id}_s.{$img[$cat.id].ext}{/if}"
                                     alt="{$catName}">
                            </a>
                        </div>
                        <div class="right-tehni">
                            <a href="/{$cat.subdomain}/{$cat.latin_name|replace:' ':'-'|mblower}">
                                {$cat.name}
                            </a>
                            <div class="detailed-category">
                                {foreach from=$smart_filter item=filter_item key=filter_key}
                                    {if $filter_key == $cat.id}
                                        {foreach from=$filter_item item=sub_filter_item}
                                            <a href="{$sub_filter_item.url}">{$sub_filter_item.name}</a>
                                            <br/>
                                        {/foreach}
                                    {/if}
                                {/foreach}
                            </div>
                        </div>

                    </div>

                </div>
            {/foreach}
        </div>
    </div>


    <div class="senn senn-scrol">
        <div class="senn-container wrap">
            <a class="blue" href="/">Все просмотренные товары<span class="linn"></span></a>


            <div class="liner"><span>Топ продаж</span></div>


            <div class="parag parag-prev">
                <div class="parag-item active">Популярные модели</div>
                <div class="parag-item">Отдельностоящая</div>
                <div class="parag-item">Встраиваемая</div>
                <div class="parag-item">Мелкая бытовая</div>
                <div class="parag-item">Красота и здоровье</div>
                <div class="parag-item">Для уборки</div>
                <div class="parag-item">Посуда</div>
                <div class="parag-item">Мойки и смесители</div>
                <div class="parag-item">Климатическая</div>
            </div>

            <div class="senn-main maii">

                <div class="senn-slik slick">


                    <div class="maii-item">

                        <!--TOP ITEMS-->
                        {include file='layouts/top_items.tpl'}
                        <!--TOP ITEMS-->

                    </div>


                </div>


            </div>
            <!--and senn-main-->


        </div>
    </div>

    {include file='layouts/slider_view.tpl'}
    <div class="saww wrap">
        <!-- SEO -->
        <div class="texx">
            {$seo_text_bottom|default:''}
        </div>
        <!-- SEO -->
    </div>

    {include file='layouts/orig.tpl'}


</div>


<div class="doww"><img src="/assets/img/verh.png" alt=""></div>