<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html> 
<html class="no-js">
<!doctype html>
<html lang="en-US">

<head>
<!-- 주문서 양식 -->
<meta http-equiv=”Cache-Control” content=”no-cache”/> 
		<meta http-equiv=”Expires” content=”0″/> 
		<meta http-equiv=”Pragma” content=”no-cache”/>

		<meta charset="utf-8"/>
		<title>FOLDER TEMPLATE</title>
			
		<!-- https://getbootstrap.com/docs/4.0/getting-started/introduction/   js는 </body> 바로 앞에 있음. -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="${root}css/mypage/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
		
		<!--  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>-->
		<script src="${root}js/jquery-1.7.1.min.js"></script>
		<script src="${root}js/custom.js"></script>
		<script src="${root}js/tabs.js"></script>
		<script src="${root}js/css3-mediaqueries.js"></script>
		<script src="${root}js/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="${root}js/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="${root}js/jquery.easing.js"></script>
		<script src="${root}js/lof-slider.js"></script>
		<link rel="stylesheet" href="${root}css/mypage/lof-slider.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="${root}css/mypage/jquery.tweet.css" media="all"  /> 
		<script src="${root}js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="${root}css/mypage/superfish.css" /> 
		<script  src="${root}js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="${root}js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="${root}js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="${root}js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="${root}js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="${root}js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="${root}js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="${root}js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="${root}js/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="${root}css/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="${root}js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="${root}css/mypage/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="${root}css/mypage/lessframework.css"/>
		
		<!-- jplayer -->
		<link href="${root}player-skin/jplayer-black-and-yellow.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${root}js/jquery.jplayer.min.js"></script>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="${root}css/mypage/flexslider.css" >
		<script src="${root}js/jquery.flexslider.js"></script>
		
		
		<!-- reply move form -->
		<script src="${root}js/moveform.js"></script>
		
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"> 
	 
	 <style>
		 .tab2 {
		    overflow: hidden;
		    /*border: 1px solid #ccc;*/
		    border: 1px solid #999;
		    background-color: #333333;
		    font-family: Tahoma,'Noto Sans Korean', 'Malgun Gothic', '맑은 고딕', AppleSDGothicNeo, Helvetica, dotum, 돋움, sans-serif;
		    height:65px;
		    
		}
		.tab2 button {
				font-weight: bold;
		    background-color: inherit;
		    color:#ffffff;
		    float: left;
		    border: none;
		    outline: none;
		    cursor: pointer;
		    padding: 14px 16px;
		    transition: 0.3s;
		    font-size: 25px;
		    height:48px;
		}
		.tab2 button:hover {
		    /*background-color: #ddd;*/
		    color:#ffffff;
		}
		.tabcontent2 {
		    display: none;
		    padding: 6px 12px;
		    /*padding: 6px 0 6px 0;*/
		    border: 1px solid #999;
		    border-top: none;
		}
		/* Create an active/current tablink class */
		.tab2 button.active {
		    font-weight: bold;
		    border-bottom: 2px solid #ff0000;
		    color:#ffffff;
		}
		.select_table table[id=buytable]{
		font-size: 14px; 
		width: 100%; /* 원하는 너비설정 */ 
		padding: .8em .5em; /* 여백으로 높이 설정 */ 
		font-family: inherit; /* 폰트 상속 */
		/*border: 1px solid #999;*/
		border-radius: 0px; /* iOS 둥근모서리 제거 */ 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; 
		appearance: none;
}
.select_table table input,
.select_table table button[class=mybtn2]{
		font-size: 14px; 
		width: 100%; /* 원하는 너비설정 */
		height:100%; 
		padding: .8em .5em; /* 여백으로 높이 설정 */ 
		font-family: inherit; /* 폰트 상속 */
		/*border: 1px solid #999;*/
		border-radius: 0px; /* iOS 둥근모서리 제거 */ 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; 
		appearance: none;
		border:0;
}
.select_table table input[name=item_count],
.select_table table input[name=item_price]{
	text-align: center;
}
.select_table table tr{
	border:1px solid #a9a9a9;
	/*background-color:#a9a9a9;*/
}

