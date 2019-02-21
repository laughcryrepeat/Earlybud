<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html> 
<html class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<style id="kirki-css-vars">:root{}</style>
	<title>EarlyBud</title>
	<link rel='dns-prefetch' href='//s.w.org' />
	<link rel="alternate" type="application/rss+xml" title="Atu &raquo; Feed" href="https://demo.athemes.com/airi-portfolio/feed/" />
	<link rel="alternate" type="application/rss+xml" title="Atu &raquo; Comments Feed" href="https://demo.athemes.com/airi-portfolio/comments/feed/" />
	
	
<!-- 추가 -->
<link href="${pageContext.request.contextPath}/css/item/styles.1fbc7315.css" rel="stylesheet">
<link rel="${pageContext.request.contextPath}/css/item/stylesheet" type="text/css" href="css/uikit.css">

<script src="${pageContext.request.contextPath}/js/item/jquery-1.12.4.js"></script>

<script src="${pageContext.request.contextPath}/js/item/isMobile.min.js"></script>
<script src='${pageContext.request.contextPath}/js/item/jquery.form.js'></script>
<script src='${pageContext.request.contextPath}/js/item/jquery.scrollLock.min.js'></script>
<script src='${pageContext.request.contextPath}/js/item/uikit.min.js'></script>

<!-- 공통 유틸 js -->
<script src="${pageContext.request.contextPath}/js/item/commonUtil.js"></script>
<!-- 추가끝 -->	
	
