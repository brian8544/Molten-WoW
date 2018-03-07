<table class="realm_status">
	<tbody>
		{foreach from=$realms key=key item=realm}
			{$realmId = $realm->getId()}
			{$realmEmu = strtolower(get_class($realm->getEmulator()))}
			{if in_array($realmEmu, array('mangoszero_ra', 'mangoszero_soap'))}
				{$realmEmu = 'tbc[|]30[|]14'}
			{else if in_array($realmEmu, array('oregoncore_ra', 'oregoncore_soap', 'trinity_tbc_ra', 'trinity_tbc_soap', 'trinity_tbc_external', 'blizzlikecore_ra', 'blizzlikecore_soap', 'summitemu'))}
				{$realmEmu = 'tbc[|]30[|]14'}
			{else if in_array($realmEmu, array('trinity_ra', 'trinity_soap', 'trinity_rbac_ra', 'trinity_rbac_soap', 'mangos_ra', 'mangos_soap', 'mangosr2_ra', 'mangosr2_soap', 'arcemu'))}
				{$realmEmu = 'wotlk[|]36[|]13'}
			{else if in_array($realmEmu, array('skyfire_ra', 'skyfire_soap', 'arkcore_ra', 'arkcore_soap', 'trinity_rbac_cata_ra', 'trinity_rbac_cata_soap'))}
				{$realmEmu = 'cata[|]38[|]12'}
			{else if in_array($realmEmu, array('jadecore_soap'))}
				{$realmEmu = 'mop[|]46[|]14'}
			{/if}
			{$realmEmu = explode('[|]', $realmEmu)}
			
			<tr id="realm_{$realmId}" class="{if $realm->isOnline()}online{else}offline{/if} {if $key == end(array_keys($realms))}last-row{/if}">
				<td class="r_icon"><img src="{$image_path}misc/r_{reset($realmEmu)}.gif" width="{next($realmEmu)}" height="{next($realmEmu)}" alt="{reset($realmEmu)} {lang('molten_global_icon', 'theme_molten')}" /></td>
				<td class="r_name">{$realm->getName()}</td>
				<td class="r_status">{if $realm->isOnline()}{$realm->getOnline()} {lang('molten_sidebox_status_players_online', 'theme_molten')}{else}{lang('molten_global_offline', 'theme_molten')}{/if}</td>
			</tr>
		{/foreach}
	</tbody>
</table>