table.type09 {
    border-collapse: collapse;
    text-align: center;
    line-height: 1.5;
    width:90%;
}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #000;
    border-bottom: 1px solid #ccc;
}
table.type09 tbody th {
    /*width: 150px;*/
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
    color: black;
}
table.type09 td {
    /*width: 350px;*/
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    color: black;
}
table.type04 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: center;
    line-height: 1.5;
    border-top: 3px solid #036;
    border-bottom: 3px solid #036;
 		/*margin : 20px 10px;*/
 		width:90%;
 		color: #369;
}
table.type04 th {
    /*width: 150px;*/
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    color:black;
}
table.type04 td {
    /*width: 350px;*/
    padding: 10px;
    vertical-align: top;
    /*border-bottom: 1px solid #ccc;*/
    color:black;
}
table.type01 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: center;
    line-height: 1.5;
    border-top: 3px solid #036;
    border-bottom: 3px solid #036;
 		/*margin : 20px 10px;*/
 		width:90%;
 		color: #369;
}
table.type01 th {
    /*width: 150px;*/
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    border-right: 1px solid #ccc;
    color:black;
}
table.type01 td {
    /*width: 350px;*/
    /*padding: 10px;*/
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    color:black;
}
<!--
</%

	String joinOrLogin = "로그인/회원가입";
	String action = "login.do";
	HttpSession session = request.getSession();
	String id = "";
	if(session.getAttribute("userLoginInfo")!=null){
		joinOrLogin = "로그아웃";
		action = "logout";
		id = ((Member)session.getAttribute("userLoginInfo")).getId();
		System.out.println("action: "+action);
		System.out.println("id: "+id);
		request.setAttribute("joinOrLogin",joinOrLogin); 
	}else{		
		request.setAttribute("joinOrLogin",joinOrLogin);
		System.out.println("로그아웃중");
	%>
		<script type="text/javascript"> 
		$(function(){
				console.log("다시 로그인.");
				alert("다시 로그인 해주세요");
				location.href="/team";
				location.replace("/team");

		});
		</script>
	</%
	}
	%/> -->
	<%  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Pragma","no-cache");  
response.setDateHeader("Expires",0);  
if (request.getProtocol().equals("HTTP/1.1"))
        response.setHeader("Cache-Control", "no-cache");
%>
	</style>
	<!--  <input  value="검토요청" name="submit2" id="submit2" type="submit"/> -->
	<!-- 주문서 끝 -->
	
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<style id="kirki-css-vars">:root{}</style>
	<title>EarlyBud</title>
	<link rel='dns-prefetch' href='//s.w.org' />
	<link rel="alternate" type="application/rss+xml" title="Atu &raquo; Feed" href="https://demo.athemes.com/airi-portfolio/feed/" />
	<link rel="alternate" type="application/rss+xml" title="Atu &raquo; Comments Feed" href="https://demo.athemes.com/airi-portfolio/comments/feed/" />
