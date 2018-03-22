<noindex>
<!-- Modal Callback -->
<div class="modal make_order" id="callback" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <span class="h1 enter_form">Заказ обратного звонка</span>
  </div>
  <div class="modal-body">
      <form method="post" id="callback-form" class="form-horizontal">
        <div class="control-group">
          <div class="controls">
            <input type="text" class="validate[required,custom[onlyLetterSp]]" id="name" placeholder="Имя" name="name" />
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <input type="text" class= 'validate[required]' id="phone" placeholder="+38(XXX) XXX-XX-XX" >
          </div>
        </div>
        <div class="control-group">
          <div class="controls custom_select">
            <select class="b-callform-slt" id='region_id' name="region_id">
              <option selected="selected" value="0">Выберите регион</option>
              {foreach from=$regions item=region}
                <option value="{$region.id}">{$region.name}</option>
              {/foreach}
            </select>
          </div>
        </div>
        <div class="control-group">
          <div class="controls custom_select">
            <select id = 'theme' class="b-callform-slt" name="theme"><option value="0" selected="selected">Заказ товара</option><option value="1">Уточнения наличия товара</option><option value="2">Отсутствие инструкции</option><option value="3">Невозможно дозвониться</option><option value="4">Вопрос по сервису</option><option value="5">Другой</option></select>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <textarea id="message" name="message" class='validate[required]' placeholder="Ваш вопрос"></textarea>
          </div>
        </div>
      </form>
  </div>
  <div class="modal-footer">
    <button type="submit" class="add_to_card button_v1 data-login" id="data-sendCallback">
        <span>Отправить</span>
      </button>
  </div>
</div>

<!-- Modal Login -->
<div class="modal make_order" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <form action="/auth" method="post" class="form-horizontal form-horizontal1" id="login-form">
  <div class="modal-header">
    <button style="padding: 0px;" type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <span class="h1 enter_form">Вход на сайт</span>
  </div>
  <div class="modal-body">
    <div class="control-group">
      <div class="controls controls1">
        <input class='validate[required]' type="text" id="name" placeholder="Имя" name="login">
      </div>
    </div>
    <div class="control-group">
      <div class="controls controls1">
        <input class='validate[required]' type="password" id="name" placeholder="Пароль" name="pass">
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="submit" class="add_to_card button_v1 data-login">
      <span>Вход</span>
    </button>
  </div>
   </form>
</div>

{literal}
<style>

