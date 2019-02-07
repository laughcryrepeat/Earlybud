<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>


<main id="omcContainer" class="cont_support">
			
		    <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		   
		   <article id="mContent" class="project_list">
		        	<h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
		            <div class="box_category">
		                <span class="screen_out">카테고리</span>
		                <button type="button" class="btn_select">전체(1503)</button>
		                <ul id="category_list" class="list_cate" role="tablist">
		                    <li class="on" role="tab">
		                        <a class="link_cate">전체<span class="num_count">(1503)</span></a>
		                    </li>
		                    
                                <li role="tab" data-category-code="CATE_0001">
                                    <a class="link_cate">
                                        공간/리빙<span class="num_count">(127)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0002">
                                    <a class="link_cate">
                                        사회이슈<span class="num_count">(264)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0003">
                                    <a class="link_cate">
                                        교육/출판<span class="num_count">(178)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0005">
                                    <a class="link_cate">
                                        문화예술<span class="num_count">(294)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0006">
                                    <a class="link_cate">
                                        지역재생<span class="num_count">(259)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0007">
                                    <a class="link_cate">
                                        푸드<span class="num_count">(217)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0010">
                                    <a class="link_cate">
                                        테크<span class="num_count">(76)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0012">
                                    <a class="link_cate">
                                        뷰티/패션<span class="num_count">(44)</span>
                                    </a>
                                </li>
		                    
                                <li role="tab" data-category-code="CATE_0013">
                                    <a class="link_cate">
                                        여행<span class="num_count">(44)</span>
                                    </a>
                                </li>
		                    
		                </ul>
		            </div>
					<div class="wrap_project">
			            <!-- 2017-08-07 수정 클래스 추가 -->
			            <div class="box_select">
							<select id="sorting" name="sorting" class="select_sort" title="후원형 프로젝트 목록 분류">
                                <option value="highest">펀딩금액순</option>
                                <option value="impendence">마감임박순</option>
                                <option value="latest">최신순</option>
                                <option value="largest">참여자순</option>
								
				        		
				        		
				        	</select>
			        	</div>

			        	<!-- // 2017-08-07 수정 클래스 추가 -->
			        	<span class="screen_out">프로젝트 목록</span>
			            <ul class="list_prj" id="listPrj">




   			<span class="first_page_flag" style="display: none;"></span>


			<div class="page-wrapper" style="display: block; overflow: auto;">
			
					<li class="project_card reward_project_card" data-project-seq="상품번호" data-page-number="1">
					    <div class="project_card_inner">
					        <a href="/reward/상품번호" class="project_detail_link" data-project-seq="상품번호" data-page-number="1">
					            <span class="project_thumbnail" style="background-image:url('/uploads/reward/REWARD_1.jpg')"></span>
					        </a>
					        <div class="project_card_info">
					            <span class="screen_out">프로젝트 제목</span>
					            <h3 class="project_name">
					                <a href="/reward/6410" class="project_detail_link" data-project-seq="상품번호" data-page-number="1">
					               		     일상을 담다, 여행을 담다. &lt;스튜디오 1895&gt; 
					                </a>
					            </h3>
					            <p class="project_simple_text">
					                <span class="screen_out">프로젝트 설명</span>
					                1895년 파리로 떠나는 시간여행
					            </p>
					            
								<span class="user_profile">
								    <span class="img_profile clear_empty_picture">
								                <img src="/uploads/member/profile/MEMBER_1.jpg">						            
								    </span>
								    <span class="txt_name">잇다</span>
								</span>
							
					            <span class="project_category">
					                <span class="screen_out">카테고리</span>
					             	   문화예술
					            </span>
					        </div>
					      	<div class="project_state">			                
			                    <span class="total_amount">
			                        <span class="screen_out">현재 참여금액</span>
			                        4,432,008원
			                    </span>
			                    <div class="project_card_graph">
			                        <span class="screen_out">참여율</span>
			                        <span class="bar_graph" style="width:56%;"></span>
			                        <span class="invest_rate">
			                            56%
			                        </span>
			                    </div>	                  
					        </div>
					    </div>
					</li>			    
			
			</div>
			<form class="payload" style="display: none;">
			    <input class="total_project_count" type="hidden" value="1504">
			</form>

		</ul>
  	</div>
  </article>
</main>


 <%@include file="footer.jsp" %>
		
