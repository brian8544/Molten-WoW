<div id="sidebox_info" class="membership">	
	<div class="account_summery">
		<span>{lang('molten_sidebox_info_account_summery', 'theme_molten')}</span>
		
		<br />
		
		{sprintf(lang('molten_sidebox_info_account_info', 'theme_molten'), $CI->user->getUsername())}<br />
		{lang("vp", "sidebox_info")}: {$vp}<br />
		{lang("dp", "sidebox_info")}: {$dp}<br />
		
		<br />
		
		{lang("last_ip", "sidebox_info")}: {$lastIp}<br />
		{lang("current_ip", "sidebox_info")}: {$currentIp}<br />
		{sprintf(lang('molten_sidebox_info_account_email', 'theme_molten'), $CI->user->getEmail())}
	</div>
	
	<table>
		<tbody>
			<tr>
				<td><a href="{$url}ucp" class="nice_button">{lang("user_panel", "sidebox_info")}</a></td>
				<td><a href="{$url}ucp/settings" class="nice_button">Settings</a></td>
			</tr>
			<tr>
				<td><a href="{$url}donate" class="nice_button">Donate</a></td>
				<td><a href="{$url}logout" class="nice_button">{lang("log_out", "sidebox_info")}</a></td>
			</tr>
		</tbody>
	</table>
</div>