<script type="text/javascript">
	$(function(){
		$('.project-filter').mouseenter(function(){
			$('.project-filter').css("background-color", #db79f5)
		});
	});
</script>
	<script type="text/javascript">
		window._wpemojiSettings = {
			"baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/",
			"ext": ".png",
			"svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/",
			"svgExt": ".svg",
			"source": {
				"concatemoji": "https:\/\/demo.athemes.com\/airi-portfolio\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.9"
			}
		};
		! function(a, b, c) {
			function d(a, b) {
				var c = String.fromCharCode;
				l.clearRect(0, 0, k.width, k.height), l.fillText(c.apply(this, a), 0, 0);
				var d = k.toDataURL();
				l.clearRect(0, 0, k.width, k.height), l.fillText(c.apply(this, b), 0, 0);
				var e = k.toDataURL();
				return d === e
			}

			function e(a) {
				var b;
				if (!l || !l.fillText) return !1;
				switch (l.textBaseline = "top", l.font = "600 32px Arial", a) {
					case "flag":
						return !(b = d([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819])) && (b = d([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203, 56128,
							56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447
						]), !b);
					case "emoji":
						return b = d([55358, 56760, 9792, 65039], [55358, 56760, 8203, 9792, 65039]), !b
				}
				return !1
			}

			function f(a) {
				var c = b.createElement("script");
				c.src = a, c.defer = c.type = "text/javascript", b.getElementsByTagName("head")[0].appendChild(c)
			}
			var g, h, i, j, k = b.createElement("canvas"),
				l = k.getContext && k.getContext("2d");
			for (j = Array("flag", "emoji"), c.supports = {
					everything: !0,
					everythingExceptFlag: !0
				}, i = 0; i < j.length; i++) c.supports[j[i]] = e(j[i]), c.supports.everything = c.supports.everything && c.supports[j[i]], "flag" !== j[i] && (c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && c.supports[j[i]]);
			c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && !c.supports.flag, c.DOMReady = !1, c.readyCallback = function() {
				c.DOMReady = !0
			}, c.supports.everything || (h = function() {
				c.readyCallback()
			}, b.addEventListener ? (b.addEventListener("DOMContentLoaded", h, !1), a.addEventListener("load", h, !1)) : (a.attachEvent("onload", h), b.attachEvent("onreadystatechange", function() {
				"complete" === b.readyState && c.readyCallback()
			})), g = c.source || {}, g.concatemoji ? f(g.concatemoji) : g.wpemoji && g.twemoji && (f(g.twemoji), f(g.wpemoji)))
		}(window, document, window._wpemojiSettings);
	</script>
	<style type="text/css">
		img.wp-smiley,
		img.emoji {
			display: inline !important;
			border: none !important;
			box-shadow: none !important;
			height: 1em !important;
			width: 1em !important;
			margin: 0 .07em !important;
			vertical-align: -0.1em !important;
			background: none !important;
			padding: 0 !important;
		}
		.active{
			background-color: #db79f5 !important;
		}
		.elementor-size-sm{
			background-color: #db79f5 !important;
			border: none !important;
		}
	</style>
	<link rel='stylesheet' id='airi-bootstrap-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/css/bootstrap/bootstrap.min.css?ver=1' type='text/css' media='all' />
	<link rel='stylesheet' id='contact-form-7-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.0.2' type='text/css' media='all' />
	<link rel='stylesheet' id='airi-style-css' href='css/mypage/ewwww.css' type='text/css' media='all' />
	<link rel='stylesheet' id='airi-font-awesome-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/css/font-awesome/css/font-awesome.min.css?ver=4.9.9' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-icons-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons.min.css?ver=3.8.0' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-animations-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/animations/animations.min.css?ver=2.2.6' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-frontend-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/css/frontend.min.css?ver=2.2.6' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-post-4-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/uploads/sites/92/elementor/css/post-4.css?ver=1540206708' type='text/css' media='all' />
	<link rel='stylesheet' id='kirki-styles-airi-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/kirki/assets/css/kirki-styles.css?ver=3.0.33' type='text/css' media='all' />
	<style id='kirki-styles-airi-inline-css' type='text/css'>
		h1,
		h2,
		h3,
		h4,
		h5,
		h6,
		.site-title {
			font-family: "Work Sans", Helvetica, Arial, sans-serif;
			font-weight: 500;
		}

		body {
			font-family: "Work Sans", Helvetica, Arial, sans-serif;
			font-weight: 400;
			font-size: 16px;
		}

		.site-title {
			font-size: 36px;
		}

		.site-description {
			font-size: 16px;
		}

		.main-navigation ul ul li {
			font-size: 13px;
		}

		.single-post .entry-title {
			font-size: 36px;
			color: #191919;
		}

		.widget-area .widget-title {
			font-size: 24px;
		}

		.widget-area .widget {
			font-size: 16px;
		}

		.sidebar-column .widget-title {
			font-size: 20px;
		}

		.sidebar-column .widget {
			font-size: 16px;
		}

		.site-info {
			font-size: 13px;
		}

		.athemes-blog:not(.airi_athemes_blog_skin) .posted-on a,
		.athemes-blog:not(.airi_athemes_blog_skin) .byline a:hover,
		.testimonials-section.style1:before,
		.single-post .read-more-link .gt,
		.blog-loop .read-more-link .gt,
		.single-post .posted-on a,
		.blog-loop .posted-on a,
		.entry-title a:hover,
		.airi_recent_entries .post-date,
		.menuStyle3 .top-bar .contact-item .fa,
		.menuStyle4 .contact-area .contact-block .contact-icon,
		.widget_categories li:hover::before,
		.widget_categories li:hover a {
			color: #db79f5;
		}

		.menuStyle4 .contact-area .contact-block .contact-icon,
		button,
		.button,
		input[type="button"],
		input[type="reset"],
		input[type="submit"] {
			border-color: #db79f5;
		}

		.menuStyle2 .main-navigation a:hover:after,
		.menuStyle2 .main-navigation .current-menu-item:after,
		.comments-area .comment-reply-link:hover,
		.menuStyle4 .main-navigation .header-cta:before,
		.menuStyle4 .main-navigation .header-cta,
		button,
		.button,
		input[type="button"],
		input[type="reset"],
		input[type="submit"],
		.menuStyle3 .main-navigation a:hover:after,
		.menuStyle3 .main-navigation .current-menu-item:after {
			background-color: #db79f5;
		}

		.menuStyle2 .site-title a {
			color: #191919;
		}

		.menuStyle2 .sticky-wrapper.is-sticky .site-title a {
			color: #191919;
		}

		.menuStyle2 .site-description {
			color: #707070;
		}

		.menuStyle2 .sticky-wrapper.is-sticky .site-description {
			color: #707070;
		}

		.menuStyle2 .main-navigation a {
			color: #191919;
		}

		.menuStyle2 .sticky-wrapper.is-sticky .main-navigation a {
			color: #191919;
		}

		.menuStyle2 .site-header {
			background-color: #fff;
		}

		.menuStyle2 .is-sticky .site-header {
			background-color: #ffffff;
		}

		#site-navigation ul ul li a {
			color: #1c1c1c;
		}

		#site-navigation ul ul li {
			background-color: #f7f7f7;
		}

		.entry-title a {
			color: #191919;
		}

		.single-post .post-cat,
		.blog-loop .post-cat {
			background-color: #eff1f4;
		}

		.single-post .entry-meta,
		.blog-loop .entry-meta {
			color: #bfbfbf;
		}

		.single-post .entry-meta .byline a,
		.blog-loop .entry-meta .byline a {
			color: #595959;
		}

		.single-post .entry-content,
		.blog-loop .entry-content {
			color: #595959;
		}

		.widget .widget-title {
			color: #191919;
		}

		.widget {
			color: #000000;
		}

		.widget a {
			color: #595959;
		}
	</style>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
	<link rel='https://api.w.org/' href='https://demo.athemes.com/airi-portfolio/wp-json/' />
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://demo.athemes.com/airi-portfolio/xmlrpc.php?rsd" />
	<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://demo.athemes.com/airi-portfolio/wp-includes/wlwmanifest.xml" />
	<meta name="generator" content="WordPress 4.9.9" />
	<link rel="canonical" href="https://demo.athemes.com/airi-portfolio/" />
	<link rel='shortlink' href='https://demo.athemes.com/airi-portfolio/' />
	<link rel="alternate" type="application/json+oembed" href="https://demo.athemes.com/airi-portfolio/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fdemo.athemes.com%2Fairi-portfolio%2F" />
	<link rel="alternate" type="text/xml+oembed" href="https://demo.athemes.com/airi-portfolio/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fdemo.athemes.com%2Fairi-portfolio%2F&#038;format=xml" />

	<!-- Google Webmaster Tools plugin for WordPress -->

	<style type="text/css">
		.recentcomments a {
			display: inline !important;
			padding: 0 !important;
			margin: 0 !important;
		}
	</style>
	<style type="text/css" id="wp-custom-css">
		.footer-widgets {
			padding-top: 30px;
			padding-bottom: 30px;
			text-align: center;
		}

		ul.social-media-list li {
			float: none;
			display: inline-block;
		}

		.social-media-list a::before {
			background-color: #fcf6f3 !important;
			color: #404040 !important;
		}

		.site-footer {
			text-align: center;
		}

		.site-header {
			box-shadow: 0 2px 24px 0 rgba(51, 71, 86, 0.15);
		}
	</style>
