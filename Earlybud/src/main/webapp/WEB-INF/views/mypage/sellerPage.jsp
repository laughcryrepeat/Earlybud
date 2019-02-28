<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="header.jsp" %>
<%@include file="seller_items_header.jsp" %>

<!doctype html> 
<html class="no-js">

<body>

	<nav class="b-nav-global">
	  <ul class="b-nav-global__items">   
	  </ul>
	</nav> <!-- end .b-nav-global -->   
<div class="b-flag b-flag--h is_dent">
  <div class="container">  
<div style="left:0px" class="b-valign text-align_center fitin ">
  <div class="b-valign__inner">
      <div class="changable-content">
        <div class="b-avatar has-pad-bottom-dot5 is_vaporable" style="width: 96px">
  <div class="b-avatar__frame b-avatar__frame--bordered" style="width:96px; height:96px">
    <img alt="6e65e28f-55c7-435a-a6c7-9b70c09f2233.jpg?ixlib=rb-1.1.0&amp;w=200&amp;h=250&amp;auto=format%2ccompress&amp;fit=facearea&amp;facepad=2" class="b-avatar__pic"
    src='${pageContext.request.contextPath}/uploads/member/profile/${seller.image}' />
</div>
</div>
        <h1 class="headline text-size_3xl is_vaporable">
          <sec:authentication property="principal.member.nickname"/>
        </h1>
      <ul class="b-meta is_vaporable">
          <li class="b-meta__item is_first">
            <a class="b-meta__link" data-toggle="tooltip" title="판매자 정보 수정하기" data-placement="top" href="../newproject/newprojectModify1">
              <i class="b-fontello b-fontello--tag "></i>
              ${seller.info}
            </a>
            </li > 
        </ul>
          <br/>
      </div>
      </div>
  </div>
</div>
</div>



<div class="b-content b-content--clean">
<div class="container">   
  
