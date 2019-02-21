<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="seller_items_header.jsp" %>
<!doctype html> 
<html class="no-js">
<!doctype html>
<html lang="en-US">


<body>
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



 <nav class="b-nav-global">
  <ul class="b-nav-global__items">
   
  </ul>
</nav> <!-- end .b-nav-global -->
    
<div class="b-flag b-flag--h is_dent">
  <div class="container">
    
<div style="left:0px" class="b-valign text-align_center fitin ">
  <div class="b-valign__inner">

    <!--[if IE 7]>
    <div class="b-valign__ie7_helper">
      <![endif]-->


<c:forEach items="${OneList}" var="OneList" end="0">
      <div class="changable-content">

        <div class="b-avatar has-pad-bottom-dot5 is_vaporable" style="width: 96px">
  <div class="b-avatar__frame b-avatar__frame--bordered" style="width:96px; height:96px">
    <img alt="6e65e28f-55c7-435a-a6c7-9b70c09f2233.jpg?ixlib=rb-1.1.0&amp;w=200&amp;h=250&amp;auto=format%2ccompress&amp;fit=facearea&amp;facepad=2" class="b-avatar__pic"
    src='${pageContext.request.contextPath}/images/like/${OneList.IMAGE}' />
</div>   
</div>

        <h1 class="headline text-size_3xl is_vaporable">
          ${OneList.NICKNAME}
        </h1>
      <ul class="b-meta is_vaporable">

          <li class="b-meta__item is_first">
            <span class="b-meta__link">
              <i class="b-fontello b-fontello--tag "></i>
              ${OneList.INFO}
            </span>
            </li > 
        </ul>
       <a href="../message/red@gmail.com/${OneList.EMAIL}"	target="popup"	onclick="window.open('../message/red@gmail.com/${OneList.EMAIL}', 'popup',
											'width=1000, height=750'); return false;">
				<img style="width: 45px; height: 33px; border: 1px grey;" src="${pageContext.request.contextPath}/images/like/envelope.JPG"/>
		</a><br/>
 			<br><br>

      </div>
      </c:forEach>

        <!--b-media__body-->
        <!--b-media-->
      </div>
  </div>
</div>
  </div>



<div class="b-content b-content--clean">
  <div class="container">
    
  
<div class="b-main b-main--extended b-main--centered" id="" role="main">
  

    <div class="row has-pad-bottom">
<c:forEach items="${OneList}" var="OneList">
      <div class="b-project-card">
  <figure class="b-project-card__head">
    <a class="b-project-card__head__link" href="/toolbook">
      <div class="b-project-card__head__link__inner">
        <div class="b-project-card__head__filter"></div>
        <img src='${pageContext.request.contextPath}/images/like/<c:out value="${OneList.MAIN_IMAGE}"/>' alt="" class="b-project-card__head__pic" />
        
      

      </div>
    </a>
  </figure>

  <div class="b-project-card__body"> 
    <h3 class="b-project-card__title">
      <a href="/toolbook" class="[ yoke yoke--theme_light ]"><c:out value="${OneList.TITLE}"/></a>
    </h3>
    <p class="b-project-card__creator">
     <c:out value="${OneList.NICKNAME}"/>의 프로젝트
    </p>
    <p class="b-project-card__blurb">
    <c:out value="${OneList.SUMMARY}"/>
    </p>
  </div> 
  <div class="b-project-card__gauge [ b-gauge ]">
  <c:choose>
 	 <c:when test="${OneList.PERCENT > 100}">
   	 <div class="b-gauge__liquid" style="width:100%"></div>
    </c:when>
    <c:otherwise>
    <div class="b-gauge__liquid" style="width:<c:out value="${OneList.PERCENT}"/>%"/>
    </c:otherwise>
 </c:choose>
  </div> 
  <div class="b-project-card__figures">

    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
      <span class="b-project-card__figure-title">모인 금액</span>
      <span class="b-project-card__figure-item">
        <c:out value="${OneList.NOW_SUM}"/> 원
        <span class="b-project-card__percentage">
        <c:out value="${OneList.PERCENT}"/>%
        </span>
      </span>
    </div>
    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
        <span class="b-project-card__figure-title">남은 시간</span>
        <span class="b-project-card__figure-item">
        <c:choose>
           <c:when test="${OneList.TIME > 0}">
           <span class="days"><c:out value="${OneList.TIME}"/>일 남음</span> 
           </c:when>                                 
           <c:when test="${OneList.TIME < 0}">
                 <span class="days">마감됨</span>                                      
           </c:when>
           <c:otherwise>
                 <span class="days">오늘 자정까지</span>
           </c:otherwise>
        </c:choose>
        </span>
    </div>
    
  </div>
