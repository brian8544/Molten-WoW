{$pageName = $CI->router->fetch_class()}
{if $pageName == 'forum'}
	<style type="text/css" id="page_css">
		.mainside .page_content.page .page_title {
			display: none !important;
		}
		
		.mainside .page_content .page_body {
			padding: 0;
		}
		
		.sidebox {
			display: none !important
		}
		
		.sidebox-{$pageName} {
			display: block !important;
		}
	</style>
{/if}

<div class="page_content page">
	<div class="page_title"><h3>{$headline}</h3></div>
	<div class="page_body">{$content}</div>
</div>

<script type="text/javascript">
	var title_element = $('.page .page_title h3'), 
		data          = title_element.text(), 
		data_arr      = data.split(' ');
	
	if(data_arr.length >= 2 && !$(title_element).find('span').length)
	{
		title_element.empty();
		
		for(word in this.data_arr)
		{
			if(word == 0)
				title_element.append('<i>' + this.data_arr[word] + '</i>&nbsp;');
			else
				title_element.append(this.data_arr[word] + '&nbsp;');
		}
	}
</script>