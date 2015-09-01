<!DOCTYPE html>
<html>
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        $MetaTags(false)

        <!-- Fav and touch icons -->
        <!-- iPad (Retina) ICON -->
        <link rel="apple-touch-icon" sizes="144x144" href="{$ThemeDir}/images/logos/logo_144x144.png" />
        <!-- iPhone (Retina) ICON -->
        <link rel="apple-touch-icon" sizes="114x114" href="{$ThemeDir}/images/logos/logo_114x114.png" />
        <!-- iPad ICON -->
        <link rel="apple-touch-icon" sizes="72x72" href="{$ThemeDir}/images/logos/logo_72x72.png" />
        <!-- iPhone ICON -->
        <link rel="apple-touch-icon" href="{$ThemeDir}/images/logos/logo_57x57.png" />
        <!-- favicon -->
        <link rel="shortcut icon" href="{$ThemeDir}/images/logos/logo_32x32.png" />

        <!-- iPhone SPLASHSCREEN-->
        <link href="{$ThemeDir}/images/logos/splash_320x480.png" media="(device-width: 320px)" rel="apple-touch-startup-image" />
        <!-- iPhone (Retina) SPLASHSCREEN-->
        <link href="{$ThemeDir}/images/logos/splash_640x960.png" media="(device-width: 320px) and (-webkit-device-pixel-ratio: 2)" rel="apple-touch-startup-image" />
        <!-- iPad (portrait) SPLASHSCREEN-->
        <link href="{$ThemeDir}/images/logos/splash_768x1024.png" media="(device-width: 768px) and (orientation: portrait)" rel="apple-touch-startup-image" />
        <!-- iPad (landscape) SPLASHSCREEN-->
        <link href="{$ThemeDir}/images/logos/splash_1024x768.png" media="(device-width: 768px) and (orientation: landscape)" rel="apple-touch-startup-image" />
        <!-- iPad (Retina, portrait) SPLASHSCREEN-->
        <link href="{$ThemeDir}/images/logos/splash_1536x2048.png" media="(device-width: 1536px) and (orientation: portrait) and (-webkit-device-pixel-ratio: 2)" rel="apple-touch-startup-image" />
        <!-- iPad (Retina, landscape) SPLASHSCREEN-->
        <link href="{$ThemeDir}/images/logos/splash_2048x1536.png" media="(device-width: 1536px)  and (orientation: landscape) and (-webkit-device-pixel-ratio: 2)" rel="apple-touch-startup-image" />

    </head>
    <body id="page-top" data-spy="scroll" data-target="#top-nav"><%-- activated scroll-spy for Top Navigation on OnePagers --%>
        <nav id="top-nav" class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container"><!-- This container will center the Navbar Contents to the fluid width, by uncommenting it, the whole width will be used -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#top-navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home/index">Brandname</a>
                </div>

                <div class="collapse navbar-collapse" id="top-navigation">
                    <% if Menu(1) %>
                    <ul class="nav navbar-nav">
                    <% loop Menu(1) %>
                        <li class="$LinkingMode"><a href="$Link" title="Go to $Title">$MenuTitle</a></li>
                    <% end_loop %>
                    </ul>
                    <% else %>
                    <ul class="nav navbar-nav">
                        <li><a href="home/tos">TOS</a></li>
                        <li><a href="home/contact">CONTACT</a></li>
                        <li><a href="home/imprint">IMPRINT</a></li>
                    </ul>
                    <% end_if %>
                    $BootstrapNavbarModalLoginForm
                </div><!--/.navbar-collapse -->
            </div>
        </nav>
        $BootstrapNavbarModalLoginForm.Modal
        
        <%--
            // Include CookiesWarning if gua-cookie-policy module is installed
            <% include CookiesWarning %>
        --%>

        $Layout
        
        <%--
            // If you like to use shariff, place the following code somewhere on your Page
            // configure following this guide: https://github.com/heiseonline/shariff#options-data-attributes
            <div class="container">
                <div class="shariff" data-backend-url="shariffbackend" data-lang="$CurrentLang" data-url="$AbsoluteURLPath" data-orientation="horizontal"></div>
            </div>
        --%>

        <nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bottom-navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <p class="navbar-text navbar-left">&copy; 2015</p>
                </div>
                
                <div class="collapse navbar-collapse" id="bottom-navigation">
                    <ul class="nav navbar-nav">
                        <li><a href="home/tos">TOS</a></li>
                        <li><a href="home/contact">CONTACT</a></li>
                        <li><a href="home/imprint">IMPRINT</a></li>
                    </ul>
                    $BootstrapNavbarLanguageForm
                </div>
            </div>
        </nav>
        
        <%--
			//Back to Top Button
			<% include BackToTopButton %>
		 --%>
        
        <!-- Latest compiled and minified JavaScript -->
        
        <%--
			//activate smooth scrolling Navigation on OnePagers
			<script type="text/javascript">
				/* Smooth scrolling para anclas */  
				$(function() {
					$('a[href*=#]:not([href=#])').bind('click',function(e){
						e.preventDefault();
						var link = $(this);
						var anchor = link.attr('href');
						$('html, body').stop().animate({
							scrollTop: $(anchor).offset().top
						}, 1000);
					});
				});
			</script>
        --%>
    </body>
</html>