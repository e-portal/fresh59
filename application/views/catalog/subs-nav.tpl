{if $zf.params.controller=='catalog' && $zf.params.action=='cat' && !$finalCat && $filters|@count > 1}
    <div class="left-options">
        <div class="opti">
            <div class="liner"><span>Выбор по параметрам</span></div>
            <form action="">
                <ul>
                    <li>
                        <input type="checkbox" id="poll1" name="selects" value="poll1" class="checkbox">
                        <label for="poll1">
                            <span>В наличии <span>(154)</span></span>
                        </label>
                        <div class="check"></div>
                    </li>


                    <li>
                        <input type="checkbox" id="poll2" name="selects" value="poll2" class="checkbox">
                        <label for="poll2">
                            <span>Акционные предложения <span>(122)</span></span>
                        </label>
                        <div class="check"></div>
                    </li>


                    <li>
                        <input type="checkbox" id="poll3" name="selects" value="poll3" class="checkbox">
                        <label for="poll3">
                            <span>Товары со скидками <span>(140)</span></span>
                        </label>
                        <div class="check"></div>
                    </li>


                    <li>
                        <input type="checkbox" id="poll4" name="selects" value="poll4" class="checkbox">
                        <label for="poll4">
                            <span>Товары со скидками <span>(140)</span></span>
                        </label>
                        <div class="check"></div>
                    </li>


                    <li>
                        <input type="checkbox" id="poll5" name="selects" value="poll5" class="checkbox">
                        <label for="poll5">
                            <span>Товары со скидками <span>(140)</span></span>
                        </label>
                        <div class="check"></div>
                    </li>

                </ul>
            </form>
        </div>


        <div class="filter_toggle">
            <div class="liner"><span>Цена</span></div>
            <div id="slider-range" data-price-min="0" data-price-max="100000"></div>
            <p class="price-filters">
                <span>От</span>
                <input type="number" id="price-filter-min" placeholder="15000">
                <span>До</span>
                <input type="number" id="price-filter-max" placeholder="60000">
            </p>
        </div>


        {if !$accepted_filters}
            {if $filters}
                {foreach from=$filters item=filters key=type}
                    {if $type == 'select'}
                        <div class="brand">
                            <div></div>
                            <div class="opti">
                                <div class="legg"><span>Тип стиральной машины</span><i></i></div>


                                <div class="under-forms">
                                    <div class="forms">
                                        <form action="">
                                            <ul>
                                                <li>
                                                    <input type="checkbox" id="pol1" name="selects" value="pol1"
                                                           class="checkbox">
                                                    <label for="pol1">
                                                        <span>В наличии <span>(154)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                                <li>
                                                    <input type="checkbox" id="pol2" name="selects" value="pol1"
                                                           class="checkbox">
                                                    <label for="pol2">
                                                        <span>Акционные предложения <span>(122)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                                <li>
                                                    <input type="checkbox" id="pol3" name="selects" value="pol3"
                                                           class="checkbox">
                                                    <label for="pol3">
                                                        <span>Товары со скидками <span>(140)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                                <li>
                                                    <input type="checkbox" id="pol4" name="selects" value="pol4"
                                                           class="checkbox">
                                                    <label for="pol4">
                                                        <span>Товары со скидками <span>(140)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                                <li>
                                                    <input type="checkbox" id="pol5" name="selects" value="pol5"
                                                           class="checkbox">
                                                    <label for="pol5">
                                                        <span>Товары со скидками <span>(140)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                                <li>
                                                    <input type="checkbox" id="pol7" name="selects" value="pol7"
                                                           class="checkbox">
                                                    <label for="pol7">
                                                        <span>Товары со скидками <span>(140)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                                <li>
                                                    <input type="checkbox" id="pol8" name="selects" value="pol8"
                                                           class="checkbox">
                                                    <label for="pol8">
                                                        <span>Товары со скидками <span>(140)</span></span>
                                                    </label>
                                                    <div class="check"></div>
                                                </li>


                                            </ul>
                                        </form>
                                        <div class="clik">Показать все</div>

                                    </div>
                                </div>
                            </div>


                        </div>
                    {elseif $type == 'brands' && ($filters|@count > 1)}
                        {*=============================================================*}
                        <div class="brand">
                            <div></div>
                            <div class="opti">
                                <div class="legg"><span>Бренд:</span><i></i></div>
                                <div class="under-forms">
                                    <div class="forms">

                                        <ul>
                                            {foreach from=$filters name=brands item=brand}
                                                {if $brand.possible}
                                                    <li class="checkbox">
                                                        <a {if $brand.selected}class="active"{/if}
                                                           href="{url2 assoc.brand=$brand.add assoc.page=null param=$route}">{$brand.name}
                                                        </a>
                                                        <label for="pol1">
                                                            <span>В наличии <span>({$smarty.foreach.brands.total}
                                                                    )</span></span>
                                                        </label>
                                                    </li>
                                                {else}
                                                    <li><span class="inactive">{$brand.name}</span></li>
                                                {/if}
                                            {/foreach}

                                        </ul>

                                        {if $zf.params.brand}
                                            <a href="{url2 assoc.brand=null param=$route}" class="clik">Показать все</a>
                                        {/if}

                                    </div>
                                </div>
                            </div>


                        </div>
                        {*=============================================================*}

                    {/if}

                {/foreach}
            {/if}
            <a href="/catalog/cat/{$catId}" class="btn btn-mini btn-danger">Сбросить все фильтры</a>
        {/if}

        <div class="up-filter">
            <div style="height: fit-content">К фильтрам <img src="/assets/img/aror-back.png" alt="up"></div>
        </div>

    </div>
{/if}