</head>

<body class="home page-template page-template-page-templates page-template-template_page-builder page-template-page-templatestemplate_page-builder-php page page-id-4 wp-custom-logo menuStyle2 menuContained sticky-header elementor-default elementor-page elementor-page-4">
	<div id="page" class="site">
		<a class="skip-link screen-reader-text" href="#content">Skip to content</a>


		<header id="masthead" class="site-header">

			<div class="container">
				<div class="row">
					<div class="site-branding col-md-4 col-sm-6 col-9">
						<a href="https://demo.athemes.com/airi-portfolio/" class="custom-logo-link" rel="home" itemprop="url"><img width="100" height="60" src="\\203.236.209.193\1_웹기획\1팀_오현화\earlybud.png" class="custom-logo"
							  alt="Atu" itemprop="logo" /></a> </div><!-- .site-branding -->

					<div class="header-mobile-menu col-md-8 col-sm-6 col-3">
						<button class="mobile-menu-toggle" aria-controls="primary-menu">
							<span class="mobile-menu-toggle_lines"></span>
							<span class="sr-only">Toggle mobile menu</span>
						</button>
					</div>

					<nav id="site-navigation" class="main-navigation col-md-8">
						<div class="menu-menu-container">
							<ul id="primary-menu" class="menu">
								<li id="menu-item-43" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-4 current_page_item menu-item-43"><a href="https://demo.athemes.com/airi-portfolio/">Home</a></li>
								<li id="menu-item-44" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44"><a href="https://demo.athemes.com/airi-portfolio/blog/">Blog</a></li>
								<li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78"><a href="https://demo.athemes.com/airi-portfolio/about-us/">About us</a></li>
							</ul>
						</div>
						<ul class="header-search-cart">
							<li class="header-search">
								<div class="header-search-toggle"><a><i class="fa fa-search"></i></a></div>
							</li>
							<li class="header-cart-link">
							</li>
						</ul>
					</nav><!-- #site-navigation -->

				</div>
			</div>
			<div class="header-search-form">
				<form role="search" method="get" class="search-form" action="https://demo.athemes.com/airi-portfolio/">
					<label>
						<span class="screen-reader-text">Search for:</span>
						<input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" />
					</label>
					<input type="submit" class="search-submit" value="Search" />
				</form>
			</div>

		</header><!-- #masthead -->
		
