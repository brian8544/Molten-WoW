{foreach from=$comments item=comment}
	<div class="{if $comment.is_gm}staff_comment{/if} comment border_box self_clear">
		<div class="comment_date">{date("Y/m/d", $comment.timestamp)} {if hasPermission("canRemoveComment")}<a href="javascript:void(0)" onClick="Ajax.remove(this, {$comment.id})"><img src="{$url}application/images/icons/delete.png" width="16" height="16" alt="Delete icon" /></a>{/if}</div>
		<a class="comment_author" href="{$comment.profile}" data-tip="{lang('view_profile', 'news')}">{if $comment.is_gm}<img src="{$url}application/images/icons/icon_blizzard.gif" width="20" height="13" alt="Blizzard icon" />&nbsp;{/if} {$comment.author}</a>
		{word_wrap($comment.content, 30)}
	</div>
{/foreach}