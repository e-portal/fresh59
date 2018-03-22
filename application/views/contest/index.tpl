{include file=_header.tpl}
<link rel="stylesheet" type="text/css" href="{$url.css}/contest_main.css" />
      <div id="side1">
           <h1>Условия конкурса</h1>
          <p>Фотоконкурс-голосование «Бытовая техника в моем доме»</p>
          <p>Сфотографируйте бытовую технику в интерьере вашего дома и <a href="http://590.ua/contest/send">отправьте фото и контактные данные нам</a>.</p> 
          <p>За каждую фотографию можно будет голосовать (не более 1 раза в сутки).</p>
          <br />
          <p>Отправляйте ссылку на вашу фотографию друзьям и знакомым - чем больше голосов, тем больше шансов выиграть ценные призы!<br />
<br /></p>
          <p>Большинством зрительских голосов будет выбрано три лучших фото, а их авторы гарантированно получат в подарок: <a href="/catalog/item/9222">хлебопечку Gorenje BM 900 AL (<span class='strong'>1 место</span>)</a>,  <a href="/catalog/item/9904">пароварку Gorenje<span class='strong'>2 место</span>то</strong>)</a>, <a href="/catalog/item/6740">кухонные в<span class='strong'>3 место</span>trong>3 место</strong>)</a>.</p>
          <br />
          <p><h2>Кто участвует: </h2>все покупатели любой бытовой техники в интернет-магазине 590.ua, у кого сохранился номер чека или мобильного телефона, на который оформлялась покупка.</p>
          <br />
          <p><br />
<h2>Время проведения фотоконкурса:</h2> 17 марта – 1 мая 2011. </p>
          <br />
          <p>Подробнее о фотоконкурсе читайте в новости <a href="http://590.ua/news/65">http://www.590.ua/news/65</a></p>
          <br />
          {*<p><a href="/contest/send" class="photoauth">Принять участие</a></p>*}
          <br />
             <h2>Призы</h2>
             <p>
               <a href="/catalog/item/9222"><img src="{$url.img}/16500_s.jpg" alt="" /></a>
               <a href="/catalog/item/9904"><img src="{$url.img}/17247_s.jpg" alt="" /></a>
               <a href="/catalog/item/6740"><img src="{$url.img}/13828_s.jpg" alt="" /></a>
             </p>

      </div>
      <div id="side2">
          <ul>
            <li class="photoname">Случайное фото</li>
            <li class="photoviews">Голосов: <span>{$randomPhoto.votes}</span></li>
          </ul>
        <p class="photomainimg">
          <a href="/contest/photo/{$randomPhoto.id}"><img src="/contest/{$randomPhoto.filename}" alt="" /></a>
        </p>
        {if $randomPhoto.comments}<p class="comment">"{$randomPhoto.comments}"</p>{/if}
       <span class='strong'>Автор:</span>          <strong>Автор:</strong> <a href="/contest/photo/{$randomPhoto.id}">{$randomPhoto.name}</a>
        </p>
      </div>
      <div id="side3">
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
{include file=_footer.tpl}