<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">	
			<!-- page content-->
      	<div id="page-content" class="cf">
      	<div class="tab2">
				  <button class="tablinks" type="button"><i class="fas fa-check-circle" style="color:#ffffff"></i> 주문서보기</button>
				</div>
				<div id="London" class="tabcontent2" style="display: block;">
					<p>
						<table class="type01" style="margin: 0 auto;">
						<tr>
					        <th width="30%">판매자ID</th>
					       <!-- 원래코드  <td><input class = "form-control" style="border:0;background:#fff" type="text" value="${product.id}" id="sellerID" readonly></td>-->
					  		 <td><input class = "form-control" style="border:0;background:#fff" type="text" value="EarlySeller" id="sellerID" readonly></td>
					   		
					    </tr>
					    <tr>
					        <th width="30%">상품제목</th>
					       <!-- 원래코드 <td><input class = "form-control" style="border:0;background:#fff" type="text" value="${product.subject}" id="subject" readonly></td> -->
					   		 <td><input class = "form-control" style="border:0;background:#fff" type="text" value="보리의 껌" id="subject" readonly></td>					 
					    </tr>
						</table>
						<br/>
					</p>
						<p>
						
						<table class="type09" style="margin: 0 auto;">
					    <thead>
					    <tr>
					        <th scope="cols" width="40%">옵션</th>
					        <th scope="cols">갯수</th>
					        <th scope="cols">가격</th>
					    </tr>
					    </thead>
					    <tbody>
					    
					    	<c:forEach items="${sale_option}" var="listOption">
					    		<tr>
							    	<th scope="row">${listOption.option_name}</th>
							    	<td>${listOption.sale_option_qty}개</td>
									<td><fmt:formatNumber value="${listOption.option_price*listOption.sale_option_qty}" type="number"/>원</td>
								</tr>
								</c:forEach>
					    </tbody>
					</table >
					<br/>
				</p>
				
				<p>
					<table class="type01" style="margin: 0 auto;">
						<tr>
					        <th width="30%">구매자이름</th>
					     <!-- 원본  <td><input class = "form-control" style="border:0;background:#fff" type="text" value="${member.name}" id="memberName" readonly></td>-->  
					  		<td><input class = "form-control" style="border:0;background:#fff" type="text" value="EarlyBuyer" id="memberName" readonly></td>
					  
					    </tr>
			    	    <tr>
					        <th width="30%">핸드폰</th>
					        <!-- 원본<td><input class = "form-control" style="border:0;background:#fff" type="text" value="${member.phone}" id="memberPhone" name="memberPhone" maxlength="13" readonly></td> -->
					   		<td><input class = "form-control" style="border:0;background:#fff" type="text" value="01012345678" id="memberPhone" name="memberPhone" maxlength="13" readonly></td>
					    </tr>	
					    <tr>
					        <th>주소</td>
					       <!-- 원본 <td><input value="${member.address}" class = "form-control" style="border:0;background:#fff" id = "address1" name = "address1" readonly></td> -->
					   		<td><input value="니맘속" class = "form-control" style="border:0;background:#fff" id = "address1" name = "address1" readonly></td>					   
					    </tr>
					    <tr>
					        <th>상세주소</td>
					     <!-- 원본   <td><input value="${member.detail_address}" class = "form-control" style="border:0;background:#fff;"  id = "address2" name = "address2" readonly></td> -->
					  		<td><input value="좌심실" class = "form-control" style="border:0;background:#fff;"  id = "address2" name = "address2" readonly></td>
					    </tr>
					</table>
			
				</p>
				<p>
				<table class="type04" style="margin: 0 auto;">
							<tr>
					        <th>가격</th>
					        <th></th>
					        <th>배송비</th>
					        <th></th>
					        <th>총가격</th>
					    </tr>
					    <tr>
					       <!--원본 <td><fmt:formatNumber value="${sale.sale_amount-sale.sale_shippay}" type="number"/></td>-->
					        <td><fmt:formatNumber value="20000" type="number"/></td>					        
					        <td><i class="fas fa-plus"></i></td>
					        <!--원본<td><fmt:formatNumber value="${sale.sale_shippay}" type="number"/></td>-->
					        <td><fmt:formatNumber value="2500" type="number"/></td>
					        
					        <td><i class="fas fa-equals"></i></td>
					       <!-- 원본  <td scope="row" style="color:red;font-weight: bold;"><fmt:formatNumber value="${sale.sale_amount}" type="number"/>원</td>-->
					  	<td scope="row" style="color:red;font-weight: bold;"><fmt:formatNumber value="22500" type="number"/>원</td>					  
					    </tr>
					</table>
				</p>
				
				<p>
				<table class="type04" style="margin: 0 auto;">
							<tr>
					        <th>배송상태</th>
					        <th>배송추적</th>
					        <th>총가격</th>
					    </tr>
					    <tr>
					        <td>주문완료</td>
					       <!--   window.open(http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=6065711418803,'popup', 'width=585,height=340,left=0,top=0,scrollbars=no');
					        
					        -->
					        <td>
					        <a href="#" onclick="window.open('http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=6065711418803', '_blank', 'width=550 height=500')">추적하기</a>
					        </td>
					       	<td scope="row" style="color:red;font-weight: bold;">수취확인버튼</td>
					    </tr>
					</table>
				</p>
				</div>
				<!-- ENDS form -->				
    		</div>
    		<!-- ENDS page content-->
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		





		

	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/slick/slick.min.js?ver=1.8.1'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/airi-pro//js/elementor.js?ver=20181010'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/imagesloaded.min.js?ver=3.2.0'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/vendor/navigation.js?ver=20180717'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var wpcf7 = {
			"apiSettings": {
				"root": "https:\/\/demo.athemes.com\/airi-portfolio\/wp-json\/contact-form-7\/v1",
				"namespace": "contact-form-7\/v1"
			},
			"recaptcha": {
				"messages": {
					"empty": "Please verify that you are not a robot."
				}
			}
		};
		/* ]]> */
	</script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.0.2'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/vendor/skip-link-focus-fix.js?ver=20151215'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/vendor/scripts.js?ver=20180223'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/custom/custom.min.js?ver=20180223'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/wp-embed.min.js?ver=4.9.9'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/kirki/modules/webfont-loader/vendor-typekit/webfontloader.js?ver=3.0.28'></script>
	<script type='text/javascript'>
		WebFont.load({
			google: {
				families: ['Work Sans:500,400:cyrillic,cyrillic-ext,devanagari,greek,greek-ext,khmer,latin,latin-ext,vietnamese,hebrew,arabic,bengali,gujarati,tamil,telugu,thai']
			}
		});
	</script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/jquery/ui/position.min.js?ver=1.11.4'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/dialog/dialog.min.js?ver=4.5.0'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/waypoints/waypoints.min.js?ver=4.0.2'></script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/swiper/swiper.jquery.min.js?ver=4.4.3'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var elementorFrontendConfig = {
			"isEditMode": "",
			"is_rtl": "",
			"breakpoints": {
				"xs": 0,
				"sm": 480,
				"md": 768,
				"lg": 1025,
				"xl": 1440,
				"xxl": 1600
			},
			"version": "2.2.6",
			"urls": {
				"assets": "https:\/\/demo.athemes.com\/airi-portfolio\/wp-content\/plugins\/elementor\/assets\/"
			},
			"settings": {
				"page": [],
				"general": {
					"elementor_global_image_lightbox": "yes",
					"elementor_enable_lightbox_in_editor": "yes"
				}
			},
			"post": {
				"id": 4,
				"title": "Home",
				"excerpt": ""
			}
		};
		/* ]]> */
	</script>
	<script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/js/frontend.min.js?ver=2.2.6'></script>
