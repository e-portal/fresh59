{include file=_header.tpl}
    
{if !is_string($form)}
    <h1>Форма заказа обратного звонка</h1>
    <form action="" method="post" enctype="application/x-www-form-urlencoded">
        <div class="b-call-type">Имя</div>
        <div class="b-call-input"><input class="b-callform-inp {if $form->name->getErrors()}error{/if}" type="text" name="name" value="{$form->name->getValue()}" /></div>
        <div class="clearfix"></div>
        <div class="b-call-type">Телефон</div>
        <div class="b-call-input"><input class="b-callform-inp {if $form->phone->getErrors()}error{/if}" id="phone" type="text" name="phone" value="{$form->phone->getValue()}" /></div>
        <div class="clearfix"></div>
        <div class="b-call-type">Ваш регион</div>
        <div class="b-call-input"><select class="b-callform-slt" name="region_id">{foreach from=$form->region_id->getMultiOptions() item=name key=id}<option {if $id==$form->region_id->getValue() || $id == $smarty.cookies.region} selected="selected" {/if} value="{$id}">{$name}</option>{/foreach}</select></div>
        <div class="clearfix"></div>
        <div class="b-call-type">Тема вопроса</div>
        <div class="b-call-input"><select class="b-callform-slt" name="theme">{foreach from=$form->theme->getMultiOptions() item=name key=id}<option value="{$id}" {if $id==$form->theme->getValue()} selected="selected" {/if}>{$name}</option>{/foreach}</select></div>
        <div class="clearfix"></div>
        <div class="b-call-type">Ваш вопрос</div>
        <div class="b-call-textarea"><textarea rows="7" class="b-callform-ta" name="message" value="{$form->message->getValue()}"></textarea></div>
        <div class="clearfix"></div>
        <div class="b-call-submit"><input class="b-callform-sbm" type="submit" value="Заказать" /></div>
    </form>
    <p class="confidentiality"><a href="/page/confidentiality">Персональные данные покупателей: конфиденциальность и защита</a></p>
{else}
	<table width="100%">
    	<tr><td>
        <p>Спасибо, с Вами свяжется менеджер интернет-магазина в течение рабочего дня.</p>
        <p>Мы перезваниваем 6 дней в неделю, кроме воскресенья:</p>
        <p>понедельник - пятница: 10.00 - 18.00;</p>
        <p>суббота: 11.00 - 17.00.</p>
		</td></tr>
    </table>
{/if}

<script src="{$url.js}/jquery/jquery.maskedinput-1.2.2.js"></script>
{literal}
    <script type="text/javascript">
        jQuery(function($){
            if ($.browser.msie)
        		$("#phone").mask("+99(999) 999-99-99");
            else
            	$("#phone").mask("+38(999) 999-99-99");
        });
    </script>
{/literal}

{include file=_footer.tpl}