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
        store: new dojo.data.ItemFileReadStore({
            url: '/admin/logistics/getcars'
        }),
        autoComplete: true,
        style: "width: 150px;",
    },
    "cars");
})

function additems (carid){
	window.location = window.location + '?addtocar&carid=' + carid;
}
</script>
{/literal}
<div id="control_button">
     <img src="/images/form_auto.png" alt="form_auto" /><a href="{$smarty.server.REQUEST_URI}?makecar">Сформировать машину</a> 
    <img src="/images/add_auto.png" alt="add_auto" /><button id="buttonThree" dojoType="dijit.form.Button" type="button" style="background:none!important; border:none!important">
    Добавить в машину</button>  
    <img src="/images/reset_form.png" alt="reset_form" /><a href="/admin/logistics/null/what/order">Обнулить заказы</a>  
    <img src="/images/reset_form.png" alt="reset_form" /><a href="/admin/logistics/null/what/prof">Обнулить проформы</a>  
    <img src="/images/reset_form.png" alt="reset_form" /><a href="/admin/logistics/null/what/inv">Обнулить инвоисы</a> 
    <img src="/images/list_auto.png" alt="list_auto" /><a href="/admin/logistics/cars">К списку машин</a>
</div>
{$grid}
<div dojoType="dijit.Dialog" id="formDialog" title="Выбор машины"
	execute="additems(dijit.byId('cars').attr('value'))">
	<input type="hidden" id="car_id" value="{$car_id}"></input>
	<table>
	<tr><td>Машина<input id="cars"></td>
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