</div>
</c:forEach>
 <div class="b-project-card">
  <figure class="b-project-card__head">
    <a class="b-project-card__head__link" href="/toolbook">
      <div class="b-project-card__head__link__inner">
        <div class="b-project-card__head__filter"></div>
        <img src="https://tumblbug-pci.imgix.net/59e4705fa23235cff63a8ffd4eced13035809d9a/68d8d33f97f152e385ec230f1ca6da7e9972884d/7ff9524a7b5fd157e11612514a14d999ae825945/824d171f-bd6a-451a-b62d-5b4c6ce4db5a.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=069fc8d0d11fd0ee88e44fb211412e27" alt="" class="b-project-card__head__pic" />
      </div>
    </a>
  </figure>

  <div class="b-project-card__body"> 
    <h3 class="b-project-card__title">
      <a href="/toolbook" class="[ yoke yoke--theme_light ]">“우리 쿠키는” 까불까불귀염둥2</a>
    </h3>
    <p class="b-project-card__creator">
     같이 여행갈래요
    </p>
    <p class="b-project-card__blurb">
      캐리어 포함 7키로라는데..다이어트 시급하다..
    </p>
  </div> 
  <div class="b-project-card__gauge [ b-gauge ]">
    <div class="b-gauge__liquid" style="width: 100%"></div>
  </div> 
  <div class="b-project-card__figures">

    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
      <span class="b-project-card__figure-title">모인 금액</span>
      <span class="b-project-card__figure-item">
       3,000,000원
        <span class="b-project-card__percentage">
          89 %
        </span>
      </span>
    </div>
    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
        <span class="b-project-card__figure-title">남은 시간</span>
        <span class="b-project-card__figure-item">
          275일
        </span>
    </div>
    
  </div>
</div>
 <div class="b-project-card">
  <figure class="b-project-card__head">
    <a class="b-project-card__head__link" href="/toolbook">
      <div class="b-project-card__head__link__inner">
        <div class="b-project-card__head__filter"></div>
        <img src="https://tumblbug-pci.imgix.net/59e4705fa23235cff63a8ffd4eced13035809d9a/68d8d33f97f152e385ec230f1ca6da7e9972884d/7ff9524a7b5fd157e11612514a14d999ae825945/824d171f-bd6a-451a-b62d-5b4c6ce4db5a.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=069fc8d0d11fd0ee88e44fb211412e27" alt="" class="b-project-card__head__pic" />
      </div>
    </a>
  </figure>

  <div class="b-project-card__body"> 
    <h3 class="b-project-card__title">
      <a href="/toolbook" class="[ yoke yoke--theme_light ]">“독립적인 여성들을 위한” 비주얼 공구 가이드북</a>
    </h3>
    <p class="b-project-card__creator">
      문예춘추사의 프로젝트
    </p>
    <p class="b-project-card__blurb">
      혼자 사는 데 든든하다. 누군가의 도움 없이 나 혼자 고친다. 참 쉬운 비주얼 공구 사용법
    </p>
  </div> 
  <div class="b-project-card__gauge [ b-gauge ]">
    <div class="b-gauge__liquid" style="width: 100%"></div>
  </div> 
  <div class="b-project-card__figures">

    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
      <span class="b-project-card__figure-title">모인 금액</span>
      <span class="b-project-card__figure-item">
        6,735,400원
        <span class="b-project-card__percentage">
          336 %
        </span>
      </span>
    </div>
    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
        <span class="b-project-card__figure-title">남은 시간</span>
        <span class="b-project-card__figure-item">
          27일
        </span>
    </div>
    
  </div>
</div>

    </div>

																</div>
															</div>
														</div>
													</div>
								

				</main><!-- #main -->
			<!-- #primary -->


		</div><!-- #content -->





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