<!-- 주문서시작 -->
<script type="text/javascript">
var dtd_companys = new Array();
dtd_companys["우체국택배"] = new Array(13, "http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=","1234567890123 (13자리)","1588-1300","http://parcel.epost.go.kr");
dtd_companys["대한통운"] = new Array(10, "http://www.doortodoor.co.kr/servlets/cmnChnnel?tc=dtd.cmn.command.c03condiCrg01Cmd&invc_no=","1234567890 (10자리)", "1588-1255", "http://www.doortodoor.co.kr");
dtd_companys["한진택배"] = new Array(12, "http://www.hanjin.co.kr/Delivery_html/inquiry/result_waybill.jsp?wbl_num=", "1234567890 (10,12자리)", "1588-0011", "http://hanex.hanjin.co.kr");
dtd_companys["로젠택배"] = new Array(11, "http://www.ilogen.com/iLOGEN.Web.New/TRACE/TraceView.aspx?gubun=slipno&slipno=", "12345678901 (11자리)","1588-9988", "http://www.ilogen.com");
dtd_companys["현대택배"] = new Array(12, "http://www.hlc.co.kr/hydex/jsp/tracking/trackingViewCus.jsp?InvNo=", "1234567890 (10,12자리)", "1588-2121", "http://www.hlc.co.kr");
dtd_companys["KG옐로우캡택배"] = new Array(11, "http://www.yellowcap.co.kr/custom/inquiry_result.asp?invoice_no=", "12345678901 (11자리)", "1588-0123", "http://www.yellowcap.co.kr");
dtd_companys["KGB택배"] = new Array(10, "http://www.kgbls.co.kr/sub5/trace.asp?f_slipno=", "1234567890 (10자리)", "1577-4577", "http://www.kgbls.co.kr");
dtd_companys["EMS"] = new Array(13, "http://service.epost.go.kr/trace.RetrieveEmsTrace.postal?ems_gubun=E&POST_CODE=", "EE123456789KR (13자리)", "1588-1300", "http://service.epost.go.kr");
dtd_companys["DHL"] = new Array(0, "http://www.dhl.co.kr/publish/kr/ko/eshipping/track.high.html?pageToInclude=RESULTS&type=fasttrack&AWB=", "1234567890 (10자리)", "1588-0001", "http://www.dhl.co.kr");
dtd_companys["한덱스"] = new Array(10, "http://btob.sedex.co.kr/work/app/tm/tmtr01/tmtr01_s4.jsp?IC_INV_NO=", "1234567890 (10자리)", "1588-9040", "http://www.e-handex.co.kr");
dtd_companys["FedEx"] = new Array(12, "http://www.fedex.com/Tracking?ascend_header=1&clienttype=dotcomreg&cntry_code=kr&language=korean&tracknumbers=", "123456789012 (12자리)", "080-023-8000", "http://www.fedex.com/kr");
dtd_companys["동부익스프레스"] = new Array(12, "http://www.dongbuexpress.co.kr/Html/Delivery/DeliveryCheckView.jsp?item_no=", "123456789012 (12자리)", "1588-8848", "http://www.dongbuexpress.co.kr");
dtd_companys["CJ GLS"] = new Array(12, "http://nexs.cjgls.com/web/service02_01.jsp?slipno=", "123456789012 (12자리)", "1588-5353", "http://www.cjgls.co.kr");
dtd_companys["UPS"] = new Array(25, "http://www.ups.com/WebTracking/track?loc=ko_KR&InquiryNumber1=", "M1234567890 (최대 25자리)", "1588-6886", "http://www.ups.com/content/kr/ko/index.jsx" );
dtd_companys["하나로택배"] = new Array(10, "http://www.hanarologis.com/branch/chase/listbody.html?a_gb=center&a_cd=4&a_item=0&fr_slipno=", "1234567890 (최대 10자리)", "1577-2828", "http://www.hanarologis.com");
dtd_companys["대신택배"] = new Array(13, "http://home.daesinlogistics.co.kr/daesin/jsp/d_freight_chase/d_general_process2.jsp?", "1234567890123 (13자리)", "043-222-4582", "http://apps.ds3211.co.kr");
dtd_companys["경동택배"] = new Array(11, "http://www.kdexp.com/sub4_1.asp?stype=1&p_item=", "12345678901 (최대11자리)", "031-460-2400", "http://www.kdexp.com/");
dtd_companys["이노지스택배"] = new Array(13, "http://www.innogis.net/trace02.asp?invoice=", "1234567890123 (최대13자리)", "1566-4082", "http://www.innogis.net/");
dtd_companys["일양로지스택배"] = new Array(9, "http://www.ilyanglogis.com/functionality/tracking_result.asp?hawb_no=", "123456789 (9자리)", "1588-0002", "http://www.ilyanglogis.com/");
dtd_companys["CVSnet 편의점택배"] = new Array(10, "http://was.cvsnet.co.kr/src/ctod_status.jsp?invoice_no=", "1234567890 (10자리)", "1566-1025", "http://www.cvsnet.co.kr/");
dtd_companys["TNT Express"] = new Array(13, "http://www.tnt.com/webtracker/tracking.do?respCountry=kr&respLang=ko&searchType=CON&cons=", "GE123456789WW (9,13자리)", "1588-0588", "http://www.tnt.com/express/ko_kr/site/home.html");
dtd_companys["HB한방택배"] = new Array(12, "http://www.hbtb.co.kr/search/s_search.asp?f_slipno=", "123456789012 (12자리)", "1588-1059", "http://www.hbtb.co.kr/");
dtd_companys["GTX"] = new Array(12, "http://www.gtx2010.co.kr/del_inquiry_result.html?s_gbn=1&awblno=", "123456789012 (12자리)", "1588-1756", "http://www.gtx2010.co.kr");

