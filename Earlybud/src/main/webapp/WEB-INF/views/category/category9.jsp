<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.earlybud.vo.CategoryVO"%>
<%@ page import="com.earlybud.model.Category"%>

<%@include file="header.jsp" %>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

	<a style="display:scroll;position:fixed;bottom:0px;right:0px;" href="#" title="맨 위로"><img src="images/category/totop.png" border="0"></a>
	
	<main id="omcContainer" class="cont_support">
		    <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		   <div class="cMain">
		   <article id="mContent" class="project_list">
		        	<h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
		            <div class="box_category">
		                <span class="screen_out">카테고리</span>
		                <button type="button" class="btn_select">전체<span class="ico_comm"></span></button>
		                <ul id="category_list" class="list_cate" role="tablist">	
		               		<li <c:if test="${catcode eq 0}">class="on"</c:if>><a href="/../earlybud/category" data-filter="*">전체</a></li>
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
					<select name="order_code" id="order_code" class="select_sort"onchange="changeSelect()">                            
                        <option <c:if test="${order eq 'OPENDATE desc'}">selected</c:if> value="OPENDATE desc">최신순</option>
			  			<option <c:if test="${order eq 'CUR_SUM/TARGET_SUM desc'}">selected</c:if> value="CUR_SUM/TARGET_SUM desc">인기순</option>
                        <option <c:if test="${order eq 'CLOSINGDATE'}">selected</c:if> value="CLOSINGDATE">마감 임박순</option>
				  	</select>				  	
				  	<select name="end_code" id="end_code" class="select_sort" onchange="changeSelect()">
					  <option value="0" <c:if test="${end eq '0'}">selected</c:if>>진행중</option>
					  <option value="2, 1" <c:if test="${end ne '0'}">selected</c:if>>종료</option>
					</select>
	        	</div>			        	
			    
			    <script type="text/javascript">
					var orderValue = "CUR_SUM/TARGET_SUM desc";
					var endValue = "'0'";
					var start = ${first};
					function changeSelect(){
						console.log("들어와라");
					    var orderSelect = document.getElementById("order_code");
					    orderValue = orderSelect.options[orderSelect.selectedIndex].value;
					    var orderText = orderSelect.options[orderSelect.selectedIndex].text;
					    
					    var endSelect = document.getElementById("end_code");
					    endValue = endSelect.options[endSelect.selectedIndex].value;
					    var endText = endSelect.options[endSelect.selectedIndex].text;
					    //location.href="?order="+selectValue;
					    
					    var start2 = 0;
						var category2 = ${catcode};
						//var data = JSON.stringify({first:start2,category_code:category2, order_code:orderValue, end_code:endValue});
						
						var data = {}
					    data["first"] = 1;
					    data["catcode"] ="${catcode}";
					    data["order_code"] = orderValue;
					    data["end_code"] = endValue;
						$.ajax({
	      		 			type : 'post',  // 요청 method 방식
	      		 			url : '/../earlybud/category/update',// 요청할 서버의 url
	      		 			headers : {
	      		 				"Content-Type" : "application/json",
	      		 				"X-HTTP-Method-Override" : "POST"
	      		 			},
	      		 			dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
	      		 			data : JSON.stringify(data),
	      		 			//data : param,
	      		 			success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
	      		 				//start+=6;
	      		 				start = ${first};
		      		 			var str = "";
		      		 			console.log("되나?");
		      		 			// 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
		      		 			if(data != ""){
		      		 				//6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
		      		 				$(data).each(
		      		 						// 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
		      		 					////////////////////////////////////////////////////////////여기부터
	      		 						function(){
	      		 							console.log(this);
	      		 							var percent = this.percent;
	      		 							console.log(percent);
	      		 							var success = '0';
	      		 							if(this.success=='2'){
	      		 								success="<span class=\"funding_type\">실패</span>";
	      		 							}else if(this.success=='1'){
	      		 								success="<span class=\"funding_type\">성공</span>";
	      		 							}else{
														success="<span class=\"funding_type\">"															
														+this.time
														+"일 남음"
														+"</span>";
	      		 							}
	      		 							var percent2 = percent;
	      		 							if(percent>=100){
	      		 								percent2 = 100;
	      		 							}
	      		 							
	      		 							str+="<li class=\"project_card reward_project_card\" data-project-seq=\""+this.item_CODE+"\" data-page-number=\"1\">"	
			      		 						 +"<div class=\"project_card_inner\">"
			      							  	 +"<a href=\"/../earlybud/reward?item_code=\""+this.item_CODE+"\" class=\"project_detail_link\" data-project-seq="
			      							  	 +this.item_CODE+"\" data-page-number=\"1\">"
			      								 +"<span class=\"project_thumbnail\" style=\"background-image:url('${pageContext.request.contextPath}/uploads/reward/"
			      							  	 +this.main_IMAGE
			      							  	 +"\"></span></a><div class=\"project_card_info\">"
			      							     +"<span class=\"screen_out\">프로젝트 제목</span><h3 class=\"project_name\">"
			      							     +"<a href=\"/../earlybud/reward?item_code="
			      							     +this.item_CODE
			      							     +"\" class=\"project_detail_link\" data-project-seq=\""
			      							     +this.item_CODE
			      							     +"\" data-page-number=\"1\">"
			      							     +this.title
			      							     +"</a></h3><p class=\"project_simple_text\"><span class=\"screen_out\">프로젝트 설명</span>"
			      							     +this.summary
			      							     +"</p>"
			      							   +"<span class=\"user_profile\"><span class=\"img_profile clear_empty_picture\"><img src=\"${pageContext.request.contextPath}/uploads/member/profile/"
			   								+this.image
			   								+"\"></span><span class=\"txt_name\">"
			   								+this.nickname
			   								+"</span></span><span class=\"project_category\"><span class=\"screen_out\">카테고리</span>"
			   								+this.cat_NAME
			   					            +"</span></div><div class=\"project_state\"><span class=\"total_amount\"><span class=\"screen_out\">현재 참여금액</span>"
			   			                    +this.now_SUM
			   			                    +"원</span><div class=\"project_card_graph\"><span class=\"screen_out\">참여율</span>"
			   			                    +"<span class=\"bar_graph\" style=\"width:"+percent2+"%;\"></span>"
			   			                    +"<span class=\"invest_rate\">"+percent+"%</span></div>"
	      		 							+success
	      		 							+"</div></div></li>";
		                    		});// each
		                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.                      
		                            $("#mycontainer").html(str);
		                            /*$(".add").append("뭐얄ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ");
		                            $("#filter-container").after(str);*/
			                    }// if : data!=null
			                    else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..
			                    	alert("불러올 데이터가 없음");
			                    }// else
	                    	}// success
						});// ajax
					}		
			</script>
			      
			      	
			        	
        	<span class="screen_out">프로젝트 목록</span>
            <ul class="list_prj" id="listPrj">
   			<span class="first_page_flag" style="display: none;"></span>


			<div id="mycontainer" class="page-wrapper" style="display: block; overflow: auto;">			
			
				<c:forEach items="${list}" var="list">			
			
					<li class="project_card reward_project_card" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					    <div class="project_card_inner">
					        <a href="/../earlybud/reward?item_code=<c:out value="${list.ITEM_CODE}"/>" class="project_detail_link" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
					            <span class="project_thumbnail" style="background-image:url('${pageContext.request.contextPath}/uploads/reward/<c:out value="${list.MAIN_IMAGE}')"/>"></span>
					        </a>
					        <div class="project_card_info">
					            <span class="screen_out">프로젝트 제목</span>
					            <h3 class="project_name">
					                <a href="/../earlybud/reward?item_code=<c:out value="${list.ITEM_CODE}"/>" class="project_detail_link" data-project-seq="<c:out value="${list.ITEM_CODE}"/>" data-page-number="1">
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
			
			</div><!-- ENDS Filter container -->

		</ul>
		
		
	<script type="text/javascript">
 
   	 var lastScrollTop = 0;
   	 var easeEffect = 'easeInQuint';
     
    // 1. 스크롤 이벤트 발생
    $(window).scroll(function(){ // ① 스크롤 이벤트 최초 발생
         
        var currentScrollTop = $(window).scrollTop();
        var orderValue = "CUR_SUM/TARGET_SUM desc";
		var endValue = "'0'";
		var start = ${first};
        /* 
            =================   다운 스크롤인 상태  ================
        */
        if( currentScrollTop - lastScrollTop > 0 ){
            // down-scroll : 현재 게시글 다음의 글을 불러온다.
            console.log("down-scroll");
            var category = ${catcode};
			console.log("캣코드는 여기에용 "+"${catcode}");
			var data = JSON.stringify({first:start,catcode:category});
			
            // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
            if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
                 
                // 3. class가 scrolling인 것의 요소 중 마지막인 요소를 선택한 다음 그것의 data-bno속성 값을 받아온다.
                //      즉, 현재 뿌려진 게시글의 마지막 bno값을 읽어오는 것이다.( 이 다음의 게시글들을 가져오기 위해 필요한 데이터이다.)
				moreList();
                // 여기서 class가 listToChange인 것중 가장 처음인 것을 찾아서 그 위치로 이동하자.
             //   var position = $(".project_name:first").offset();// 위치 값                 
                // 이동  위로 부터 position.top px 위치로 스크롤 하는 것이다. 그걸 500ms 동안 애니메이션이 이루어짐.
              //  $('html,body').stop().animate({scrollTop : position.top }, 600, easeEffect);
     
            }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
             
            // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
            lastScrollTop = currentScrollTop;
        }// 다운스크롤인 상태
        
        
        
        
        
                
    })	
    
    function moreList(){
	                var data = {}
	                data["first"] = start;
				    data["catcode"] ="${catcode}";
				    data["order_code"] = orderValue;
				    data["end_code"] = endValue;
				    console.log("catcode: ${catcode}");
	            
	             // 4. ajax를 이용하여 현재 뿌려진 게시글의 마지막 bno를 서버로 보내어 그 다음 20개의 게시물 데이터를 받아온다.
	                $.ajax({
	                    type : 'post',  // 요청 method 방식
	                    url : '/../earlybud/category/add',// 요청할 서버의 url
	                    headers : {
	                        "Content-Type" : "application/json",
	                        "X-HTTP-Method-Override" : "POST"
	                    },
	                    dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
	                    data : JSON.stringify(data),
	                    success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
	  		 				start+=8;
	      		 			var str = "";
	      		 			console.log("되나?");
	      		 			// 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
	      		 			if(data != ""){
	      		 				//6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
	      		 				$(data).each(
	      		 						// 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
	      		 					
	  		 						function(){
	  		 							console.log(this);
	  		 							var percent = this.percent;
	  		 							
	  		 							var success = '0';
	  		 							if(this.success=='2'){
	  		 								success="<span class=\"funding_type\">실패</span>";
	  		 							}else if(this.success=='1'){
	  		 								success="<span class=\"funding_type\">성공</span>";
	  		 							}else{
	  		 									success="<span class=\"funding_type\">"															
												+this.time
												+"일 남음"
												+"</span>";
	  		 							}     		 							      		 							
	  		 							var percent2 = percent;
	  		 							if(percent>=100){
	  		 								percent2 = 100;
	  		 							}
	  		 							
	  		 							str+="<li class=\"project_card reward_project_card\" data-project-seq=\""+this.item_CODE+"\" data-page-number=\"1\">"	
	      		 						 +"<div class=\"project_card_inner\">"
	      							  	 +"<a href=\"/../earlybud/reward?item_code="+this.item_CODE+"\" class=\"project_detail_link\" data-project-seq=\""
	      							  	 +this.item_CODE+"\" data-page-number=\"1\">"
	      								 +"<span class=\"project_thumbnail\" style=\"background-image:url('${pageContext.request.contextPath}/uploads/reward/"
	      							  	 +this.main_IMAGE
	      							  	 +"\"></span></a><div class=\"project_card_info\">"
	      							     +"<span class=\"screen_out\">프로젝트 제목</span><h3 class=\"project_name\">"
	      							     +"<a href=\"/../earlybud/reward?item_code="+this.item_CODE
	      							     +"\" class=\"project_detail_link\" data-project-seq="
	      							     +this.item_CODE
	      							     +" data-page-number=\"1\">"
	      							     +this.title
	      							     +"</a></h3><p class=\"project_simple_text\"><span class=\"screen_out\">프로젝트 설명</span>"
	      							     +this.summary
	      							     +"</p>"
		      							 +"<span class=\"user_profile\"><span class=\"img_profile clear_empty_picture\"><img src=\"${pageContext.request.contextPath}/uploads/member/profile/"
		   								 +this.image
		   								 +"\"></span><span class=\"txt_name\">"
		   								 +this.nickname
		   								 +"</span></span><span class=\"project_category\"><span class=\"screen_out\">카테고리</span>"
		   								 +this.cat_NAME
		   					             +"</span></div><div class=\"project_state\"><span class=\"total_amount\"><span class=\"screen_out\">현재 참여금액</span>"
		   			                     +this.now_SUM
		   			                     +"원</span><div class=\"project_card_graph\"><span class=\"screen_out\">참여율</span>"
		   			                     +"<span class=\"bar_graph\" style=\"width:"+percent2+"%;\"></span>"
		   			                     +"<span class=\"invest_rate\">"+percent+"%</span></div>"
	 		 							 +success
	 		 						     +"</div></div></li>";
	                    });// each
	                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.  
	                            $("#mycontainer").append(str);
	                            /*$(".add").append("뭐얄ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ");
	                            $("#filter-container").after(str);*/
		                    }// if : data!=null
		                    else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..
		                    	alert("더 불러올 데이터가 없습니다.");
		                    }// else
	                	}// success
	                });// ajax
          	  }
    
    
    
    
    
    </script>         	
                        	

		
  	</div>	<!--ENDS WRAPPER -->
  </article>
  </div>
</main>

				

 <%@include file="footer.jsp" %>
		
