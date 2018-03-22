{include file=_header.tpl}

<script type="text/javascript" src="{$url.js}/imgfunct.js"></script>
<script type="text/javascript" src="{$url.js}/jquery/jquery.js"></script>
<script type="text/javascript" src="{$url.js}/jquery/jquery.fancyzoom.js"></script>
<script type="text/javascript" src="{$url.js}/jquery/jquery.shadow.js"></script>
<script type="text/javascript" src="{$url.js}/jquery/jquery.ifixpng.js"></script>
<script type="text/javascript" src="{$url.js}/jquery/jquery.fancyzoom.js"></script>
{$form}
{inlineScript}
{literal}
	<script type="text/javascript">getProdImg();</script>
{/literal}

{include file=_footer.tpl}