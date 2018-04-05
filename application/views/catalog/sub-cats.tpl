{if $pages->totalItemCount > 0}

{else}
    <div class="alert alert-error">По заданным параметрам ничего не найдено<br/>
        <a class="btn btn-mini" href="{$baseUrl}">вернуться назад</a>
    </div>
    По заданным параметрам ничего не найдено
    <div class="khob acty">вернуться назад
        <a href="{$baseUrl}" class="link" tabindex="-1"></a>
    </div>

{/if}
<!-- SEO -->
<div class="texx">
    {$seo_text_bottom|default:''}
</div>
<!-- SEO -->