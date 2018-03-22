{include file=_header.tpl}
{literal}
<script type="text/javascript">
dojo.addOnLoad(function(){dojo.query('ul#navigation').onmouseover(function(){alert('test')})}
</script>
{/literal}
<div style="padding:10px 0 0 0">
{$grid}
</div>
{include file=_footer.tpl}