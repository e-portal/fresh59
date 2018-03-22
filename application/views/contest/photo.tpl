{include file=_header.tpl}
<link rel="stylesheet" type="text/css" href="{$url.css}/contest_id.css" />
    <div id="side1">
      {if $photo.comments}<p class="photoname">"{$photo.comments}"</p>{/if}
      <p><span class="autorname"><span class='strong'>Автор:</span> {$photo.name}</span> <span class="votes<span class='strong'>{$photo.votes}</span>s}</strong></span></p>
      <p class="photoimage"><img src="/contest/{$photo.filename}" alt="" /></p>
      <p class="photoautor">{if !$end}{if !$voted}<span id="photo{$photo.id}" class="addvote">Голосовать</span>{else}<span class='voted'>Вы уже проголосовали сегодня</span>{/if}{else}<span  class='voted'>Голосование окончено</span>{/if}</p>
    </div>
    <div id="side2">
          <ul class="photoall">
            <li class="photolast">Последние фото</li>
            <li class="photoalllink"><a href="/contest/all">Посмотреть все</a></li>
          </ul>
          <ul id="photolist">
          {foreach from=$lastPhotos item = lp}
            <li>
              <p>Голосов: {$lp.votes}</p>
              <p><a href="/contest/photo/{$lp.id}"><img src="/contest/{$lp.filename}" alt="" /></a></p>
              <p class="photonik"><a href="/contest/photo/{$lp.id}">{$lp.name}</a></p>
            </li>
            {/foreach}
          </ul>
     </div>
{literal}
<script type="text/javascript">
<!--
$(document).ready(function(){
	$('.addvote').live('click',function(){
			var el = $(this);
			var id = $(this).attr('id').substring(5,$(this).attr('id').length);
			$.get('/contest/vote',{id:id},function(data){
					if (data=='	ok')
					{
						$(el).removeClass('addvote').addClass('voted').html('Ваш голос принят');
						var votesEl = $('.votes strong');
						$(votesEl).html(parseInt($(votesEl).html())+1);
					}
				
				});
		});
});
//-->
</script>
{/literal}
{include file=_footer.tpl}
