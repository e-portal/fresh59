{include file=_header.tpl}
<SCRIPT TYPE="text/javascript" SRC="{$url.js}/logistics.js"></script>
<script type="text/javascript">
    dojo.require("dijit.form.Button");
    dojo.require("dijit.Dialog");
    dojo.require("dijit.form.FilteringSelect");
    dojo.require("dojo.data.ItemFileReadStore");
</script>
{literal}
<script type="text/javascript">
dojo.addOnLoad(function() {
    formDlg = dijit.byId("formDialog");
    // connect to the button so we display the dialog on click:
    dojo.connect(dijit.byId("buttonThree"), "onClick", formDlg, "show");
        new dijit.form.FilteringSelect({
            autoComplete: true,
            style: "width: 150px;",
            required: true,
            id: "items",
            onChange: function() {
            },
        },
        "items");

        new dijit.form.FilteringSelect({
            store: new dojo.data.ItemFileReadStore({
                url: '/admin/logistics/getbrands'
            }),
            autoComplete: true,
            style: "width: 150px;",
            id: "id_brand",
            onChange: function(id_brand) {
        	dijit.byId("items").store = new dojo.data.ItemFileReadStore({
                url: '/admin/logistics/getitems/brand/' + id_brand
            })
            }
        },
        "brand");
});

function additem (item)
{
	var id_car = dojo.byId("car_id").value;
	dojo.xhrGet({
        url: "/admin/logistics/addcaritem",
        content: {'item':item, 'id_car':id_car},
        handleAs: "text",
        timeout: 5000,
        load: function(response, ioArgs) {
            window.location.reload();
        },
        error: function(response, ioArgs) {
            alert("HTTP status code: " + ioArgs.xhr.status);
            return response;
        }
    });
}
</script>
{/literal}
<div class="control_button">
    <a href="/admin/logistics/cars">К списку машин</a>
    <button id="buttonThree" dojoType="dijit.form.Button" type="button">
    Добавить товар</button>
</div>
{$grid}
<div class="grid_block">
<p>Общее количество: {$carstats.qty}</p>
<p>Сумма: {$carstats.summ|string_format:"%.2f"}</p>
<p>Общий вес: {$carstats.weight|string_format:"%.2f"}</p>
<p>Общий объем: {$carstats.vol|string_format:"%.2f"}</p>
</div>

<div dojoType="dijit.Dialog" id="formDialog" title="Добавить товар"
	execute="additem(dijit.byId('items').attr('value'))">
	<input type="hidden" id="car_id" value="{$car_id}"></input>
	<table>
	<tr><td>Бренд<input id="brand"></td>
		
	</tr>
	<tr>
		<td>Модель<input id="items"></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<button dojoType="dijit.form.Button" type="submit"
			onClick="return dijit.byId('formDialog').isValid();">OK</button>
		<button dojoType="dijit.form.Button" type="button"
			onClick="dijit.byId('formDialog').hide();">Cancel</button>
		</td>
	</tr>
</table>
</div>
{include file=_footer.tpl}
