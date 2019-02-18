<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>


<main id="omcContainer" class="cont_support">
			
		    <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		   <div class="cMain">
		   <article id="mContent" class="project_list">
		        	<h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
		            <div class="box_category">
		                <span class="screen_out">카테고리</span>
		                <button type="button" class="btn_select">전체<span class="ico_comm"></span></button>
		                <ul id="category_list" class="list_cate" role="tablist">		                    
		                   <c:forEach items="${list_category}" var="list_category">
								<li <c:if test="${catcode eq list_category.CAT_CODE}">class="on"</c:if>><a href="/../earlybud/category/${list_category.CAT_CODE}" data-filter="*">${list_category.CAT_NAME}</a></li>
						</c:forEach>
		               </ul>
		               
		               
		        <%
					int count = 0;
				%>
		                
		            </div>
					<div class="wrap_project">
			            <!-- 2017-08-07 수정 클래스 추가 -->
			            <div class="box_select">
							<select id="order_code" id="order_code" class="select_sort" onchange="chageSelect()">                                
                                <option <c:if test="${order eq 'start_date desc'}">selected</c:if> value="start_date desc">최신순</option>
					  			<option <c:if test="${order eq 'apply_qty/success_qty desc'}">selected</c:if> value="apply_qty/success_qty desc">인기순</option>
                                <option <c:if test="${order eq 'target_date'}">selected</c:if> value="target_date">마감 임박순</option>
						  	</select>
						  	
						  	<select name="end_code" id="end_code" class="select_sort" onchange="chageSelect()">
							  <option value="'0'" <c:if test="${end eq '0'}">selected</c:if>>진행중</option>
							  <option value="'2', '1'" <c:if test="${end ne '0'}">selected</c:if>>종료</option>
							</select>
			        	</div>
			        	
			        	<!-- // 2017-08-07 수정 클래스 추가 -->
			        	<span class="screen_out">프로젝트 목록</span>
			            <ul class="list_prj" id="listPrj">




   			<span class="first_page_flag" style="display: none;"></span>


			<div id=mycontainer class="page-wrapper" style="display: block; overflow: auto;">
			
			
				<c:forEach items="${list}" var="list">
			
			
					<li class="project_card reward_project_card" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					    <div class="project_card_inner">
					        <a href="../reward?item_code=<c:out value="${list.ITEM_CODE}"/>" class="project_detail_link" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					            <span class="project_thumbnail" style="background-image:url('${pageContext.request.contextPath}/uploads/reward/<c:out value="${list.MAIN_IMAGE}')"/>"></span>
					        </a>
					        <div class="project_card_info">
					            <span class="screen_out">프로젝트 제목</span>
					            <h3 class="project_name">
					                <a href="../reward?item_code=<c:out value="${list.ITEM_CODE}"/>" class="project_detail_link" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
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
			                    <c:choose>
			                   	   <c:when test="${list.TIME > 0}">
								    	 <span class="funding_type"><c:out value="${list.TIME}"/>일 남음</span>       
									</c:when>											
									<c:when test="${list.TIME < 0}">
											 <span class="funding_type">종료</span>  												
									</c:when>
									<c:otherwise>
									   	<span class="funding_type">오늘자정</span>		
									</c:otherwise>
			                    </c:choose>			                    			                                    
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
  </div>
</main>


 <%@include file="footer.jsp" %>
		
