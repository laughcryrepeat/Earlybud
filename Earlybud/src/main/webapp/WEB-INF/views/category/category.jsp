<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<style>
	#myselect select {
	  width: 120px;
	  padding: .8em .5em;
	  font-family: inherit;
	  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;  
	  -webkit-appearance: none;
	     -moz-appearance: none;
	          appearance: none;
	  border: 0;
	  border-radius: 0px;
	}
	#myselect select:focus{
	  outline: 0;
	}


#myselect .checks {position: relative;}

#myselect .checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}
#myselect .checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
#myselect .checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 21px;  /* 체크박스의 너비를 지정 */
  height: 21px;  /* 체크박스의 높이를 지정 */
  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
#myselect .checks input[type="checkbox"] + label:active:before,
#myselect .checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

#myselect .checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
  content: '\2714';  /* 체크표시 유니코드 사용 */
  color: #99a1a7;
  text-shadow: 1px 1px #fff;
  background: #e9ecee;
  border-color: #adb8c0;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
}

#myselect .checks.small input[type="checkbox"] + label {
  font-size: 12px;
}

#myselect .checks.small input[type="checkbox"] + label:before {
  width: 17px;
  height: 17px;
  line-height: 17px;
  font-size: 11px;
}

#myselect .checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
}
#myselect .checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #6cc0e5;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}

#myselect .checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #6cc0e5 #6cc0e5 transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}

#myselect .no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {
  /*content:"\2713";*/
  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #6cc0e5;
  text-align: center;
  border: 1px solid #6cc0e5;
}
</style>

<main id="omcContainer" class="cont_support">
			
		    <h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		   <div class="cMain">
		   <article id="mContent" class="project_list">
		        	<h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
		            <div class="box_category">
		                <span class="screen_out">카테고리</span>
		                <button type="button" class="btn_select">전체<span class="ico_comm"></span></button>
		                <ul id="category_list" class="list_cate" role="tablist">	
		               		<li <c:if test="${empty catcode}">class="on"</c:if>><a href="/../earlybud/category" data-filter="*">전체</a></li>
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
	            <div id="myselect" style="display:inline-block;vertical-align:middle">
					<select name="order_code" id="order_code" onchange="chageSelect()">                            
                        <option <c:if test="${order eq 'OPENDATE desc'}">selected</c:if> value="OPENDATE desc">최신순</option>
			  			<option <c:if test="${order eq 'CUR_SUM/TARGET_SUM desc'}">selected</c:if> value="CUR_SUM/TARGET_SUM desc">인기순</option>
                        <option <c:if test="${order eq 'CLOSINGDATE'}">selected</c:if> value="CLOSINGDATE">마감 임박순</option>
				  	</select>				  	
				  	<select name="end_code" id="end_code" onchange="chageSelect()">
					  <option value="'0'" <c:if test="${end eq '0'}">selected</c:if>>진행중</option>
					  <option value="'2', '1'" <c:if test="${end ne '0'}">selected</c:if>>종료</option>
					</select>
	        	</div>			        	
			    
			    <script type="text/javascript">
					var orderValue = "OPENDATE desc";
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
						
						var data = {};
					    data["first"] = 1;
					    data["category"] ="${catcode}";
					    data["order_code"] = orderValue;
					    data["end_code"] = endValue;
						$.ajax({
	      		 			type : 'post',  // 요청 method 방식
	      		 			url : 'category/update',// 요청할 서버의 url
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
	      		 							var percent = this.list.PERCENT;
	      		 							var SUCCESS = '0';
	      		 							if(this.list.SUCCESS=='2'){
	      		 								SUCCESS="<span class="funding_type">실패</span>";
	      		 							}else if(this.list.SUCCESS=='1'){
	      		 								SUCCESS="<span class="funding_type">성공</span>";
	      		 							}else{
														SUCCESS="<span class=\"funding_type\">"															
														+this.list.TIME
														+"일 남음"
														+"</span>";
	      		 							}
	      		 							var percent2 = percent;
	      		 							if(percent>=100){
	      		 								percent2 = 100;
	      		 							}
	      		 							
	      		 							str+="<li class=\"project_card reward_project_card\" data-project-seq=\""+this.list.ITEM_CODE+"\" data-page-number=\"1\">"	
			      		 						 +"<div class=\"project_card_inner\">"
			      							  	 +"<a href=\"/../earlybud/reward?item_code=\""+this.list.ITEM_CODE+"\" class=\"project_detail_link\" data-project-seq=\""
			      							  	 +this.list.ITEM_CODE+"\" data-page-number=\"1\">"
			      								 +"<span class=\"project_thumbnail\" style=\"background-image:url('${pageContext.request.contextPath}/uploads/reward/"
			      							  	 +this.list.MAIN_IMAGE
			      							  	 +"\"></span></a><div class=\"project_card_info\">"
			      							     +"<span class=\"screen_ou\t\">프로젝트 제목</span><h3 class=\"project_name\">"
			      							     +"<a href=\"/../earlybud/reward?item_code=\""
			      							     +this.list.ITEM_CODE
			      							     +"\" class=\"project_detail_link\" data-project-seq=\""
			      							     +this.list.ITEM_CODE
			      							     +"\" data-page-number=\"1\">"
			      							     +this.list.TITLE
			      							     +"</a></h3><p class=\"project_simple_text\"><span class=\"screen_out\">프로젝트 설명</span>"
			      							     +this.list.SUMMARY
			      							     +"</p>"
			      							   +"<span class=\"user_profile\"><span class=\"img_profile clear_empty_picture\"><img src=\"${pageContext.request.contextPath}/uploads/member/profile/"
			   								+this.list.IMAGE
			   								+"\"></span><span class=\"txt_name\">"
			   								+this.list.NICKNAME
			   								+"</span></span><span class=\"project_category\"><span class=\"screen_out\">카테고리</span>"
			   								+this.list.CAT_NAME
			   					            +"</span></div><div class=\"project_state\"><span class=\"total_amount\"><span class=\"screen_out\">현재 참여금액</span>"
			   			                    +this.list.NOW_SUM
			   			                    +"원</span><div class=\"project_card_graph\"><span class=\"screen_out\">참여율</span>"
			   			                    +"<span class=\"bar_graph\" style=\"width:"+percent2+"%;\"></span>"
			   			                    +"<span class=\"invest_rate\">"+percent+"%</span></div>"
	      		 							+SUCCESS
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
			<form class="payload" style="display: none;">
			    <input class="total_project_count" type="hidden" value="1504">
			</form>

		</ul>
  	</div>
  </article>
  </div>
</main>

				

 <%@include file="footer.jsp" %>
		