<script type="text/javascript">
	$(function(){
		$('.project-filter').mouseenter(function(){
			$('.project-filter').css("background-color", '#cfbaf4')
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
			background-color: #cfbaf4 !important;
		}
		.elementor-size-sm{
			background-color: #cfbaf4 !important;
			border: none !important;
		}
	</style>
	<link rel='stylesheet' id='airi-bootstrap-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/css/bootstrap/bootstrap.min.css?ver=1' type='text/css' media='all' />
	<link rel='stylesheet' id='contact-form-7-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.0.2' type='text/css' media='all' />
	<link rel='stylesheet' id='airi-style-css' href='${pageContext.request.contextPath}/css/item/ewwww.css' type='text/css' media='all' />
	<link rel='stylesheet' id='airi-font-awesome-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/css/font-awesome/css/font-awesome.min.css?ver=4.9.9' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-icons-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons.min.css?ver=3.8.0' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-animations-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/animations/animations.min.css?ver=2.2.6' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-frontend-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/css/frontend.min.css?ver=2.2.6' type='text/css' media='all' />
	<link rel='stylesheet' id='elementor-post-4-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/uploads/sites/92/elementor/css/post-4.css?ver=1540206708' type='text/css' media='all' />
	<link rel='stylesheet' id='kirki-styles-airi-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/kirki/assets/css/kirki-styles.css?ver=3.0.33' type='text/css' media='all' />
	
	<!-- 추가2 -->
	<link rel="dns-prefetch" href="https://cdn.wadiz.kr">
	<link rel="dns-prefetch" href="https://cdnjs.cloudflare.com">
	<link rel="icon" href="${pageContext.request.contextPath}/images/item/logo.png" sizes="16x16" type="image/png">
	<link rel="icon" href="${pageContext.request.contextPath}/images/item/logo.png" sizes="32x32" type="image/png">
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="60x60" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="158x158" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="167x167" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="apple-touch-icon" sizes="192x192" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="icon" sizes="192x192" href="${pageContext.request.contextPath}/images/item/logo.png">
	<link rel="mask-icon" href="${pageContext.request.contextPath}/images/item/logo.png" color="#00CCA3">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/item/logo.png">
	<script type="text/javascript">
	window.wadizWebManifest={"0":"equity-feedback.js?543e2719c82224c0cf5b","1":"equity-update-news.js?44d4674ab5c1bffc9817","2":"equity-w9-membership.js?bb0afd0a3bd010cf80e1","3":"reward-comment-app.js?5b061d94cde928f3a043","4":"reward-supporter-list-app.js?e6d34aa1f120bbe08ff9","5":"5.js?52d90970ce07d33e422d","6":"6.js?38cd1d78a22a27c536f4","7":"7.js?09e8428ae03b4c8fa199","8":"8.js?1d2c9bd6ce5af63c4cc5","9":"9.js?96f38514a3834dc2b384","10":"equity.js?ba4a59078f4ac7697352","11":"reward.js?e337ab95a32d72c7aa25","12":"landing.js?58480fea0ae45fe4547e","13":"coming.js?7f4059d8898d4924b31a","14":"equity-payment.js?9ddefa864fc858d4c761","15":"common.js?3441e2f6ee1fcac27a0e","16":"personal-message.js?3e57f726d36016907517","17":"account.js?0aded497b4b375998049","18":"studio.js?3c5f622faed521c5f3a8","19":"support-signature.js?a27535229cf39a168c04","20":"static/equity-join.js?93caf5bc1beed61afc2e","21":"equity-pre-quiz.js?c87fa3d0998b713c1b80","22":"static/openfunding.js?6e2c3b91b13273e46047","23":"static/wadiz2017.js?a4fb2ee339442ec6152b","24":"static/reward-open.js?3dabf8f27601e2c8aa2f","25":"static/equity-open.js?d47dd54b51347b9b1be1","26":"social.js?7f3ffdb4f9228d482664"};
	window.wadiz = window.wadiz || {};window.wadiz.sessionUser="";</script>
	<link rel="stylesheet" href="https://cdn.wadiz.kr/resources/assets/vendor.css?966a1957dbe0ea1e47a26794a40b2772"><link rel="stylesheet" href="https://cdn.wadiz.kr/resources/assets/common.css?c067a4b077f78dd0d8ac2a36ba9e8c08"><script type="text/javascript" src="https://cdn.wadiz.kr/resources/assets/vendor.js?33b07d8ab3089c7ecb0c"></script><script type="text/javascript" src="https://cdn.wadiz.kr/resources/assets/common.js?3441e2f6ee1fcac27a0e"></script>
	<!-- 추가끝 -->
	
	
	
	<style id='kirki-styles-airi-inline-' type='text/css'>
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
			color: #cfbaf4;
		}

		.menuStyle4 .contact-area .contact-block .contact-icon
		{
			border-color: #cfbaf4;
		}

		.menuStyle2 .main-navigation a:hover:after,
		.menuStyle2 .main-navigation .current-menu-item:after,
		.comments-area .comment-reply-link:hover,
		.menuStyle4 .main-navigation .header-cta:before,
		.menuStyle4 .main-navigation .header-cta,		
		.menuStyle3 .main-navigation a:hover:after,
		.menuStyle3 .main-navigation .current-menu-item:after {
			background-color: #cfbaf4;
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
		.list_cmt {
    margin-top:100px; border-top: 1px solid $silver;
    > li {padding:20px 0 0;}
    .cmt_output {position:relative;border-bottom:1px solid $silver;}
    .cmt_comm {
        padding-right:0;border:0 none;background-color:$white;
        .box_cmt {
            padding-right:85px;
            .tf_cmt {color:$gray;}
            .cmt_info {display:none;}
            .btn_submit {bottom:0;width:85px;height:100%;background-color:$gray;}
        }
    }
    .user_profile {
        height:45px;
        .img_profile {margin:0 20px;vertical-align:middle;}
        .txt_name {font-size:$fs14;color:$dark;}
    }
    .txt_time {margin-left:20px;font-size:$fs13;color:$gray;}
    .cont_cmt {padding:0 20px 30px 90px;font-size:$fs13;color:$gray;word-break:break-all}
    .tool_set {
        position:absolute;top:0;right:0;
        button{height:28px;padding:0 12px;border:1px solid $linegray;font-size:$fs13;color:$gray;}
    }
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
						<a href="main" class="custom-logo-link" rel="home" itemprop="url">
							<img width="80" height="50" src="${pageContext.request.contextPath}/images/item/earlybud.png" class="custom-logo"	alt="Atu" itemprop="logo" />
						</a> </div><!-- .site-branding -->

					<div class="header-mobile-menu col-md-8 col-sm-6 col-3">
						<button class="mobile-menu-toggle" aria-controls="primary-menu">
							<span class="mobile-menu-toggle_lines"></span>
							<span class="sr-only">Toggle mobile menu</span>
						</button>
					</div>

					<nav id="site-navigation" class="main-navigation col-md-8">
						<div class="menu-menu-container">
							<ul id="primary-menu" class="menu">
								<li id="menu-item-43" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home"><a href="main">Home</a></li>
								<li id="menu-item-44" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44"><a href="category">소개</a></li>
								<li id="menu-item-44" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-44 current-menu-item page_item page-item-4 current_page_item menu-item-43"><a href="category/0">카테고리</a></li>
								<li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78"><a href="https://demo.athemes.com/airi-portfolio/about-us/">로그인/회원가입</a></li>
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
		
<!-- 여기 -->
<main id="omcContainer" class="cont_support">
        
        
            <!-- aside -->
            
            <!--  aside -->

            
            
                
            

            <input type="hidden" id="projectSeq" value="6388">
            <input type="hidden" id="simulationFlag" value="N">

            <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
            <div class="cMain">
                <article id="mContent" class="project_intro">
                    <div class="top_box">
                        <header class="head_cont">                        
                            <h1><c:out value="${item.TITLE}"/></h1>  
                            <div class="project_sorting">
                                <div class="tag_rel">
                                        <span class="screen_out">관련 태그</span>
                                        <a href="/../earlybud/category/${item.CAT_CODE}" class="link_tag">  #${item.CAT_NAME}  </a>
                                </div>
                            </div>
                            
                                                      
                        </header>
                        <div class="summary_cont">
                            <div class="project_info">                                
                                    <div id="main_image_slide" uk-slideshow="ratio: 5:3; animation: fade" class="uk-slideshow">
                                        <ul class="uk-slideshow-items" style="height: 415px;">                                            
                                                <li class="uk-active uk-transition-active" style="z-index: -1;">
                                                    <img src="${pageContext.request.contextPath}/uploads/reward/<c:out value="${item.MAIN_IMAGE}"/>" class="img_g">
                                                </li>                                            
                                                        
                                        </ul>                                        
                                            <div class="main_image_nav_wrapper">
                                                <div class="main_image_nav">                                                    
                                                        <img class="selected" src="${pageContext.request.contextPath}/uploads/reward/<c:out value="${item.MAIN_IMAGE}"/>" data-index="0">
                                                        
                                                </div>
                                            </div>
                                        
                                    </div>
                                
                                <div class="author_profile">
                                    <div class="user_profile">
                                        <span class="img_profile">
                                        
                                            <img src="${pageContext.request.contextPath}/uploads/member/profile/<c:out value="${item.IMAGE}"/>">
                                        
                                        </span>
                                        <div class="author_cont">
                                            <div class="builder_profile_wrapper">
                                                <p><span class="txt_name"><c:out value="${item.NICKNAME}"/></span></p>
                                                <span class="txt_mail"><c:out value="${item.EMAIL}"/></span>
                                                
                                                    <span class="sns_area">
                                                        <span class="box_links">
                                                            <span class="screen_out">프로젝트SNS</span>
                                                            
                                                                <a href="http://omywish.imweb.me/" target="_blank" class="link_home">
                                                                    <span class="ico_comm"></span>
                                                                    <span class="sns_name"></span>
                                                                </a>
                                                            
                                                            
                                                                <a href="http://www.facebook.com/" target="_blank" class="link_facebook">
                                                                    <span class="ico_comm"></span>
                                                                    <span class="sns_name"></span>
                                                                </a>
                                                            
                                                            
                                                            
                                                        </span>
                                                    </span>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mms_profile">
                                        
                                        <a href="#none" class="link_mms" id="link_profile">프로필보기</a>
                                        <a href="#none" class="link_profile" id="link_message">개설자문의</a>
                                    </div>
                                </div>
                            </div>
                            <div class="project_details">
                                <div class="item_state">
                                    <p><span class="txt_statetitle">모인금액</span></p>
                                    <span class="screen_out">현재 참여금액</span><span class="num_value"><c:out value="${item.NOW_SUM}"/></span> <span class="txt_value">원&nbsp;모금</span>
                                </div>
                                <div class="state_project">
                                    <div class="graph_support">
                                        <span class="screen_out">참여율</span>
                                        
                                    <c:choose>
										<c:when test="${item.PERCENT > 100}">
									    		<span class="bar_graph" style="width:100%;"></span>
										</c:when>
										<c:otherwise>
									   		<span class="bar_graph" style="width:<c:out value="${item.PERCENT};"/>%"></span>
										</c:otherwise>
									</c:choose>
                                        
                                        
                                        <span class="num_per"><c:out value="${item.PERCENT}"/>%</span>
                                    </div>

                                    <div class="item_state">
                                        <p><span class="txt_statetitle">참여인원</span></p>
                                        <span class="screen_out">참여자 수</span>
                                        <span class="num_value">
                                        
                                        <c:out value="${item.TOTAL_PUR}"/>                                
                                        
                                        </span> 
                                        <span class="txt_value">명 참여</span>
                                    </div>

                                    <div class="item_state">
                                        <p><span class="txt_statetitle">남은기간</span></p>
                                        
                                        <c:choose>
											<c:when test="${item.TIME > 0}">
										    	<span class="num_value">
		                                        	D-<span class="screen_out">Day</span><c:out value="${item.TIME}"/>
		                                        </span>
		                                        <span class="txt_value"> 일 남음</span>	
		                                        <span class="link_join">펀딩 진행중</span>                                     
											</c:when>											
											<c:when test="${item.TIME < 0}">
													<span class="num_value">종료</span>
													<span class="link_join">앵콜 요청하기</span>													
											</c:when>
											<c:otherwise>
											   	<span class="num_value">오늘 자정까지</span>
											   	<span class="link_join">펀딩 진행중</span>		
											</c:otherwise>
										</c:choose>
										
                                    </div>

                                    
                                        <div class="txt_notice ">
                                            
                                                    
                                                        <span class="sign_notice">성공해야<br>리워드</span>
                                                        <span class="txt">
                                                        목표액<c:out value="${item.TARGET}"/>원에 미달하면 결제가 진행되지 않습니다.<br>
                                                        결제는 목표액달성시 <c:out value="${item.DEADLINE}"/>에 진행됩니다.
                                                    </span>
                                                    
                                                
                                                
                                            
                                        </div>
                                    
                                </div>

                                <div class="item_btns">
                                    <a href="#none" class="link_share" id="link_share">공유 <span class="btn_icon"><img src="${pageContext.request.contextPath}/images/item/share.jpg"></span><span class="num_count" id="share_num_count">
                                    
                                        
                                        
                                            1994
                                        
                                    
                                </span></a>
                                    <input type="hidden" id="like_count" value="5">
                                    <input type="hidden" id="interest_seq" value="">
                                    <button type="button" class="btn_like" id="btn_like">관심<img src="${pageContext.request.contextPath}/images/item/good.jpg">
                                        <span id="icon_like"></span>
                                        <span class="num_count" id="like_num_count">
                                    
                                        
                                        
                                            1994
                                        
                                    
                                </span></button>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="primary_cont">
                        <div class="box_details_cont">
                            <section class="section_cont">
                                <nav class="sticky_bar"> <!-- 헤더랑 만나는 순간 fixed 추가 -->
                                    <h2 class="screen_out">프로젝트 상세 탭메뉴</h2>
                                    <div class="tab_box">
                                        <ul class="list_tab">
                                            <li class="on"><a href="/reward/6388/intro?isPreview=Y&amp;mockFlag=N" id="Intro" class="link_tab">소개</a></li>

                                            <li>
                                                <a href="/reward/6388/news?mockFlag=N" id="News" class="link_tab">공지</a>
                                            </li>
                                            <li>
                                                <a href="/reward/6388/qna?isPreview=Y&amp;mockFlag=N" id="Qna" class="link_tab">Q&amp;A</a>
                                            </li>
                                            <li>
                                                <a href="/reward/6388/cheer?mockFlag=N" id="Cheer" class="link_tab">환불 및 <span class="skip">교환</span></a>
                                            </li>
                                            
                                                
                                            
                                        </ul>
                                        
                                            
                                            
                                                
                                            
                                        
                                        <div class="btn_area stickable">
                                            
                                                
                                                
                                                    
                                                        <a href="/reward/6388/join/select" class="link_join">참여하기</a>
                                                    
                                                    
                                                
                                            
                                        </div>
                                    </div>
                                </nav>
                                <!-- 탭이 눌려질 때 동적으로 페이지를 로드한다. -->
                                <div id="reward_tab_content">
									<!--[if IE 8 ]> <html lang="ko" class="ie8"> <![endif]-->
									<!--[if IE 9 ]> <html lang="ko" class="ie9"> <![endif]-->
									
									<h2 class="screen_out">소개</h2>
									<div class="article_intro">
										<p><img src="${pageContext.request.contextPath}/images/item/<c:out value="${item.IMAGE_ITEM}"/>" alt="" width="680" height="475"></p>
									</div>
									<div id="accordionCont" class="accordion_g">
										<h2 class="screen_out">프로젝트 주요안내</h2>
										
									</div>
									<!-- 2017-09-24 추가 -->
									<div class="cont_process">
										<h2 class="tit_process">얼리버드 <em class="txt_emph">후원형 프로젝트</em> 참여 절차</h2>
										<p class="txt_process">여러분들의 관심과 참여로 더 나은 세상을 만들어 나가는 프로젝트가 실행됩니다.</p>
										<ol class="list_order">
											<li>
												<img src="${pageContext.request.contextPath}/images/step1.PNG"/><br><br>
												<span class="txt_order">1.회원가입</span>
												<span class="fa fa-angle-right"></span>
											</li>
											<li>
												<img src="${pageContext.request.contextPath}/images/step2.PNG"/><br><br>
												<span class="txt_order">2.프로젝트 선택</span>
												<span class="fa fa-angle-right"></span>
											</li>
											<li>
												<img src="${pageContext.request.contextPath}/images/step3.PNG"/><br><br>
												<span class="txt_order">3.참여하기</span>
												<span class="fa fa-angle-right"></span>
											</li>
											<li>
												<img src="${pageContext.request.contextPath}/images/step4.PNG"/><br><br>
												<span class="txt_order">4.결제</span>
												<span class="fa fa-angle-right"></span>
											</li>
											<li>
												<img src="${pageContext.request.contextPath}/images/step5.PNG"/><br><br>
												<span class="txt_order">5.리워드 수령</span>
											</li>
										</ol>
									</div>
									
									<h2 class="tit_cheer">응원 한마디!</h2>
									<div class="comment_cont">
										<form name="insertForm">
											<fieldset>
												<legend class="screen_out">댓글달기</legend>
												<div class="comment_form_group">
													<div class="comment_input_box">
														<textarea cols="30" rows="5" class="tf_cmt login_required" name="content" title="댓글 작성" placeholder="응원 한마디를 남겨주세요."></textarea>
														
									                </div>
									                <div>
									                    <input type="submit" class="btn_submit point_color" value="등록" title="등록">
									                </div>
												</div>
											</fieldset>
										</form>
								<h2 class="screen_out">댓글</h2>
								<ul class="list_cmt">
											
					<!-- 댓글하나 시작 -->	
										<li><div class="cmt_output">														
											<span class="user_profile">
											    <span class="img_profile">									        
											    </span>
											    <span class="txt_name">보리</span>
											</span>
											<span class="txt_time">2019-01-08 13:01</span>
											<!-- 댓글 보이기 -->
											<div class="cmt_content">
												<p class="cont_cmt">응원합니다~</p>
												
														<div class="tool_set">
															<input type="hidden" name="commentSeq" value="30977">
															<input type="hidden" name="updateId" value="225382">
															<button type="button" class="btn_edit">수정</button>
															<button type="button" class="btn_del">삭제</button>
															
														</div>
											</div>
											<!-- 댓글 수정  -->
											<div class="edit_cmt" style="display:none">
													<fieldset>
														<legend class="screen_out">댓글달기</legend>
														<div class="cmt_comm">
															<div class="box_cmt">
																<input type="hidden" name="commentSeq" value="30977">
																<input type="hidden" name="updateId" value="225382">
																<textarea cols="30" rows="5" class="tf_cmt" title="댓글 작성">응원합니다~</textarea>
																<div class="cmt_info">
																	<span class="num_byte"><em>0</em> / 500byte</span>
																</div>
																<input type="submit" class="btn_submit" value="수정" title="수정">
															</div>
														</div>
													</fieldset>
												</div>
											</div>									
										</li>
					<!-- 댓글하나 끝 -->
												
										<ul class="list_reply">
												<li><div class="cmt_reply">
														<span class="ico_comm">댓글의 답글</span>
														<span class="user_profile">
														    <span class="img_profile clear_empty_picture">
														        <img src="${pageContext.request.contextPath}/uploads/member/profile/<c:out value="${item.IMAGE}"/>" style="background: rgb(255, 255, 255);">
														    </span>
												    		<span class="txt_name"><c:out value="${item.NICKNAME}"/></span>
														</span>
														<span class="txt_time">2019-01-08 18:55</span>
														<p class="cont_cmt">네 고객님!<br>1차 리워드 169,900원은 카페트 미포함 가격이며<br>카페트 또한 1,2,3차 얼리버드 특가로 구매하실 수 있습니다!<br><br>카페트는 필수옵션이 아니며<br>카페트 없이도 사용하는데 지장은 없답니다!</p>
													</div>
												</li>
										</ul>
										
										
										<li><div class="cmt_output">
											<span class="user_profile">
											    <span class="img_profile clear_empty_picture">
											    </span>
											    <span class="txt_name">한송이</span>
											</span>

											<span class="txt_time">2019-01-16 16:26</span>
											<!-- 댓글 보이기 -->
											<div class="cmt_content">
												<p class="cont_cmt">
														와 포장도 이쁘고 가격도 훌륭하군요. </p>
											</div>
											<!-- 댓글 수정  -->
											<div class="edit_cmt" style="display:none">
												<fieldset>
													<legend class="screen_out">댓글달기</legend>
													<div class="cmt_comm">
														<div class="box_cmt">
															<input type="hidden" name="commentSeq" value="30973">
															<input type="hidden" name="updateId" value="15">
															<textarea cols="30" rows="5" class="tf_cmt" title="댓글 작성">와 포장도 이쁘고 가격도 훌륭하군요. </textarea>
															<div class="cmt_info">
																<span class="num_byte"><em>0</em> / 500byte</span>
															</div>
															<input type="submit" class="btn_submit" value="수정" title="수정">
														</div>
													</div>
												</fieldset>
											</div>
										</div>
										</li>
								</ul>		
												
							<div id="paging" class="paging_comm">
								<a class="link_page on">1</a>&nbsp;
						
								<input id="pageIndex" name="pageIndex" type="hidden" value="1">
							</div>
								
									
									
									<script type="text/javascript">
									    $(document).ready(function(){
									
									        accordion();
									
									        $('.login_required').focus(function() {
									            if(!fnLoginCheck()) {
									                fnShowLoginPopup();
									                return false;
									            }
											});
									
									        //댓글 등록
									        $(".btn_submit").on("click",function(){
									
									            if(!fnLoginCheck())
									            {
									                fnShowLoginPopup();
									
									                return false;
									            }
									
									            if($(this).val() === "등록")
									            {
									                var createId = $(this).parent().parent().find("input[name=createId]").val();
									                var inputBox = $(this).parent().parent().find('.tf_cmt');
									                var content = inputBox.val();
									                var projectSeq = '6356';
									
									                if(typeof createId !== 'string' || !createId.length) {
									                    fnShowLoginPopup();
									                    return false;
									                }
									
									                if(content.length === 0){
									                    alert("댓글을 입력해주세요.");
									                    inputBox.focus();
									                    return false;
									                }
									
									                $.ajaxSetup({ cache: false });
									                $.ajax({
									                    dataType: 'json',
									                    type : 'post',
									                    url : '/reward/introInsertAjax.do',
									                    data : {
									                        "content" : content
									                        ,"projectSeq" : projectSeq
									                        ,"createId" : createId
									                    },
									                    success : function(data) {
									                        if(data.updateCnt=="1"){
									                            //alert("댓글이 등록 되었습니다.");
									                            link_page($("#pageIndex").val());
									                            $("#cmt_cnt").html("<em>0</em> / 500byte");
									                        }else{
									                            alert("댓글 등록에 실패 했습니다.");
									                        }
									                    },
									                    error : function() {
									                        alert("오류가 발생했습니다.");
									                    }
									                });
									            }
									            else if($(this).val()=="수정")
									            {
									                var updateId = $(this).parent().children("input[name=updateId]").val();
									                var commentSeq = $(this).parent().children("input[name=commentSeq]").val();
									                var inputBox = $(this).parent().children('.tf_cmt');
									                var content = inputBox.val();
									
									                if(content.length == 0){
									                    alert("댓글을 입력해주세요.");
									                    inputBox.focus();
									                    return false;
									                }
									
									                $.ajaxSetup({ cache: false });
									                $.ajax({
									                    type : 'post',
									                    dataType : 'json',
									                    url : '/reward/introUpdateAjax.do',
									                    data : {
									                        "content" : content
									                        ,"commentSeq" : commentSeq
									                        ,"updateId" : updateId
									                    },
									                    success : function(data) {
									                        //alert("답변이 수정 되었습니다.");
									                        if(data.updateCnt=="1"){
									                            //alert("답변이 수정 되었습니다.");
									                            link_page($("#pageIndex").val());
									                        }else{
									                            alert("댓글 수정에 실패 했습니다.");
									                        }
									                    },
									                    error : function(e) {
									                        alert("오류가 발생했습니다.");
									                    }
									                });
									            }
									            return false; //폼 액션 막기
									        });
									
									        $(".btn_del").on("click",function(){
									            var updateId = $(this).parent().children("input[name=updateId]").val();
									            var commentSeq = $(this).parent().children("input[name=commentSeq]").val();
									
									            if(confirm("삭제하시겠습니까?"))
									            {
									                $.ajaxSetup({ cache: false });
									                $.ajax({
									                    type : "post",
									                    dataType : "json",
									                    url : "/reward/introDeleteAjax.do",
									                    data : {
									                        "commentSeq" : commentSeq,
									                        "updateId" : updateId
									                    },
									                    success : function(data) {
									                        if(data.deleteCnt=="1"){
									                            //alert("글이 삭제 되었습니다.");
									                            link_page($("#pageIndex").val());
									                        }else{
									                            alert("댓글 삭제에 실패 했습니다.");
									                        }
									                    },
									                    error : function(e) {
									                        alert("오류가 발생했습니다.");
									                    }
									                });
									            }
									        });
									
									        //댓글 등록 및 수정 길이 체크
									        $(".tf_cmt").on("keyup",function(){
									            var contentLength = getByteLength($(this).val());
									            if( contentLength > 500){
									                alert("500byte 글자수를 초과하였습니다.");
									                $(this).val(cutByLen( $(this).val() , 500 ));
									                $(this).focus();
									            }
									        });
									
									        //댓글 수정 버튼 클릭시
									        $(".btn_edit").on("click",function(){
									            $(this).parent().parent().parent('div').children('.cmt_content').hide();
									            var edit_cmt = $(this).parent().parent().parent('div').children('.edit_cmt');
									            edit_cmt.show();
									        });
									    });
									
									    // accordion
									    function accordion(){
									        var acc = $(".btn_accordion");
									        var panel = $(".panel");
									        acc.click(function(){
									            if($(this).parent().hasClass("active")) {
									                $(this).parent().removeClass("active");
									            }else{
									                panel.removeClass("active");
									                $(this).parent().addClass("active");
									            }
									        })
									    }
									
									    function link_page(pageNo)
									    {
									        var projectSeq = '6356';
									        var value = "/reward/"+ projectSeq +"/intro?&pageIndex=" + pageNo + "&isPreview=Y&mockFlag=N";
									        area = $("#reward_tab_content");
									        area.load(value, function() {
									            if (UI.Project.isTabMenuFixed()) {
									                UI.RewardProject.scrollCheerContent();
									            }
									        });
									    }
									
									</script>
                            </div></section>
                        </div>

                        
                            <div class="box_reward_select">
                                <form name="rewardForm" id="rewardForm" action="">
                                    <fieldset>
                                  
	<ul class="list_reward">
		<c:forEach items="${item.getOptionList()}" var="oplist">
         	<!-- 리워드 수량이 무한한 경우 -->
            <li>
                <a href="payment/input/${oplist.TYPE_CODE}" class="box_reward">
                    <strong class="tit_reward">${oplist.OP_PRICE}원 펀딩</strong>
                    <p class="txt_desc">${oplist.NAME}</p>
                    <span class="info_dely"><span class="txt_info">${oplist.INFO}</span></span>
                    <span class="txt_satea"><em class="num_state">${oplist.PURNUM}명</em> 참여하였습니다.</span>
                </a>
            </li> 
        </c:forEach>
	</ul>
                                    </fieldset>
                                </form>
                            </div>
                        
                    </div>

                                        

                </article>
            </div> <!-- end CMain -->
        </main>
<!-- 끝 -->		
		


		<div id="sidebar-footer" class="footer-widgets" role="complementary">
			<div class="container">
				<div class="row">
					<div class="sidebar-column col-md-4">
						<section id="text-2" class="widget widget_text">
							<div class="textwidget">
								<p><strong>+999.222.333</strong></p>
							</div>
						</section>
					</div>

					<div class="sidebar-column col-md-4">
						<section id="athemes_social_widget-2" class="widget widget_athemes_social_widget">
							<div class="menu-social-container">
								<ul id="menu-social" class="menu social-media-list clearfix">
									<li id="menu-item-47" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-47"><a href="https://facebook.com"><span class="screen-reader-text">Facebook</span></a></li>
									<li id="menu-item-48" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-48"><a href="https://twitter.com"><span class="screen-reader-text">Twitter</span></a></li>
									<li id="menu-item-49" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-49"><a href="https://instagram.com"><span class="screen-reader-text">Instagram</span></a></li>
									<li id="menu-item-50" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-50"><a href="https://youtube.com"><span class="screen-reader-text">Youtube</span></a></li>
									<li id="menu-item-51" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-51"><a href="https://linkedin.com"><span class="screen-reader-text">Linkedin</span></a></li>
								</ul>
							</div>
						</section>
					</div>

					<div class="sidebar-column col-md-4">
						<section id="text-3" class="widget widget_text">
							<div class="textwidget">
								<p><strong>office@example.org</strong></p>
							</div>
						</section>
					</div>

				</div>
			</div>
		</div>
		<footer id="colophon" class="site-footer">
			<div class="container">
				<div class="row">

					<div class="site-info col-md-12">

						<a href="https://wordpress.org/">Proudly powered by WordPress</a>
						<span class="sep"> | </span>
						Theme: <a href="https://athemes.com/theme/airi">Airi</a> by aThemes. </div><!-- .site-info -->

				</div>
			</div>
		</footer><!-- #colophon -->
	</div><!-- #page -->

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

</body>

</html>