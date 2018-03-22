{include file=_header.tpl}


  	{if $login}


            <nav class="breadcumbs">
                <a href="/">Главная</a>
                <i>&rarr;</i>
                <a href="/auth">Личный кабинет</a>
                <i>&rarr;</i>
                <span>Редактирование профиля</span>
            </nav>
            <h1>Редактирование профиля</h1>
            {literal}
            <script type="text/javascript">
				$(document).ready(function($){
					   $("#profile #sbtbutton").addClass('btn btn-info') 
					   
					   $('#password, #password2, #password2_again').addClass('validate[required]');
					   
					   $("#profile").validationEngine();
					});
				</script>
            {/literal}
            {$form}


    
    {else}
 
 
 
         <form action="/auth" method="post" class="form-horizontal" id="login-form">
            <legend>Авторизация</legend>
            <div class="control-group">
                <label class="control-label" for="input_login">Логин</label>
                <div class="controls">
                    <input class="validate[required]" type="text" name="login" id="input_login" placeholder="Логин">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="input_password">Пароль</label>
                <div class="controls">
                    <input class="validate[required]" type="password" name="pass" id="input_password" placeholder="Пароль">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn">Войти</button>
                </div>
            </div>
        </form>

	{/if}



{include file=_footer.tpl}