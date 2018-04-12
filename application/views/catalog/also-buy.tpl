<div class="small-product slider-till-here">
    <div class="container">
        <div class="liner" id="prod-accessories">
            <span>С этим товаром покупают</span>
            <a class="arrow-right bluee">Смотреть все</a>
        </div>


        <div class="parag parag-prev">
            <div class="parag-item active">Все категории</div>
            {foreach from=$assocItemsVmeste item=assocItemsCats name=similarItems}
                <div class="parag-item">{$assocItemsCats.name}</div>
            {/foreach}
        </div>


        <div class="senn-main watched-slider slider-more-prod">

            {foreach from=$assocItemsVmeste item=assocItemsCats name=similarItems}
                {foreach from=$assocItemsCats.items item=assocItem}
                    <pre>{$assocItem|@debug_print_var}</pre>

                {/foreach}
            {/foreach}

        </div>


    </div>
</div>