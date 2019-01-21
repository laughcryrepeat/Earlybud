<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en-US">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="profile" href="http://gmpg.org/xfn/11">

  <style id="kirki-css-vars">:root{}</style>
  <title>EarlyBud &#8211; MyPage</title>
  <link rel='dns-prefetch' href='//s.w.org' />
  <link rel="alternate" type="application/rss+xml" title="Atu &raquo; Feed" href="https://demo.athemes.com/airi-shop/feed/" />
  <link rel="alternate" type="application/rss+xml" title="Atu &raquo; Comments Feed" href="https://demo.athemes.com/airi-shop/comments/feed/" />
  <link rel="alternate" type="application/rss+xml" title="Atu &raquo; Hello world! Comments Feed" href="https://demo.athemes.com/airi-shop/2018/08/20/hello-world/feed/" />
  <!--datepicker  -->
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
  <script type="text/javascript">
    $(function(){
    	$("#startDate1").datepicker();
        $("#endDate1").datepicker();
    });
  </script>
  
  <script type="text/javascript">
    window._wpemojiSettings = {
      "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/",
      "ext": ".png",
      "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/",
      "svgExt": ".svg",
      "source": {
        "concatemoji": "https:\/\/demo.athemes.com\/airi-shop\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.9"
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
            return !(b = d([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819])) && (b = d([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203,
              56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447
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
  	.dateC{
      width: 270px !important;
    }
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
    .file{
      background-color: #ffffff !important;
      border: none !important;
      padding: 0 !important;
    }
    .active {
      background-color: #db79f5 !important;
    }

    .elementor-size-sm {
      background-color: #db79f5 !important;
      border: none !important;
    }
    form{
      position: relative !important;
      left: 100px !important;
    }
    form .form-submit{
      position: relative !important;
      top: 50px !important;
    }
  </style>
  <link rel='stylesheet' id='airi-bootstrap-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/css/bootstrap/bootstrap.min.css?ver=1' type='text/css' media='all' />
  <link rel='stylesheet' id='contact-form-7-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.0.2' type='text/css' media='all' />
  <link rel='stylesheet' id='woocommerce-layout-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=3.4.3' type='text/css' media='all' />
  <link rel='stylesheet' id='woocommerce-smallscreen-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=3.4.3' type='text/css' media='only screen and (max-width: 768px)' />
  <link rel='stylesheet' id='woocommerce-general-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=3.4.3' type='text/css' media='all' />
  <style id='woocommerce-inline-inline-css' type='text/css'>
    .woocommerce form .form-row .required {
      visibility: visible;
    }
  </style>
  <link rel='stylesheet' id='airi-style-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/style.css?ver=4.9.9' type='text/css' media='all' />
  <link rel='stylesheet' id='airi-font-awesome-css' href='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/css/font-awesome/css/font-awesome.min.css?ver=4.9.9' type='text/css' media='all' />
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
      color: #707070;
    }

    .widget a {
      color: #595959;
    }
  </style>
  <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
  <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
  <link rel='https://api.w.org/' href='https://demo.athemes.com/airi-shop/wp-json/' />
  <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://demo.athemes.com/airi-shop/xmlrpc.php?rsd" />
  <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://demo.athemes.com/airi-shop/wp-includes/wlwmanifest.xml" />
  <meta name="generator" content="WordPress 4.9.9" />
  <meta name="generator" content="WooCommerce 3.4.3" />
  <link rel="canonical" href="https://demo.athemes.com/airi-shop/2018/08/20/hello-world/" />
  <link rel='shortlink' href='https://demo.athemes.com/airi-shop/?p=1' />
  <link rel="alternate" type="application/json+oembed" href="https://demo.athemes.com/airi-shop/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fdemo.athemes.com%2Fairi-shop%2F2018%2F08%2F20%2Fhello-world%2F" />
  <link rel="alternate" type="text/xml+oembed" href="https://demo.athemes.com/airi-shop/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fdemo.athemes.com%2Fairi-shop%2F2018%2F08%2F20%2Fhello-world%2F&#038;format=xml" />

  <!-- Google Webmaster Tools plugin for WordPress -->

  <link rel="pingback" href="https://demo.athemes.com/airi-shop/xmlrpc.php"> <noscript>
    <style>
      .woocommerce-product-gallery {
        opacity: 1 !important;
      }
    </style>
  </noscript>
  <style type="text/css">
    .recentcomments a {
      display: inline !important;
      padding: 0 !important;
      margin: 0 !important;
    }
  </style>
  <style type="text/css" id="wp-custom-css">
    .instagram-feed ul {
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .instagram-feed li {
      float: left;
      width: 20%;
    }

    @media (max-width: 991px) {
      .shop-cats-grid {
        height: auto;
      }
    }

    @media (max-width: 600px) {
      .shop-grid {
        display: block;
      }

      .cats-grid-item {
        min-height: 200px;
      }

      .instagram-feed li {
        width: 50%;
      }

      .startup-subscribe input[type="email"] {
        width: 100%;
        min-width: auto;
        border-radius: 30px;
        display: block;
      }

      .startup-subscribe {
        display: block;
      }

      .startup-subscribe input[type="submit"] {
        border-radius: 30px;
        margin: 15px auto 0;
        display: block;
      }
    }

    .startup-subscribe input[type="email"] {
      border-top-left-radius: 30px;
      border-bottom-left-radius: 30px;
    }

    .startup-subscribe input[type="submit"] {
      border-top-right-radius: 30px;
      border-bottom-right-radius: 30px;
    }

    .footer-widgets {
      padding-top: 60px;
      padding-bottom: 60px;
      border-top: 1px solid #ebebeb;
    }
  </style>
</head>

<body class="post-template-default single single-post postid-1 single-format-standard wp-custom-logo woocommerce-no-js menuStyle2 menuNotContained sticky-header woocommerce-active elementor-default">
  <div id="page" class="site">
    <a class="skip-link screen-reader-text" href="#content">Skip to content</a>


    <header id="masthead" class="site-header">

      <div class="container-fluid">
        <div class="row">
          <div class="site-branding col-md-4 col-sm-6 col-9">
            <a href="https://demo.athemes.com/airi-shop/" class="custom-logo-link" rel="home" itemprop="url"><img width="100" height="60" src="images/earlybud.png" class="custom-logo" alt="Atu" itemprop="logo" /></a> </div><!-- .site-branding -->

          <div class="header-mobile-menu col-md-8 col-sm-6 col-3">
            <button class="mobile-menu-toggle" aria-controls="primary-menu">
              <span class="mobile-menu-toggle_lines"></span>
              <span class="sr-only">Toggle mobile menu</span>
            </button>
          </div>

          <nav id="site-navigation" class="main-navigation col-md-8">
            <div class="menu-menu-container">
              <ul id="primary-menu" class="menu">
                <li id="menu-item-115" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-115"><a href="https://demo.athemes.com/airi-shop/">Home</a></li>
                <li id="menu-item-116" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-116"><a href="https://demo.athemes.com/airi-shop/blog/">Blog</a></li>
                <li id="menu-item-142" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-142"><a href="https://demo.athemes.com/airi-shop/about-us/">About us</a></li>
                <li id="menu-item-118" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-118"><a href="https://demo.athemes.com/airi-shop/sample-page/">Sample Page</a></li>
              </ul>
            </div>
            <ul class="header-search-cart">
              <li class="header-search">
                <div class="header-search-toggle"><a><i class="fa fa-search"></i></a></div>
              </li>
              <li class="header-cart-link">
                <a class="cart-contents" href="https://demo.athemes.com/airi-shop" title="View your shopping cart">
                  <i class="fa fa-shopping-bag"></i><span class="count">0</span>
                </a>
              </li>
            </ul>
          </nav><!-- #site-navigation -->

        </div>
      </div>
      <div class="header-search-form">
        <form role="search" method="get" class="search-form" action="https://demo.athemes.com/airi-shop/">
          <label>
            <span class="screen-reader-text">Search for:</span>
            <input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" />
          </label>
          <input type="submit" class="search-submit" value="Search" />
        </form>
      </div>

    </header><!-- #masthead -->
    <div id="content" class="site-content">

      <div class="container">
        <div class="row">
          <div id="primary" class="content-area layout-default col-lg-8">
            <main id="main" class="site-main">


              <article id="post-1" class="post-1 post type-post status-publish format-standard hentry category-uncategorized">


                <header class="entry-header">
                  <span class="posted-on">EarlyBud</span>
                  <h1 class="entry-title">프로젝트 올리기</h1>
                </header><!-- .entry-header -->

                <div id="respond" class="comment-respond">
                  <form action="https://demo.athemes.com/airi-shop/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate>
                    <p class="comment-form-comment"><label for="comment">프로젝트 카테고리<span class="required">*</span></label> <input id="comment" name="comment" type="text" value="" size="30" maxlength="245" required='required' /></p>
                    <p class="comment-form-author"><label for="author">프로젝트 제목<span class="required">*</span></label> <input id="author" name="author" type="text" value="" size="30" maxlength="245" required='required' /></p>
                    <p class="comment-form-email"><label for="email">프로젝트 대표이미지<span class="required">*</span></label><input name="submit" type="file" id="submit" class="file" value="file" required="required"></p>
                    <p class="comment-form-url">
                	    <span>
                        <label for="startDate1">시작일<span class="required">*</span></label>
                          <input class = "dateC" type="text" id="startDate1" name="startDate" required='required'/>
                      </span>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      <span>
                        <label for="endDate1">마감일<span class="required">*</span></label>
                          <input class = "dateC" type="text" id="endDate1" name="endDate" required='required'/>
                      </span>
                     </p>
                    <section id="categories-2" class="widget widget_categories">
                      <ul>
                        <li class="cat-item cat-item-1"><a href="newprojectDetail2"> 다음 페이지 </a>
                        </li>
                      </ul>
                    </section>
                    <p style="display: none;"><input type="hidden" id="akismet_comment_nonce" name="akismet_comment_nonce" value="b0c1d8b81d" /></p>
                    <p style="display: none;"><input type="hidden" id="ak_js" name="ak_js" value="63" /></p>
                  </form>

                </div><!-- #respond -->

          </div><!-- #comments -->

          </main><!-- #main -->
        </div><!-- #primary -->



        <div id="sidebar-footer" class="footer-widgets" role="complementary">
          <div class="container">
            <div class="row">
              <div class="sidebar-column col-md-3">
                <section id="text-2" class="widget widget_text">
                  <div class="textwidget">
                    <p><img class="alignnone size-full wp-image-350" src="//demo.athemes.com/atu-shop/wp-content/uploads/sites/93/2018/09/airishop..png" alt="" width="66" height="24" /></p>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia dese mollit anim id est laborum.</p>
                    <p><span style="color: #bfbfbf;">@2018 atu. All rights reserved.</span></p>
                  </div>
                </section>
              </div>

              <div class="sidebar-column col-md-3">
                <section id="text-3" class="widget widget_text">
                  <h3 class="widget-title">Contact us</h3>
                  <div class="textwidget">
                    <p><span style="color: #bfbfbf;">Email:</span> office@example.org</p>
                    <p><span style="color: #bfbfbf;">Phone:</span> (+88) 999.888</p>
                    <p><span style="color: #bfbfbf;">Address:</span> 25 Canal St., New York</p>
                  </div>
                </section>
              </div>

              <div class="sidebar-column col-md-3">
                <section id="nav_menu-2" class="widget widget_nav_menu">
                  <h3 class="widget-title">Quick links</h3>
                  <div class="menu-quick-links-container">
                    <ul id="menu-quick-links" class="menu">
                      <li id="menu-item-119" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-119"><a href="#">About us</a></li>
                      <li id="menu-item-120" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-120"><a href="#">Terms of service</a></li>
                      <li id="menu-item-121" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-121"><a href="#">Privacy policy</a></li>
                    </ul>
                  </div>
                </section>
              </div>
              <div class="sidebar-column col-md-3">
                <section id="athemes_social_widget-2" class="widget widget_athemes_social_widget">
                  <h3 class="widget-title">Follow us</h3>
                  <div class="menu-social-container">
                    <ul id="menu-social" class="menu social-media-list clearfix">
                      <li id="menu-item-122" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-122"><a href="https://facebook.com"><span class="screen-reader-text">Facebook</span></a></li>
                      <li id="menu-item-123" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-123"><a href="https://twitter.com"><span class="screen-reader-text">Twitter</span></a></li>
                      <li id="menu-item-124" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-124"><a href="https://instagram.com"><span class="screen-reader-text">Instagram</span></a></li>
                      <li id="menu-item-125" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-125"><a href="https://linkedin.com"><span class="screen-reader-text">Linkedin</span></a></li>
                    </ul>
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

      <script type="text/javascript">
        var c = document.body.className;
        c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
        document.body.className = c;
      </script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/elementor/assets/lib/slick/slick.min.js?ver=1.8.1'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/airi-pro//js/elementor.js?ver=20181010'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/imagesloaded.min.js?ver=3.2.0'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/vendor/navigation.js?ver=20180717'></script>
      <script type='text/javascript'>
        /* <![CDATA[ */
        var wpcf7 = {
          "apiSettings": {
            "root": "https:\/\/demo.athemes.com\/airi-shop\/wp-json\/contact-form-7\/v1",
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
      <script type='text/javascript'>
        /* <![CDATA[ */
        var wc_add_to_cart_params = {
          "ajax_url": "\/airi-shop\/wp-admin\/admin-ajax.php",
          "wc_ajax_url": "\/airi-shop\/?wc-ajax=%%endpoint%%",
          "i18n_view_cart": "View cart",
          "cart_url": "https:\/\/demo.athemes.com\/airi-shop",
          "is_cart": "",
          "cart_redirect_after_add": "no"
        };
        /* ]]> */
      </script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=3.4.3'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
      <script type='text/javascript'>
        /* <![CDATA[ */
        var woocommerce_params = {
          "ajax_url": "\/airi-shop\/wp-admin\/admin-ajax.php",
          "wc_ajax_url": "\/airi-shop\/?wc-ajax=%%endpoint%%"
        };
        /* ]]> */
      </script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.4.3'></script>
      <script type='text/javascript'>
        /* <![CDATA[ */
        var wc_cart_fragments_params = {
          "ajax_url": "\/airi-shop\/wp-admin\/admin-ajax.php",
          "wc_ajax_url": "\/airi-shop\/?wc-ajax=%%endpoint%%",
          "cart_hash_key": "wc_cart_hash_c5a0d8ee19d1bc2cabc0f451f4f6d11f",
          "fragment_name": "wc_fragments_c5a0d8ee19d1bc2cabc0f451f4f6d11f"
        };
        /* ]]> */
      </script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.4.3'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/vendor/skip-link-focus-fix.js?ver=20151215'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/vendor/scripts.js?ver=20180223'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/themes/airi/js/custom/custom.min.js?ver=20180223'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/comment-reply.min.js?ver=4.9.9'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-includes/js/wp-embed.min.js?ver=4.9.9'></script>
      <script type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/kirki/modules/webfont-loader/vendor-typekit/webfontloader.js?ver=3.0.28'></script>
      <script type='text/javascript'>
        WebFont.load({
          google: {
            families: ['Work Sans:500,400:cyrillic,cyrillic-ext,devanagari,greek,greek-ext,khmer,latin,latin-ext,vietnamese,hebrew,arabic,bengali,gujarati,tamil,telugu,thai']
          }
        });
      </script>
      <script async="async" type='text/javascript' src='https://mk0athemesdemon3j7s5.kinstacdn.com/wp-content/plugins/akismet/_inc/form.js?ver=4.0.8'></script>

</body>

</html>