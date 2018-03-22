<a name="#imges"></a>
<div class="prod_images">
	{foreach from=$images item=img name=imges}
		<a class="tozoom" href="http://alcotec.com.ua/img/catalog/{$img.id}.{$img.imgext}">
		<img src="http://alcotec.com.ua/img/catalog/{$img.id}_s.{$img.imgext}" />
		</a>
		<p>
		{if !$smarty.foreach.imges.first}
		<a href="#imges" class="admin_image_up" onclick="imgSort({$img.id},'up',{$img.sort})">Вверх</a>
		{/if}
		{if !$smarty.foreach.imges.last}<a href="#imges" class="admin_image_down" onclick="imgSort({$img.id},'down',{$img.sort})">Вниз</a>{/if}
		</p>
		<p>
		<a href="#imges" class="admin_image_delete" onclick="delImg({$img.id})">удалить </a>
		</p>
		<br />
	{/foreach}
	<p>
	<a class="admin_image_add" href="javascript:adduploadinput();">Добавить картинку</a>
	</p>
	<div id="imginput"></div>
	<div id="resultDiv"></div>
</div>
