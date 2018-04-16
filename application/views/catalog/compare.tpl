{include file='layouts/_header.tpl'}

{if !$error}
    <div class="container wrap">
        <div class="bread-crumbs breadcrumbs mobile-display-none" id="breadcrumbs" itemscope=""
             itemtype="http://schema.org/BreadcrumbList">
            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <a href="/" itemprop="item">Главная</a>
                <meta itemprop="position" content="1">
            </div>
            <div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="button">
                <span itemprop="name" class="label1">Сравнение товаров</span>
                <meta itemprop="position" content="2">
            </div>

        </div>
        <h1 class="liner cent"><span>Сравнение товаров</span></h1>

        <div class="compare-all-blocks">
            <div class="compare-block compare-block-left">
                <div class="compare-fixed">
                    <div class="compare-thead">
                        Добавить товар в сравнение
                    </div>
                    <div class="compare-product">
                        <a class="compare-btn compare-btn-active">Все параметры</a>
                        <a class="compare-btn only-differences">Только отличия</a>
                    </div>
                </div>

                <div class="compare-features">
                    <ul class="compare-list">

                        {foreach from=$fields item=grp name=grp}
                            <div class="compare-features-title"><span>{$grp.name}</span></div>
                            {foreach from=$grp.fields item=field name=field}
                                <li class="compare-features-feat">{$field.name}</li>
                            {/foreach}
                        {/foreach}

                    </ul>
                </div>
                <div class="compare-if-small"></div>
            </div>

            <div class="compare-all-blocks-wrap">
                <div class="compare-fixed-wrap">
                    <div class="compare-fixed-over wrap">
                        {foreach from=$items item=item}
                            <div class="compare-fixed">
                                <div class="compare-thead">
                                    <div class="basket-delete-icon"></div>
                                </div>
                                <div class="compare-product">
                                    <div class="basket-prod flexibal">
                                        <div class="basket-prod-img">
                                            <img {if $item.imgid} src="{$url.img}/catalog/{$item.imgid}_s.{$item.imgext}"
                                                    {else} src="/{$module}/images/no-image.jpg"{/if}/>
                                        </div>
                                        <div class="basket-prod-text">
                                            <a href="{iurl assoc.cat_latin=$item.cat_latin_single  assoc.parent=$item.parentname assoc.subdomain=$item.subdomain assoc.cat=$item.cat_onename assoc.brand=$item.brand assoc.item=$item.name}"
                                               class="basket-prod-name">
                                                {$item.brand} {$item.name}
                                            </a>
                                            <div class="prod-price">
                                                <span>{price $item.price $item.id_currency}</span>{$smarty.session.Currency.title}
                                            </div>
                                            <div class="none-if-more">
                                                <a class="qweek-busket-prod add-to-cart bask acty"
                                                        {include file='layouts/cart-item.tpl' cart_item=$item}>
                                                    <span>В корзину</span></a>
                                                <a class="favorite-ico"><img src="/assets/img/left-butt-start.png"></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        {/foreach}
                    </div>
                </div>
                <div class="compare-block-wrap">

                    {foreach from=$items item=item}
                        <div class="compare-block">
                            <div class="compare-features">

                                {foreach from=$fields item=grp name=grp}
                                    <ul class="compare-list">
                                        <div class="compare-features-title"></div>
                                        {foreach from=$grp.fields item=field name=field}
                                            <li class="compare-features-feat">{$field.itemvalues[$item.id]}</li>
                                        {/foreach}
                                    </ul>
                                {/foreach}
                            </div>

                            <div class="compare-if-small">
                                <a class="qweek-busket-prod add-to-cart bask acty"
                                        {include file='layouts/cart-item.tpl' cart_item=$item}>
                                    <span>В корзину</span></a>
                            </div>

                        </div>
                    {/foreach}

                </div>

            </div>
        </div>


        <div class="doww" style="opacity: 1; visibility: visible;"><img src="/assets/img/verh.png" alt=""></div>


    </div>
{else}
    {$error}
{/if}

{include file='layouts/_footer.tpl'}