//var dtd_select_obj = document.getElementById('dtd_select');
var dtd_select_obj = $("#dtd_select");
var company = $("#dtd_select").val();
//var company = dtd_select_obj.options[dtd_select_obj.selectedIndex].value;
if(company == "" ) company = "우체국택배";
console.log("company: "+company);

function doorToDoorSearch()
{
 var query_obj = document.getElementById('dtd_number_query');
 var query = query_obj.value;
 query = query.replace(' ', '');
 var url = "";
 company = $("#dtd_select").val();
 console.log("url: "+url);
 console.log("company: "+company);
 /* 운송장 번호 값 확인 */
 if (company == "UPS") {
  var pattern1 = /^[0-9a-zA-Z]{9,12}$/i;
  var pattern2 = /^[0-9a-zA-Z]{18}$/i;
  var pattern3 = /^[0-9a-zA-Z]{25}$/i;
  if (query.search(pattern1) == -1 && query.search(pattern2) == -1 && query.search(pattern3) == -1) {
   alert(company+"의 운송장 번호 패턴에 맞지 않습니다.");
   query_obj.focus();
   return false;
  }
 } else if (company == "EMS") {
  var pattern = /^[a-zA-Z]{2}[0-9]{9}[a-zA-Z]{2}$/;
  if (query.search(pattern) == -1) {
   alert(company+"의 운송장 번호 패턴에 맞지 않습니다.");
   query_obj.focus();
   return false;
  }
 } else if (company == "한진택배" || company == "현대택배") {
  if (!isNumeric(query)) {
   alert("운송장 번호는 숫자만 입력해주세요.");
   query_obj.focus();
   return false;
  } else if ( query.length != 10 && query.length != 12 ) {
   alert(company+"의 운송장 번호는 10자리 또는 12자리의 숫자로 입력해주세요.");
   query_obj.focus();
   return false;
  }
 } else if (company == "경동택배") {
  if (!isNumeric(query)) {
   alert("운송장 번호는 숫자만 입력해주세요.");
   query_obj.focus();
   return false;
  } else if (query.length != 9 && query.length != 10 && query.length != 11) {
   alert(company+"의 운송장 번호는 9자리 또는 10자리 또는 11자리의 숫자로 입력해주세요.");
   query_obj.focus();
   return false;
  }
 } else if (company == "이노지스택배") {
  if (!isNumeric(query)) {
   alert("운송장 번호는 숫자만 입력해주세요.");
   query_obj.focus();
   return false;
  } else if (query.length > 13) {
   alert(company+"의 운송장 번호는 최대 13자리의 숫자로 입력해주세요.");
   query_obj.focus();
   return false;
  }
 } else if (company == "TNT Express") {
  var pattern1 = /^[a-zA-Z]{2}[0-9]{9}[a-zA-Z]{2}$/;
  var pattern2 = /^[0-9]{9}$/;
  if (query.search(pattern1) == -1 && query.search(pattern2) == -1) {
   alert(company+"의 운송장 번호 패턴에 맞지 않습니다.");
   query_obj.focus();
   return false;
  }
 } else {
  if (!isNumeric(query)) {
   alert("운송장 번호는 숫자만 입력해 주세요.");
   query_obj.focus();   
   return false;
  } else if (dtd_companys[company][0] > 0 && dtd_companys[company][0] != query.length) {
   alert(company+"의 운송장 번호는 "+dtd_companys[company][0]+"자리의 숫자로 입력해 주세요.");
   query_obj.focus();   
   return false;
  }
 }
 /* 링크만들기 */
 if (company == "대신택배") {
  url = dtd_companys[company][1];
  url+= "billno1="+query.substring(0,4);
  url+= "&billno2="+query.substring(4,7);
  url+= "&billno3="+query.substring(7,13);
 } else if (dtd_companys[company][1]) {
  url = dtd_companys[company][1]+query;
 }
 window.open(url,'popup', 'width=585,height=340,left=0,top=0,scrollbars=no');
}

