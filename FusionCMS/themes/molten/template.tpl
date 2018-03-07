{$head}
	<body oncontextmenu="return false" onmousedown="event.which == 3">
		<script type="text/javascript">
			/* Extra CSS */
			$('head').append (
				'<link rel="stylesheet" type="text/css" href="{$style_path}custom.css" />'
			);
			/* Extra CSS.End */
		</script>
		
		{$modals}
		
		<!-- Sticky navigation -->
		<div class="sticky-navigation border_box">
			<a href="{$url}page/connect" class="nice_button" title="Connection guide">Connection guide</a>
			<a href="{$url}bugtracker" class="nice_button" title="Bugtracker">Bugtracker</a>
		</div>
		<!-- Sticky navigation.End -->
		
		<!-- Social icons -->
		<div class="social_holder vertical_center">
			<a href="#" target="_blank" class="social_facebook" title="{sprintf(lang('molten_social_facebook', 'theme_molten'), $serverName)}"></a>
			<a href="#" target="_blank" class="social_twitter" title="{sprintf(lang('molten_social_twitter', 'theme_molten'), $serverName)}"></a>
			<a href="#" target="_blank" class="social_twitch" title="{sprintf(lang('molten_social_twitch', 'theme_molten'), $serverName)}"></a>
			<a href="#" target="_blank" class="social_support" title="{sprintf(lang('molten_social_support', 'theme_molten'), $serverName)}"></a>
		</div>
		<!-- Social.End -->
		
		<div class="main_container">
			<div class="row row-1 self_clear">
				<div class="col col-left"></div>
				
				<div class="col col-mid">
					<!-- Header -->
					<header id="header">
						<div class="holder">
							<h1 class="logo_holder"><a href="{$url}" class="logo" title="{sprintf(lang('molten_welcome', 'theme_molten'), $serverName)}">{$serverName}</a></h1>
							
							<!-- Navigation -->
							<ul id="main_menu" class="navigation vertical_center">
								{foreach from=$menu_top key=key item=menu}
									<li><a {$menu.link}>{$menu.name}</a></li>
									
									{if $key == 1}
										<!-- Dropdown -->
										<li class="dropdown">
											<a href="#">Features</a>
											<div class="dropdown-holder">
												<ul class="navi-dropdown border_box">							
													<li><a href="{$url}page/downloads">Downloads</a></li>
													<li><a href="{$url}bugtracker">Bugtracker</a></li>
													<li><a href="{$url}changelog">Changelog</a></li>
													<li><a href="{$url}gallery">Media</a></li>
												</ul>
											</div>
										</li>
										<!-- Dropdown.End -->
									{/if}
								{/foreach}
							</ul>
							<!-- Navigation.End -->
						</div>
					</header>
					<!-- Header.End -->
				</div>
				
				<div class="col col-right"></div>
			</div>
			
			<div class="row row-2 self_clear">
				<div class="col col-left"></div>
				
				<div class="col col-mid">
					<!-- Slider -->
					<div id="slider_container" class="slider_container border_box" {if !$show_slider}style="display:none"{/if}>
						<div id="slider">
							{foreach from=$slider item=image}
								<a href="{$image.link}"><img src="{$image.image}" width="716" height="256" alt="{$image.text}" title="{$image.text}" /></a>
							{/foreach}
						</div>
					</div>
					<!-- Slider.End -->
					
					<!-- Main side -->
					<aside id="right" class="mainside">{$page}</aside>
					<!-- Main side.End -->
				</div>
				
				<div class="col col-right">
					<!-- Sidebar -->
					<aside id="left" class="sidebar">
						{foreach from=$sideboxes key=key item=sidebox}
							{$sidebox_name = explode('[|]', $sidebox.name)}
							
							{if sizeof($sidebox_name) == 2}
								<section id="sidebox-{$key}" class="sidebox sidebox-{reset($sidebox_name)} special border_box {if $key == end(array_keys($sideboxes))}last-row{/if}">
									<h4 class="sidebox_title border_box">{next($sidebox_name)}</h4>
									<div class="sidebox_body">{$sidebox.data}</div>
								</section>
							{else}
								<section id="sidebox-{$key}" class="sidebox border_box {if $key == end(array_keys($sideboxes))}last-row{/if}">
									<h4 class="sidebox_title border_box">{$sidebox.name}</h4>
									<div class="sidebox_body">{$sidebox.data}</div>
								</section>
							{/if}
						{/foreach}
					</aside>
					<!-- Sidebar.End -->
				</div>
			</div>
			
			<div class="row row-3 self_clear">
				<div class="col col-left"></div>
				
				<div class="col col-mid">
					<!-- Footer -->
					<footer id="footer">
						<div class="holder">
							<div class="useful-links">
								<a href="#">Terms of Service</a>
								<a href="#">Refund Policy</a>
								<a href="#">Contact Us</a>
							</div>
							
							<span class="copyright">{sprintf(lang('molten_copyright', 'theme_molten'), $serverName, date("Y"))}</span>
						</div>
					</footer>
					<!-- Footer.End -->
				</div>
				
				<div class="col col-right"></div>
			</div>
		</div>
		
		<!-- Global closer -->
		<div class="globalcloser"></div>
		<!-- Global closer.End -->
		
		<!-- Needed Footer JS -->
		<script type="text/javascript" src="{$path}{$theme_path}js/footer_include.js"></script>
		<!-- Needed Footer JS.End -->
	</body>
</html>