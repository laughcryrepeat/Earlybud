<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>

<script  type="text/javascript">
var UI = UI || {
	/**
     * 프로젝트 목록 조회 페이지
     */
    ProjectList: {
        /**
         * 현재 화면에서 선택되있는 정렬 조건 값을 조회
         * @returns {string}
         */
        getSortingValue: function() {
            var $sorting = $('#sorting');
            return ($sorting.length) ? $sorting.val() : '';
        },
        /**
         * 현재 화면에서 선택되있는 카테고리의 코드를 조회
         * @return {string} 선택된 카테고리 코드, DB에서 분류하는 코드와 동일한 값을 사용한다.
         */
        getSelectedCategoryCode: function() {
            var $selectedCategory = $('#category_list').find('li.on');
            return ($selectedCategory.length === 1) ? $selectedCategory.eq(0).data('category-code') : '';
        },
        /**
         * 특정 카테고리에 선택 효과를 준다
         * @param categoryCode {string} 프로젝트 카테고리 코드
         */
        changeSelectedCategory: function(categoryCode) {
            var $categoryList = $('#category_list');
            $categoryList.find('li').each(function() {
                if ($(this).data('category-code') === categoryCode) {
                    $(this).addClass('on');
                } else {
                    $(this).removeClass('on');
                }
            });

            if ($categoryList.find('li.on').length < 1) {
                $categoryList.children('li:first').addClass('on');
            }
        }
    }
}

// tab
function tab(){

    var tabOn = $(".list_cate .on a, .menu_list .on a"),
        btnSelect = $(".btn_select"),
        tabOnName = tabOn.text();
    btnSelect.html(tabOnName);

    function tabmenu(){
        var ww = $(window).width(),
            tab = $(".list_cate, .menu_list"),
            tabMenuItem = $(".list_cate li, .menu_list li"),
            tabMenu = $(".list_cate .link_cate, .menu_list li a, .list_cate a"),
            tabFstMenu = $(".list_cate li:first-child .link_cate, .menu_list li:first-child a");

        if(tab.parents().hasClass("section_part")){
            //console.log('dddd')
            if(ww < 1024 || isMobile.any){
                btnSelect.on("click",function() {

                    tab.toggleClass("open");
                    event.stopPropagation();

                });
                tabMenu.on("click",function() {
                    var tabName = $(this).text();
                    btnSelect.html(tabName);
                    tabMenuItem.removeClass("on");
                    $(this).parent(tabMenuItem).addClass("on");
                    tab.removeClass("open");
                });
            }else{

                tabMenu.on("click",function() {
                    tabMenuItem.removeClass("on");
                    $(this).parent(tabMenuItem).addClass("on");
                });

            }
        }else if(tab.parents().hasClass("select_cate")){

            //console.log('dddd')
            if(ww < 768 || isMobile.any){
                btnSelect.on("click",function() {

                    tab.toggleClass("open");
                    event.stopPropagation();

                });
                tabMenu.on("click",function() {
                    var tabName = $(this).text();
                    btnSelect.html(tabName);
                    tabMenuItem.removeClass("on");
                    $(this).parent(tabMenuItem).addClass("on");
                    tab.removeClass("open");
                });
            }else{

                tabMenu.on("click",function() {
                    tabMenuItem.removeClass("on");
                    $(this).parent(tabMenuItem).addClass("on");
                });

            }
        } else {
            //console.log(ww);
            if(ww < 640 || isMobile.any){
                btnSelect.on("click",function() {

                    tab.toggleClass("open");
                    event.stopPropagation();

                });
                tabMenu.on("click",function() {
                    var tabName = $(this).text();
                    btnSelect.html(tabName);
                    tabMenuItem.removeClass("on");
                    $(this).parent(tabMenuItem).addClass("on");
                    tab.removeClass("open");
                });
            }else{

                tabMenu.on("click",function() {
                    tabMenuItem.removeClass("on");
                    $(this).parent(tabMenuItem).addClass("on");
                });

            }
        }
    }

    $(window).on({
        load : function() {
            tabmenu();
        }
    });
}


</script>


