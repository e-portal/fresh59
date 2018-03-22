{if ($zf.params.controller=='catalog' && $zf.params.action=='cat') || $filters|@count > 1}
    {if !$finalCat && $zf.params.controller == 'catalog' && $zf.params.action =='cat'}
        <noindex>
        <div class="filter{if $accepted_filters} get-ajax{/if} filters_block">
            <div class="filter-group price_filter">
                <ul>
                    <li><span class='title'>Цена, {$smarty.session.Currency.title}</span></li>
                    <li>
                        <input type="checkbox" id="price" class="hidden" />
                        <input placeholder="От" class="price_field price_filter_start" type="text" id="price_from" {if $zf.params.price_from}value="{$zf.params.price_from}"{/if}/> 
                        <input placeholder="до" class="price_field price_filter_end"  type="text" {if $zf.params.price_to}value="{$zf.params.price_to}"{/if} id="price_to"/> 
                        <button class="button_v1 submit_filter" onclick="filter('price');" type="submit">Ок</button>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            {if !$accepted_filters}
            {if $filters}
            {foreach from=$filters item=filters key=type}
                {if $type == 'select'}
                    {foreach from=$filters item=filter}
                    	<div class="filter-group">
                            <ul>
                                <li><span class='title'>{$filter.name}:</span></li>
                                {foreach from=$filter.values item=value}
                                    {if $value.possible}
                                        <li class="fg-item"><a {if $value.selected}class="active"{/if} href="{url2 $filter.urlhelperarg=$value.add param=$route}">{$value.value}</a></li>
                                    {else}
                                        <li><span class="inactive">{$value.value}</span></li>
                                    {/if}
                                {/foreach}
                            </ul>
                            {if $filter.accepted}<a href="{url2 $filter.urlhelperarg=null param=$route}" class="btn btn-mini">Сбросить фильтр</a>{/if}
                    	</div>
                    {/foreach}

                    {elseif $type == 'measure'}
                        {foreach from=$filters item=filter}
                            <div class="filter-group">
                                <ul>
                                    <li><span class='title'><label for="amount_{$filter.id}">{$filter.name}{if $filter.measure} ,{$filter.measure}{/if}:</label><input id="amount_{$filter.id}" type="hidden" /></span></li>
                                    <li>
                                        От
                                        <input class="span1" id="amount_from_{$filter.id}" type="text" />
                                        до <input class="span1" id="amount_to_{$filter.id}" type="text" />&nbsp;
                                        <input class="btn btn-mini" id="submit_{$filter.id}" type="submit" value="Ок" />
                                    </li>
                                    <li><div id="slider_{$filter.id}"></div></li>
                                </ul>
                                {literal}
                                <script type="text/javascript">
                                    $(document).ready(function() {
                                        $("#{/literal}slider_{$filter.id}{literal}").slider({
                                            range: true,
                                            min:  {/literal}{$filter.globalminvalue} {literal},
                                            max:  {/literal}{$filter.globalmaxvalue} {literal},
                                            values: [ {/literal}{if $filter.fromvalue}{$filter.fromvalue}{else}{$filter.minvalue}{/if}, {if $filter.tovalue}{$filter.tovalue}{else}{$filter.maxvalue}{/if} {literal}],
                                            slide: function(event, ui) {
                                                $("#amount_from_{/literal}{$filter.id} {literal}").val(ui.values[0]);
                                                $("#amount_to_{/literal}{$filter.id} {literal}").val(ui.values[1]);
                                                document.addEventListener("mouseup",StopDrag,true);
                                                window.id = this.id;
                                            }
                                        });
                                        $("#amount_from_{/literal}{$filter.id} {literal}").val($("#{/literal}slider_{$filter.id}{literal}").slider("values", 0));
                                        $("#amount_to_{/literal}{$filter.id} {literal}").val($("#{/literal}slider_{$filter.id}{literal}").slider("values", 1));
                                        $('#amount_from_{/literal}{$filter.id}{literal}').live('keyup', function(){
                                            if ($(this).val()!='')
                                                {
                                                    $("#{/literal}slider_{$filter.id}{literal}").slider("values",0,$(this).val());
                                                }
                                            });
                                        $('#amount_to_{/literal}{$filter.id}{literal}').live('keyup', function(){
                                            if ($(this).val()!='')
                                            {
                                                $("#{/literal}slider_{$filter.id}{literal}").slider("values",1,$(this).val());
                                            }
                                        });
                                        $('#submit_{/literal}{$filter.id}{literal}').live('click', function(){
                                                window.id = "slider_{/literal}{$filter.id}{literal}";
                                                filter(window.id);
                                            });
                                    });
                                </script>
                                {/literal}
                            </div>
                        {/foreach}

                    {elseif $type == 'brands' && ($filters|@count > 1)}
                    
                    <div class="filter-group">
                    	<ul>
                            <li><span class='title'>Бренд:</span></li>
                            {foreach from=$filters name=brands item=brand}
                                {if $brand.possible}
                                    <li class="fg-item"><a {if $brand.selected}class="active"{/if} href="{url2 assoc.brand=$brand.add assoc.page=null param=$route}">{$brand.name}</a></li>
                                {else}
                                    <li><span class="inactive">{$brand.name}</span></li>
                                {/if}
                            {/foreach}
                        </ul>
                        {if $zf.params.brand}<a href="{url2 assoc.brand=null param=$route}" class="btn btn-mini">Сбросить фильтр</a>{/if}
                    </div>
                    {/if}
                {/foreach}
            {/if}
                <a href="/catalog/cat/{$catId}" class="btn btn-mini btn-danger">Сбросить все фильтры</a>
            {/if}
        </div>
        </noindex>
    {/if}
{/if}
            
{*        
{if ($zf.params.controller=='catalog' && $zf.params.action=='actions')}
    <div id="filter">
        <div class="head">
        	Акции по разделам
        </div>
    	
         <div class="filters">
             {if !$catId}<span class="active">Все предложения</span>{else}<a href="{url2 assoc.catId=null}">Все предложения</a>{/if}
             {foreach from=$categories item=cat}
                  {if $cat.id==$catId}<span class="active">{if $cat.parent==17}Отдельностоящие {$cat.name|mblower}{elseif $cat.parent==7}Встраиваемые {$cat.name|mblower}{else}{$cat.name}{/if}</span>{else}<a href="{url2 assoc.catId=$cat.id}">{if $cat.parent==17}Отдельностоящие {$cat.name|mblower}{elseif $cat.parent==7}Встраиваемые {$cat.name|mblower}{else}{$cat.name}{/if}</a>{/if}
             {/foreach}
         </div>
    </div>
{/if}
*}
