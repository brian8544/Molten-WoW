{foreach from=$articles key=key item=article}
	<article class="page_content news {if $key == end(array_keys($articles))}last-row{/if}">
		<div class="page_title border_box">
			<h2><a href="{$url}news/view/{$article.id}" title="{$article.headline}">{$article.headline}</a></h2>
			
			<div class="author_comment_holder">
				<span class="article_author">{lang("posted_by", "news")} <a href="{$url}profile/{$article.author_id}" data-tip="{lang('view_profile', 'news')}">{$article.author}</a> {lang("on", "news")} {$article.date}</span>
				{if $article.comments != -1}<span class="article_comment"><a {$article.link} class="comments_button" {$article.comments_button_id} data-comments-container="#comments_{$article.id}">{lang("comments", "news")} {$article.comments}</a></span>{/if}
			</div>
		</div>
		
		<div class="page_body">
			{if $article.avatar}<div class="avatar"><img src="{$article.avatar}" width="120" height="120" alt="{$article.author}{lang('molten_global_user_avatar', 'theme_molten')}" title="{$article.author}{lang('molten_global_user_avatar', 'theme_molten')}" /></div>{/if}
			
			<div class="news_content">{$article.content}</div>
			
			{if $article.tags}
				{foreach from=$article.tags item=tag}
					<a href="{$url}/news/{$tag.name}">{$tag.name}</a>
				{/foreach}
			{/if}
			
			<div class="comments" {$article.comments_id}></div>
		</div>
	</article>
{/foreach}

{$pagination}

<script type="text/javascript">
	$('.page_content.news').on('click', 'a.comments_button', function() {
		container = $($(this).data('comments-container'));
		if(!container || !container.length)
			return;
		
		if($(container).toggleClass('opened').hasClass('opened'))
			$('html, body').animate({ scrollTop: $(container).offset().top - 100 });
	});
</script>