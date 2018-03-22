<div class="banner-valentine{if $zf.params.controller == 'index' || ($zf.params.controller=='catalog' && $zf.params.action=='gifts')} banner-large{/if}">
    <div class="form-horizontal">
        <span class="input-append">
            <input rel="tooltip" type="text" class="input-mini" placeholder="Сумма..." id="data-giftSumm" />
            <span class="btn disabled">{$smarty.session.Currency.title}</span>
        </span>
        <span class="btn btn-warning data-GiftChoice">Подобрать подарки</span> 
    </div>
</div>
