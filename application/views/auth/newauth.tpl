{include file=_header.tpl}

<table id="logInMain">
	<tbody>
		<tr>
			<td>
				<form method="post" action="{$url.base}/auth/newauth" name="authorizationForm" id="logInForm">
					<table id="logInTable">
						<tbody>
							<tr>
								<td><label>Логин:</label></td>
								<td><input type="text" tabindex="99" value="" name="login" id="input_login"/></td>
								<td id="enterTd" rowspan="2">
									<a href="http://{$smarty.server.HTTP_HOST}">{$smarty.server.HTTP_HOST}</a>
	                        			<br/><a tabindex="101" onclick="document.forms['authorizationForm'].submit();return false;" id="enterL" href="#">ВХОД
	                        		</a>
									<input type="submit" style="display: none;"/>
								</td>
							</tr>
							<tr>
								<td><label>Пароль:</label>
								</td>
								<td><input type="password" tabindex="100" value="" name="pass" id="input_password"/></td>
							</tr>
						</tbody>
					</table>
				</form>
			</td>
		</tr>
	</tbody>
</table>

{include file=_footer.tpl}