<main id="omcContainer" class="cont_support">
			
		    <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		   <div class="cMain">
		   <article id="mContent" class="project_list">
		        	<h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
		            <div class="box_category">
		                <span class="screen_out">카테고리</span>
		                <button type="button" class="btn_select">전체<span class="ico_comm"></span></button>
		                 <ul id="category_list" class="list_cate" role="tablist">
		                    <li class="on" role="tab" data-category-code="0">
		                   		<a class="link_cate">전체</a>
		                    </li>
		                    
                            <li role="tab" data-category-code="1">
                            	<a class="link_cate">테크</a>
                            </li>
		                    
                            <li role="tab" data-category-code="2">
                            		<a class="link_cate">홈/리빙</a>
                            </li>
		                    
                            <li role="tab" data-category-code="3">
                            		<a class="link_cate">푸드</a>
                           </li>
		                    
                           <li role="tab" data-category-code="4">
                                    <a class="link_cate">패션</a>
                           </li>
		                    
                           <li role="tab" data-category-code="5">
                                    <a class="link_cate">디자인</a>
                          </li>
		                    
                          <li role="tab" data-category-code="6">
                                    <a class="link_cate">출판</a>
                          </li>
		                    
                         <li role="tab" data-category-code="7">
                                    <a class="link_cate">취미</a>
                         </li>
		                    
                        <li role="tab" data-category-code="8">
                                    <a class="link_cate">공연/컬쳐</a>
                        </li>
		                    
                        <li role="tab" data-category-code="9">
                                    <a class="link_cate">캠페인</a>
                        </li>
                        
		                </ul>
		               
		                <script>
						function changeCategory(category){							
							location.replace("category/"+category); 
						}
						</script>
		                
		                
		            </div>
					<div class="wrap_project">
			            <!-- 2017-08-07 수정 클래스 추가 -->
			            <div class="box_select">
							<select id="sorting" name="sorting" class="select_sort" title="후원형 프로젝트 목록 분류">                                
                                <option value="impendence">마감임박순</option>
                                <option value="latest">최신순</option>
                                <option value="largest">인기순</option>
								
				        		
				        		
				        	</select>
			        	</div>

			        	<!-- // 2017-08-07 수정 클래스 추가 -->
			        	<span class="screen_out">프로젝트 목록</span>
			            <ul class="list_prj" id="listPrj">




   			<span class="first_page_flag" style="display: none;"></span>


			<div class="page-wrapper" style="display: block; overflow: auto;">
			
			
				<c:forEach items="${list}" var="list">
			
			
					<li class="project_card reward_project_card" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					    <div class="project_card_inner">
					        <a href="reward?item_code=<c:out value="${list.ITEM_CODE}"/>" class="project_detail_link" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					            <span class="project_thumbnail" style="background-image:url('${pageContext.request.contextPath}/uploads/reward/<c:out value="${list.MAIN_IMAGE}')"/>"></span>
					        </a>
					        <div class="project_card_info">
					            <span class="screen_out">프로젝트 제목</span>
					            <h3 class="project_name">
					                <a href="reward?item_code=<c:out value="${list.ITEM_CODE}"/>" class="project_detail_link" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					               		   <c:out value="${list.TITLE}"/>
					                </a>
					            </h3>
					            <p class="project_simple_text">
					                <span class="screen_out">프로젝트 설명</span>
					                <c:out value="${list.SUMMARY}"/>
					                
					            </p>
					            
								<span class="user_profile">
								    <span class="img_profile clear_empty_picture">
								                <img src="${pageContext.request.contextPath}/uploads/member/profile/<c:out value="${list.IMAGE}"/>">						            
								    </span>
								    <span class="txt_name"><c:out value="${list.NICKNAME}"/></span>
								</span>
							
					            <span class="project_category">
					                <span class="screen_out">카테고리</span>
					             	   <c:out value="${list.CAT_NAME}"/>
					            </span>
					        </div>
					      	<div class="project_state">			                
			                    <span class="total_amount">
			                        <span class="screen_out">현재 참여금액</span>
			                        <c:out value="${list.NOW_SUM}"/>원
			                    </span>
			                    <div class="project_card_graph">
			                        <span class="screen_out">참여율</span>
			                        
			                        
			                        <c:choose>
										<c:when test="${list.PERCENT > 100}">
									    		<span class="bar_graph" style="width:100%;"></span>
										</c:when>
										<c:otherwise>
									   		<span class="bar_graph" style="width:<c:out value="${list.PERCENT}"/>%;"></span>
										</c:otherwise>
									</c:choose>
									
			                        
			                        <span class="invest_rate">
			                            <c:out value="${list.PERCENT}"/>%
			                        </span>
			                    </div>	                  
					        </div>
					    </div>
					</li>			    
			</c:forEach>
			
			</div>
			<form class="payload" style="display: none;">
			    <input class="total_project_count" type="hidden" value="1504">
			</form>

		</ul>
  	</div>
  </article>
</main>


 <%@include file="footer.jsp" %>
		