function isNumeric(s) {
 var count = 0;
 for (i = 0; i < s.length; i++) {

  if(s.charAt(i)<'0' || s.charAt(i)>'9') {
   count++;
  }
 }
 if(count > 0) {
  return 0;
 } else {
  return 1;
 }
}

function SetDeleveryContents(idx) {
 company = dtd_select_obj.options[idx].value;
 document.getElementById("Dcs01").innerHTML = dtd_companys[company][2];
 document.getElementById("Dcs02").innerHTML = company;
 document.getElementById("Dcs03").innerHTML = dtd_companys[company][3];
 document.getElementById("Dcs04").href  = dtd_companys[company][4];
 document.getElementById("Dcs04").target  = "_blank";
 
}

function checkValidDoor(query) {
 /* 운송장 번호 값 확인 */
 if (company == "UPS") {
  var pattern1 = /^1z[0-9]{16}$/i;
  var pattern2 = /^M[0-9]{10}$/;
  if (query.search(pattern1) == -1 && query.search(pattern2) == -1) {
   lert(company+"의 운송장 번호 패턴에 맞지 않습니다.");
   document.door_to_door_frm.dtd_number_query.focus();
   return false;
  }
 } else if (company == "EMS") {
  var pattern = /^[a-zA-z]{2}[0-9]{9}[a-zA-z]{2}$/;
  if (query.search(pattern) == -1) {
   alert(company+"의 운송장 번호 패턴에 맞지 않습니다.");
   document.door_to_door_frm.dtd_number_query.focus();
   return false;
  }
 } else if (company == "SC 로지스" || company == "한진택배" || company == "현대택배") {
  if (!isNumeric(query)) {
   alert("운송장 번호는 숫자만 입력해주세요.");
   document.door_to_door_frm.dtd_number_query.focus();
   return false;
  } else if ( query.length != 10 && query.length != 12 ) {
   alert(company+"의 운송장 번호는 10자리 또는 12자리의 숫자로 입력해주세요.");
   document.door_to_door_frm.dtd_number_query.focus();
   return false;
  }
 } else {
  if (!isNumeric(query)) {
   alert("운송장 번호는 숫자만 입력해 주세요.");
   document.door_to_door_frm.dtd_number_query.focus();   
   return false;
  } else if (dtd_companys[company][0] > 0 && dtd_companys[company][0] != query.length) {
   alert(company+"의 운송장 번호는 "+dtd_companys[company][0]+"자리의 숫자로 입력해 주세요.");
   document.door_to_door_frm.dtd_number_query.focus();   
   return false;
  } 
 }

}

</script>
<!-- 주문서끝 -->
</body>

</html>
