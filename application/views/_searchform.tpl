<div style="padding-left:10px;">
    <form name="{$form->name}" id="{$form->id}" dojoType="dijit.form.Form" action="{$form->action}" method="{$form->method}" style="padding-left:5px; display:inline;">
        {literal}
            <script type="dojo/method" event="onSubmit">
                if(this.validate()){
                } else {
                    alert('Некоторые данные введены неправильно. Исправте сначала!');
                    return false;
                }
                return true;
            </script>
        {/literal}
        <table class="pparams" style="padding: 0px;">
            {foreach from=$form key=field item=element}
                <tr>
                    <td>{if $element->type !== 'hidden'}{$element->label}{/if}</td>
                    {if $element->type !== 'interval'}
                        {if $element->type == 'bool' || $element->type == 'select'}
                            <td>{html_options options=$element->options selected=$element->value name=$element->name id=$element->id dojoType="dijit.form.FilteringSelect"}
                            </td>
                        {else}
                            {if $element->type == 'textarea'}
                                <td><textarea dojoType="dijit.form.SimpleTextarea" id="{$element->id}" name="{$element->name}"/>{$element->value}</textarea></td>
                        {else}
                            <td><input type="{$element->type}" {if $element->type !== 'hidden'}dojoType="dijit.form.TextBox"{/if} id="{$element->id}" name="{$element->name}" value="{$element->value}"/></td> {/if}
                        {/if}</p>
                    {else}
                        {assign var=interval value=$element->subelements}
                            <td>
                                С: <input type="text" name="{$interval.start->name}" value="{$interval.start->value}" dojoType="dijit.form.DateTextBox" required="true" style="width:100px;" onchange="dijit.byId('{$interval.quick->id}').setValue('interval');"/>
                                По: <input type="text" name="{$interval.end->name}" value="{$interval.end->value}" dojoType="dijit.form.DateTextBox" required="true" style="width:100px;" onchange="dijit.byId('{$interval.quick->id}').setValue('interval');"/>
                               {html_options options=$interval.quick->options selected=$interval.quick->value name=$interval.quick->name id=$interval.quick->id onchange="if(this.value!=='interval')document."|cat:$form->name|cat:".submit();" dojoType="dijit.form.FilteringSelect"}
                            </td>
	               {/if}
                </tr>
            {/foreach}
            <tr><td colspan="2"><button type="submit" dojoType="dijit.form.Button">Смотреть</button></td></tr>
        </table>
    </form>
</div>
