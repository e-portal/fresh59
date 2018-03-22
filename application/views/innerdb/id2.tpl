{include file=_header.tpl}

{literal}
    <script type="text/javascript">
        function selectBrand(brand) {
        	if (brand.selectedIndex == 0) {
        		window.location = "http://test.alcotec.com.ua/admin/innerdb/id2/";
        	} else {
        		window.location = "http://test.alcotec.com.ua/admin/innerdb/id2/brand/"+brand.options[brand.selectedIndex].value;
        	}
        	return true;
        }
        function changeid2 (idcat,newid2) {
            dojo.xhrGet({
                url: "/admin/innerdb/changeid2/",
                handleAs: "text",
                timeout: 5000,
                content: {'idcat': idcat, 'newid2': newid2},
                load: function(response, ioArgs) {
                    window.location.reload();
                },
                error: function(response, ioArgs) {
                    alert("HTTP status code: " + ioArgs.xhr.status);
                    alert("/admin/products/getimghtml/id/" + dojo.byId("id").value);
                    return response;
                }
            });
        }
        function sync(idcat) {
            dojo.xhrGet({
                url: "/admin/innerdb/sync/",
                handleAs: "text",
                timeout: 5000,
                content: {'idcat': idcat},
                load: function(response, ioArgs) {
                    window.location.reload();
                },
                error: function(response, ioArgs) {
                    alert("HTTP status code: " + ioArgs.xhr.status);
                    alert("/admin/products/getimghtml/id/" + dojo.byId("id").value);
                    return response;
                }
            });
        }
    </script>
    <style type="text/css">
        #content {
        	background: #3ea6bc!important;
        }
        .adminTableId2 {
        	border:1px solid #666;
        	font-size:11px;
        	font-family:Arial, Helvetica, sans-serif;
        	margin:0 auto;
        	width:960px;
        }
        .adminTableId2 td {
        	border:1px solid #666;
        	text-align:center;
        	padding:2px;
        }
    </style>
{/literal}

<table class="adminTableId2">
    <tr>
    	<td colspan="9">
            <select id="brandSelect" style="width:136px;margin:20px; float:left" onchange="javascript:selectBrand(this);">
                <option>Выберите бренд</option>
                {foreach from=$brands item=brand key=key}
                    <option value="{$key}">{$brand}</option>
                {/foreach}
            </select>
        </td>
    </tr>
    <tr>
        <td>id2 на сайте</td>
        <td>Бренд на сайте</td>
        <td>Модель на сайте</td>
        <td>Цена на сайте</td>
        <td>Синхронизировать</td>
        <td>Цена в базе</td>
        <td>Модель в базе</td>
        <td>Бренд в базе</td>
        <td>id в базе</td>
        <td>группа в базе</td>
        <td>кол-во на складе</td>
        <td>кол-во в заказах</td>
    </tr>
    {foreach from=$pairs item=item}
    <tr {if !$item.innermod}bgcolor="red"{/if}>
        <td><input type="text" value="{$item.id2}" onchange="javascript:changeid2({$item.catid},this.value)" /></td>
        <td>{$item.brand}</td>
        <td>{$item.model}</td>
        <td {if $item.catprice!=$item.bazaprice}bgcolor="yellow"}{/if}>{$item.catprice}</td>
        <td>{if $item.catprice!=$item.bazaprice && $item.innermod}<a href="#" onclick="sync({$item.catid})"><-></a>{/if}</td>
        <td>{$item.bazaprice}</td>
        <td>{$item.innermod}</td>
        <td>{$item.innerbrand}</td>
        <td>{$item.id}</td>
        <td {if $item.group_id == 'OUT'} bgcolor="yellow" {/if}>{$item.group_id}</td>
        <td>{$item.qrm}</td>
        <td>{$item.qty_z}</td>
    </tr>
    {/foreach}
    {foreach from=$notconnected item=item}
    <tr bgcolor="red">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>{$item.bazaprice}</td>
        <td>{$item.innermod}</td>
        <td>{$item.innerbrand}</td>
        <td>{$item.id}</td>
        <td>{$item.group_id}</td>
        <td>{$item.qrm}</td>
        <td>{$item.qty_z}</td>
    </tr>
    {/foreach}
</table>

{include file=_footer.tpl}