{foreach from=$filters item=filters key=type}
    {if $type == 'select'}
        {foreach from=$filters item=filter}
            <div class="brand">
                <div></div>
                <div class="opti">
                    <div class="legg"><span>{$filter.name}</span><i></i></div>


                    <div class="under-forms">
                        <div class="forms">

                            <ul>
                                {foreach from=$filter.values item=value}
                                    {if $value.possible}
                                        <li>
                                            <a class="checkbox {if $value.selected}active{/if}"
                                               href="{url2 $filter.urlhelperarg=$value.add param=$route}">{$value.value}</a>
                                            <div class="check {if $value.selected}active{/if}"></div>
                                        </li>
                                    {else}
                                        <li>
                                            <a class="checkbox inactive">{$value.value}</a>
                                            <div class="check"></div>
                                        </li>
                                    {/if}
                                {/foreach}

                            </ul>
                        </div>
                    </div>
                </div>


            </div>
        {/foreach}
    {elseif $type == 'brands' && ($filters|@count > 1)}

        {*=============================================================*}
        <div class="brand">
            <div></div>
            <div class="opti">
                <div class="legg"><span>Бренд</span><i></i></div>
                <div class="under-forms">
                    <div class="forms">

                        <ul>
                            {foreach from=$filters name=brands item=brand}
                                {if $brand.possible}
                                    <li>
                                        <a class="checkbox {if $brand.selected}active{/if}"
                                           href="{url2 assoc.brand=$brand.add assoc.page=null param=$route}">{$brand.name}
                                        </a>
                                        <div class="check {if $brand.selected}active{/if}"></div>
                                    </li>
                                {else}
                                    <li><span class="checkbox inactive">{$brand.name}</span>
                                        <div class="check"></div>
                                    </li>
                                {/if}
                            {/foreach}

                        </ul>

                        {if $zf.params.brand}
                            <a href="{url2 assoc.brand=null param=$route}" class="clik">Показать
                                все</a>
                        {/if}

                    </div>
                </div>
            </div>
        </div>
        {*=============================================================*}
    {/if}
{/foreach}
<a href="/catalog/cat/{$catId}" class="btn btn-mini btn-danger">Сбросить все фильтры</a>

<div class="up-filter">
    <div style="height: fit-content">К фильтрам <img src="/assets/img/aror-back.png" alt="up"></div>
</div>
</div>