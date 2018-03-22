{include file=_header.tpl}

<link rel="stylesheet" type="text/css" href="{$url.css}/contest_all.css" />

<h1>Лидеры конкурса</h1>
<ul id="lider">
{foreach from=$topPhotos item=photo name=top}
  <li>
    <p class="place">{$smarty.foreach.top.iteration} место</p>
    <p>Голосов: {$photo.votes}</p>
    <p><a href="/contest/photo/{$photo.id}"><img src="/contest/{$photo.filename}" alt="" /></a></p>
    <p class="autor"><a href="/contest/photo/{$photo.id}">{$photo.name}</a></p>
  </li>
{/foreach}

  {*<li class="c_search">
      <h2>Поиск участника по имени</h2>
      <p><input type="text" class="text" /><input type="submit" value="Найти" /></p>
      <p><span class="auth">Принять участие</span></p>
  </li>*}

</ul>

<h3>Все участники</h3>
<ul id="allphoto">
  {foreach from=$allPhotos item = lp}
    <li>
      <p>Голосов: {$lp.votes}</p>
      <p><a href="/contest/photo/{$lp.id}"><img src="/contest/{$lp.filename}" alt="" /></a></p>
      <p class="photonik"><a href="/contest/photo/{$lp.id}">{$lp.name}</a></p>
    </li>
   {/foreach}
</ul>

{include file=_footer.tpl}