@media (min-width: 200px) and (max-width: 475px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.35 !important;
  left: 50% !important;
  top: 20%;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media screen and (min-device-width: 200px) and (max-device-width: 475px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.35 !important;
  left: 50% !important;
  top: 20%;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media (min-width: 475px) and (max-width: 620px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.5 !important;
  left: 50% !important;
  top: 20%;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media screen and (min-device-width: 475px) and (max-device-width: 620px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.5 !important;
  left: 50% !important;
  top: 20%;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media (min-width: 620px) and (max-width: 750px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.7 !important;
  left: 50% !important;
  top: 20%;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media screen and (min-device-width: 620px) and (max-device-width: 750px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.7 !important;
  left: 50% !important;
  top: 20%;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media (min-width: 750px) and (max-width: 950px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.85 !important;
  left: 50% !important;

}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}

@media (min-width: 750px) and (max-width: 767px)
{
#data-basket, #promocode, #login, #comments-modal{
  top: 20%;
}
}

@media screen and (min-device-width: 750px) and (max-device-width: 950px)
{
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.85 !important;
  left: 50% !important;
}
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
}


@media (min-width: 950px)
{
.form-horizontal1 .controls1 {
    margin-left: 0px;
}
#data-basket, #promocode, #login, #comments-modal{
  zoom: 0.85 !important;
  left: 50% !important;
}
}
</style>
{/literal}


<!-- Modal Basket -->
<div class="modal cart-mini" id="data-basket" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button style="padding: 0px;" type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <span class="h1 enter_form">Корзина</span>
  </div>
  <div class="modal-body data-basket">

  </div>
  <div class="modal-footer">
    <span class="btn" data-dismiss="modal" aria-hidden="true">Продолжить покупки</span>
    <a href="https://590.ua/basket/order" class="btn btn-info"><i class="icon-shopping-cart icon-white"></i> Перейти к оформлению заказа</a>
  </div>
</div>

<!-- Modal Texterror -->
<div class="modal hide" id="error-modal">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">Сообщение об ошибке</div>
  </div>
  <div class="modal-body">
    <input type='hidden' id='data-errorUrl' value=''/>
    <cite id = "data-errorText">...</cite>
    <div class="clearfix"></div>
    <textarea name="" id="data-errorComments" cols="60" rows="3" class="span5" placeholder="Комментарии к ошибке..."></textarea>
  </div>
  <div class="modal-footer">
    <span class="btn btn-danger" id="data-sendError">Отправить</span>
  </div>
</div>

<!-- Modal Gift -->
{foreach from=$items item=itemgift name=catitems}
{if $item.acttype=='gift'}
<div class="modal hide" id="gift-modal-{$itemgift.id}">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">{$itemgift.actname}</div>
  </div>
  <div class="modal-body">
  ...
  </div>
  <div class="modal-footer">
    <a href="#" class="btn btn-danger" id="dataActionLnk">Подробнее об акции</a>
  </div>
</div>
{/if}
{/foreach}

{foreach from=$actionItems item=itemaction name=catitems}
{if $itemaction.acttype=='gift'}
<div class="modal hide" id="gift-modal-{$itemaction.id}">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">{$itemaction.actname}</div>
  </div>
  <div class="modal-body">
  ...
  </div>
  <div class="modal-footer">
    <a href="#" class="btn btn-danger" id="dataActionLnk">Подробнее об акции</a>
  </div>
</div>
{/if}
{/foreach}

{foreach from=$topsales_items item=itemtopsale name=catitems}
{if $itemtopsale.acttype=='gift'}
<div class="modal hide" id="gift-modal-{$itemtopsale.id}">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">{$itemtopsale.actname}</div>
  </div>
  <div class="modal-body">
  ...
  </div>
  <div class="modal-footer">
    <a href="#" class="btn btn-danger" id="dataActionLnk">Подробнее об акции</a>
  </div>
</div>
{/if}
{/foreach}

{if $manager}
<!-- Asked && Callback -->
<div class="modal hide" id="asked">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">Уведомить о наличии</div>
  </div>
  <div class="modal-body">
        <form class="form-horizontal" id="asked-form">
        <div class="control-group">
          <label class="control-label" for="name">Имя</label>
          <div class="controls">
          <input class="validate[required]" type="text" id="asked-name" name="name" />
		  </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="phone">Телефон</label>
          <div class="controls">
          <input type="text" class="validate[required] asked-phone" id="asked-phone" name="phone" />
          </div>
        </div>
        </form>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn btn-danger" onclick="sendCallback()">Отправить</a>
  </div>
</div>
{/if}

<!-- promo code basket -->
<div class="modal hide" id="promocode">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">Введите промо-код</div>
  </div>
  <div class="modal-body">
        <form class="form-horizontal" id="asked-form">
          <div class="control-group">
            <label class="control-label" for="name">Промо-код</label>
            <div class="controls" style="margin-left: 0px;">
              <input class="validate[required]" type="text" id="promo-code" name="code" required />
            </div>
          </div>
          <div class="control-group hide" id="promo-error">
            <label class="control-label"></label>
            <div class="controls">
              <div class="alert alert-error">Неверный код</div>
            </div>
          </div>
        </form>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn btn-danger" id="checkBonusCode">Отправить</a>
  </div>
</div>

<!-- promo code basket -->
<div class="modal hide" id="lp" style="width: 400px;left:45%">

    <form class="form-horizontal" action="/catalog/price-notify" method="post">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"></button>
    <div class="h3">Введите адрес электронной почты и мы оповестим вас о снижении цены товара</div>
  </div>
  <div class="modal-body">
          <div class="control-group">
            <div class="controls" style="margin-left: 0px;">
                <input type="hidden" name="itemId" value="{if $item}{$item.id}{/if}">
              <input class="validate[required]" type="text" id="email" name="email" required />
            </div>
          </div>
  </div>
  <div class="modal-footer">
    <input type="submit" class="btn btn-danger" value="Отправить"/>
  </div>
    </form>
</div>

{if $zf.params.action == 'item'}
<!-- Modal comments -->
<div class="modal" id="comments-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <form action="/catalog/add-comment" method="post" class="form-horizontal" id="addComment">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
      <div class="h3">Добавить отзыв</div>
    </div>
    <div class="modal-body">
      <div class="control-group">
        <label class="control-label" for="name">Ваше имя*</label>
        <div style="    margin-left: 0px;" class="controls">
            <input type="hidden" name='itemId' value="{if $itemId}{$itemId}{/if}">
            <input type="hidden" name='parent_id' id="comment-parentId" value="0">
            <input type="hidden" name='rating' id="comment-rating" value="0">
          <input class='validate[required]' type="text" id="name" placeholder="Имя" name="name">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="text">Отзыв*</label>
        <div style="    margin-left: 0px;" class="controls">
          <textarea class='validate[required]' name="text" id="comments" rows="5"></textarea>
        </div>
      </div>
{literal}
<style type="text/css">
  div.rating-cancel, div.star-rating{
        height: 16px !important;
  }
</style>
{/literal}

      <div class="control-group">
        <label class="control-label">Ваше оценка*</label>
        <div style="    margin-left: 0px;" class="controls">
          <input name="star1" type="radio" class="star1" value="1"/>
          <input name="star1" type="radio" class="star1" value="2"/>
          <input name="star1" type="radio" class="star1" value="3"/>
          <input name="star1" type="radio" class="star1" value="4"/>
          <input name="star1" type="radio" class="star1" value="5"/>
          {literal}
            <script type="text/javascript">
              $(document).ready(function(){
  		          $('input.star1').rating({
                  callback: function(value, link){
                    $('#comment-rating').val(value);
                }});
              });
            </script>
          {/literal}
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="submit" class="btn btn-primary data-login">Добавить</button>
    </div>
  </form>
</div>
{/if}

</noindex>