<div class="b-main b-main--extended b-main--centered" id="" role="main"> 
	<h2 class="mypage-top-title">진행중인 프로젝트</h2>
    <div class="row has-pad-bottom">
				<c:forEach items="${item}" var="item">
				 <div class="b-project-card">
				  <figure class="b-project-card__head">
				    <a class="b-project-card__head__link" href="../reward?item_code=${item.item_code}">
				      <div class="b-project-card__head__link__inner">
				        <div class="b-project-card__head__filter"></div>
				        <img src='${pageContext.request.contextPath}/images/like/<c:out value="${item.main_image}"/>' alt="" class="b-project-card__head__pic" />
				 
				      </div>
				    </a>
				  </figure>
				
				  <div class="b-project-card__body"> 
				    <h3 class="b-project-card__title">
				      <a href="../reward?item_code=${item.item_code}" class="[ yoke yoke--theme_light ]"><c:out value="${item.title}"/></a>
				    </h3>
				    <p class="b-project-card__creator">
				     <sec:authentication property="principal.member.nickname"/>의 프로젝트
				    </p>
				    <p class="b-project-card__blurb">
				    <c:out value="${item.summary}"/>
				    </p>
				  </div> 
				  <div class="b-project-card__gauge [ b-gauge ]">
				  
				  <c:choose>
				     <c:when test="${item.cur_sum/item.target_sum * 100 > 100}">
				       <div class="b-gauge__liquid" style="width:100%"></div>
				    </c:when>
				    <c:otherwise>
				    <div class="b-gauge__liquid" style='width: <fmt:formatNumber value="${item.cur_sum/item.target_sum * 100 }" pattern=".00" />%'></div>
				    </c:otherwise>
				 </c:choose>
				  </div> 
				  <div class="b-project-card__figures">
				
				    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
				      <span class="b-project-card__figure-title">모인 금액</span>
				      <span class="b-project-card__figure-item">
				        <fmt:formatNumber value="${item.cur_sum}" type="number"/> 원
				        <span class="b-project-card__percentage">
				        <fmt:formatNumber value="${item.cur_sum/item.target_sum * 100 }" pattern=".00" />%
				        </span>
				      </span>
				    </div>
				    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
				        <span class="b-project-card__figure-title">남은 시간</span>
				        <span class="b-project-card__figure-item">
				        
				        <c:choose>                                 
				           <c:when test="${item.success > 0}">
				                 <span class="days">마감됨</span>                                      
				           </c:when>
				           <c:otherwise>
				           		<fmt:parseDate value="${item.closingdate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
				                 <span class="days"><c:out value="${endPlanDate}"/>일 까지</span> 
				           </c:otherwise>
				        </c:choose>
				        </span>
				    </div> 
				  </div>
				</div>
				</c:forEach>
			</div>
			
			<hr/>
			<h2 class="mypage-top-title">앵콜가능 프로젝트</h2>
			<div class="row has-pad-bottom">
				<c:forEach items="${itemEncore}" var="item">
				 <div class="b-project-card">
				  <figure class="b-project-card__head">
				   <a class="b-project-card__head__link" href="../reward?item_code=${item.item_code}">
				      <div class="b-project-card__head__link__inner">
				        <div class="b-project-card__head__filter"></div>
				        <img src='${pageContext.request.contextPath}/images/like/<c:out value="${item.main_image}"/>' alt="" class="b-project-card__head__pic" />			 
				      </div>
				    </a>
				  </figure>
				
				  <div class="b-project-card__body"> 
				    <h3 class="b-project-card__title">
				      <a href="../reward?item_code=${item.item_code}" class="[ yoke yoke--theme_light ]"><c:out value="${item.title}"/></a>
				    </h3>
				    <p class="b-project-card__creator">
				     <sec:authentication property="principal.member.nickname"/>의 프로젝트
				    </p>
				    <p class="b-project-card__blurb">
				    <c:out value="${item.summary}"/>
				    </p>
				  </div> 
				  <div>&nbsp;&nbsp;<button data-toggle="tooltip" title="재업로드하기" data-placement="top" class="btn encore_btn" value="${item.item_code}"><i class="fa fa-check" aria-hidden="true"></i></button></div>
				  <div class="b-project-card__gauge [ b-gauge ]">
				  
				  <c:choose>
				     <c:when test="${item.cur_sum/item.target_sum * 100 > 100}">
				       <div class="b-gauge__liquid" style="width:100%"></div>
				    </c:when>
				    <c:otherwise>
				    <div class="b-gauge__liquid" style='width: <fmt:formatNumber value="${item.cur_sum/item.target_sum * 100 }" pattern=".00" />%'></div>
				    </c:otherwise>
				 </c:choose>
				  </div> 
				  <div class="b-project-card__figures">
				
				    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
				      <span class="b-project-card__figure-title">모인 금액</span>
				      <span class="b-project-card__figure-item">
				        <fmt:formatNumber value="${item.cur_sum}" type="number"/> 원
				        <span class="b-project-card__percentage">
				        <fmt:formatNumber value="${item.cur_sum/item.target_sum * 100 }" pattern=".00" />%
				        </span>
				      </span>
				    </div>
				    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
				        <span class="b-project-card__figure-title">남은 시간</span>
				        <span class="b-project-card__figure-item">
				        
				        <c:choose>                                 
				           <c:when test="${item.success > 0}">
				                 <span class="days">마감됨</span>                                      
				           </c:when>
				           <c:otherwise>
				           		<fmt:parseDate value="${item.closingdate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
				                 <span class="days"><c:out value="${endPlanDate}"/>일 까지</span> 
				           </c:otherwise>
				        </c:choose>
				        </span>
				    </div> 
				  </div>
				</div>
				</c:forEach>
			</div>
			
			<hr/>
			<h2 class="mypage-top-title">마감된 프로젝트</h2>
			<div class="row has-pad-bottom">
				<c:forEach items="${itemEnd}" var="item">
				 <div class="b-project-card">
				  <figure class="b-project-card__head">
				    <a class="b-project-card__head__link" href="../reward?item_code=${item.item_code}"">
				      <div class="b-project-card__head__link__inner">
				        <div class="b-project-card__head__filter"></div>
				        <img src='${pageContext.request.contextPath}/resources/uploads/reward/<c:out value="${item.main_image}"/>' alt="" class="b-project-card__head__pic" />			 
				      </div>
				    </a>
				  </figure>
				
				  <div class="b-project-card__body"> 
				    <h3 class="b-project-card__title">
				      <a href="../reward?item_code=${item.item_code}" class="[ yoke yoke--theme_light ]"><c:out value="${item.title}"/></a>
				    </h3>
				    <p class="b-project-card__creator">
				     <sec:authentication property="principal.member.nickname"/>의 프로젝트
				    </p>
				    <p class="b-project-card__blurb">
				    <c:out value="${item.summary}"/>
				    </p>
				  </div> 
				  <div class="b-project-card__gauge [ b-gauge ]">
				  
				  <c:choose>
				     <c:when test="${item.cur_sum/item.target_sum * 100 > 100}">
				       <div class="b-gauge__liquid" style="width:100%"></div>
				    </c:when>
				    <c:otherwise>
				    <div class="b-gauge__liquid" style='width: <fmt:formatNumber value="${item.cur_sum/item.target_sum * 100 }" pattern=".00" />%'></div>
				    </c:otherwise>
				 </c:choose>
				  </div> 
				  <div class="b-project-card__figures">
				
				    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
				      <span class="b-project-card__figure-title">모인 금액</span>
				      <span class="b-project-card__figure-item">
				        <fmt:formatNumber value="${item.cur_sum}" type="number"/> 원
				        <span class="b-project-card__percentage">
				        <fmt:formatNumber value="${item.cur_sum/item.target_sum * 100 }" pattern=".00" />%
				        </span>
				      </span>
				    </div>
				    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
				        <span class="b-project-card__figure-title">남은 시간</span>
				        <span class="b-project-card__figure-item">
				        
				        <c:choose>                                 
				           <c:when test="${item.success > 0}">
				                 <span class="days">마감됨</span>                                      
				           </c:when>
				           <c:otherwise>
				           		<fmt:parseDate value="${item.closingdate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
				                 <span class="days"><c:out value="${endPlanDate}"/>일 까지</span> 
				           </c:otherwise>
				        </c:choose>
				        </span>
				    </div> 
				  </div>
				</div>
				</c:forEach>
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
   
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script>
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
		
		$('.encore_btn').on( 'click',function() {
	        var data = this.value;
	        console.log(data);
			if(confirm("아이템을 정말 재업로드하시겠습니까?") == true){
                   location.href='../newproject/newprojectModify2/'+data ;
	        }else{
	            return false;
	        }
	    });	

	</script>

</body>

</html>