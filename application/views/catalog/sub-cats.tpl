{if $pages->totalItemCount > 0}

{else}
    <div class="alert alert-error">По заданным параметрам ничего не найдено<br/>
        <a class="btn btn-mini" href="{$baseUrl}">вернуться назад</a>
    </div>
{/if}
<!-- SEO -->
<div class="texx">
    {$seo_text_bottom|default:''}
</div>
<!-- SEO -->