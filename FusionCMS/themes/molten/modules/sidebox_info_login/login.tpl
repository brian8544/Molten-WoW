<div id="sidebox_login" class="membership">
	{form_open('login')}
		<div class="account_login">
			<label for="login_username">{lang('molten_sidebox_login_username_label', 'theme_molten')}</label>
			<input type="text" name="login_username" id="login_username" class="border_box" value="" placeholder="{lang('username', 'sidebox_info')}" />
			
			<label for="login_password">{lang('molten_sidebox_login_password_label', 'theme_molten')}</label>
			<input type="password" name="login_password" id="login_password" class="border_box" value="" placeholder="{lang('password', 'sidebox_info')}" />
		</div>
		
		<table>
			<tbody>
				<tr>
					<td><input type="submit" name="login_submit" value="{lang('log_in', 'sidebox_info')}" /></td>
					<td><a href="{$url}password_recovery" class="nice_button">{lang('molten_sidebox_login_retrive', 'theme_molten')}</a></td>
				</tr>
				<tr>
					<td><a href="{$url}register" class="nice_button">{lang('molten_sidebox_login_register', 'theme_molten')}</a></td>
					<td><a href="{$url}page/downloads" class="nice_button">{lang('molten_sidebox_login_download', 'theme_molten')}</a></td>
				</tr>
			</tbody>
		</table>
	</form>
</div>