<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.*,java.sql.Date,com.earlybud.model.Item"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="header.jsp"%>

  <!--  MAIN CONTENT START HERE  -->    
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> Ancore List Page</h1>
          <p>판매자에게 앵콜판매 이메일</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">Ancore List Page</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <!-- CONTENT START HERE -->
                <div class="product-status mg-b-15">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="product-status-wrap">
                                    <h4>Ancore Item List</h4>
                                    <div class="asset-inner">
                                        <table class="table table-hover sortable paginated" id="tbl">
	                                        <thead>
	                                            <tr>
		                                            <th>상품코드</th>
	                                                <th>Image</th>
	                                                <th>타이틀</th>
	                                                <th>상태</th>
	                                                <th>판매자</th>
	                                                <th>달성률(%)</th>
	                                                <th>현재금액</th>
	                                                <th>목표금액</th>
	                                                <th>관리자승인</th>
	                                            </tr>
	                                        </thead>
                     <!-------------------------------------------------->                       
                                            <tbody>
                                            <c:forEach items="${EncoreItems}" var="Item" >
	                                            <tr>
	                                                <td>${Item.item_code}</td>
	                                                <td><img src="${pageContext.request.contextPath}/uploads/reward/${Item.main_image}" alt="" /></td>
	                                                <td><a href="../reward?item_code=${Item.item_code}">${Item.title}</a></td>
	                                                <td>
	                                                    <button class="ds-setting encore-apply">앵콜가능</button>
	                                                </td>
	                                                <td>${Item.email}</td>
	                                                <td><fmt:formatNumber value="${Item.cur_sum/Item.target_sum * 100 }" pattern=".00" />%</td>
	                                                <td><fmt:formatNumber value="${Item.cur_sum}" type="number"/></td>
	                                                <td><fmt:formatNumber value="${Item.target_sum}" type="number"/></td>
	                                                <td>
	                                                	<c:choose>
	                                                	<c:when test="${Item.success eq 2}">
	                                                    	<button data-toggle="tooltip" title="suggest" class="pd-setting-ed approve_btn"><i class="fa fa-check" aria-hidden="true"></i></button>
	                                                    </c:when>
	                                                    </c:choose>
	                                                </td>
	                                            </tr>
	                                          </c:forEach>
	                 <!-------------------------------------------------->                                           
	                                            <tr>
	                                                <td>2</td>
	                                                <td><img src="${pageContext.request.contextPath}/images/admin/book-2.jpg" alt="" /></td>
	                                                <td>Quality Bol pen</td>
	                                                <td>
	                                                    <button class="ps-setting encore-due">앵콜대기중</button>
	                                                </td>
	                                                <td>디자인상품</td>
	                                                <td>0%</td>
	                                                <td>0만원</td>
	                                                <td>1700만원</td>
	                                                <td>
	                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
	                                                    <button data-toggle="tooltip" title="Email" class="pd-setting-ed"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
	                                                </td>
	                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="custom-pagination">                       
                                            <button class="page-link" id="previous">Previous</button>
                                            <button class="page-link" id="next">Next</button>
                                            <span class="text-right"><span class="text-muted mr-2"></span><span class="text-muted">Total - ${EncoreItems.size()} 아이템   </span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
              
              </div>
          </div>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="${pageContext.request.contextPath}/js/admin/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/main.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/pagingItems.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="${pageContext.request.contextPath}/js/admin/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Google analytics script-->
    <script type="text/javascript">
    $('.approve_btn').on('click',function(){
    	var row = $(this).parent().parent().find("td");
    	var code = row.eq(0).text();
    	var seller = row.eq(4).text();
		var item = row.eq(2).text();
    	console.log("this itemCode: "+code);
    	$.ajax({
            method: 'post',
            url: '../admin/suggestAncore', 
            data: "item_code="+code,
            success: function(){
                console.log("suggested!!");
                //row.eq(3).find("button").text("오픈예정");
                row.eq(3).find("button").remove();
                //row.eq(3).find("button").addClass("ps-setting due");
                row.eq(8).hide();
              //console.log("판매자 이메일: "+seller);
                $.ajax({
            		type:'post',
                    url: '/earlybud/send_mail',
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify({
                    	"mailto": seller,
                    	"mailsubject": "얼리버드 상품 관리자 앵콜 승인 되었습니다.",
                    	"mailcontent": "상품 "+ item +" 앵콜상품으로 수정 하시면 다시 등록됩니다. 마이페이지에서 확인가능합니다."
                    	}),
                    success: function(){
                        console.log("확인 메일&메세지 보냄");
                    }
                });
            }
  	  });
    });
    </script>
  </body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.*,java.sql.Date,com.earlybud.model.Item"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="header.jsp"%>

  <!--  MAIN CONTENT START HERE  -->    
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> Ancore List Page</h1>
          <p>판매자에게 앵콜판매 이메일</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">Ancore List Page</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <!-- CONTENT START HERE -->
                <div class="product-status mg-b-15">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="product-status-wrap">
                                    <h4>Ancore Item List</h4>
                                    <div class="asset-inner">
                                        <table class="table table-hover sortable paginated" id="tbl">
	                                        <thead>
	                                            <tr>
		                                            <th>상품코드</th>
	                                                <th>Image</th>
	                                                <th>타이틀</th>
	                                                <th>상태</th>
	                                                <th>판매자</th>
	                                                <th>달성률(%)</th>
	                                                <th>현재금액</th>
	                                                <th>목표금액</th>
	                                                <th>관리자승인</th>
	                                            </tr>
	                                        </thead>
                     <!-------------------------------------------------->                       
                                            <tbody>
                                            <c:forEach items="${EncoreItems}" var="Item" >
	                                            <tr>
	                                                <td>${Item.item_code}</td>
	                                                <td><img src="${pageContext.request.contextPath}/uploads/reward/${Item.main_image}" alt="" /></td>
	                                                <td><a href="../reward?item_code=${Item.item_code}">${Item.title}</a></td>
	                                                <td>
	                                                    <button class="ds-setting encore-apply">앵콜가능</button>
	                                                </td>
	                                                <td>${Item.email}</td>
	                                                <td><fmt:formatNumber value="${Item.cur_sum/Item.target_sum * 100 }" pattern=".00" />%</td>
	                                                <td><fmt:formatNumber value="${Item.cur_sum}" type="number"/></td>
	                                                <td><fmt:formatNumber value="${Item.target_sum}" type="number"/></td>
	                                                <td>
	                                                	<c:choose>
	                                                	<c:when test="${Item.success eq 2}">
	                                                    	<button data-toggle="tooltip" title="suggest" class="pd-setting-ed approve_btn"><i class="fa fa-check" aria-hidden="true"></i></button>
	                                                    </c:when>
	                                                    </c:choose>
	                                                </td>
	                                            </tr>
	                                          </c:forEach>
	                 <!-------------------------------------------------->                                           
	                                            <tr>
	                                                <td>2</td>
	                                                <td><img src="${pageContext.request.contextPath}/images/admin/book-2.jpg" alt="" /></td>
	                                                <td>Quality Bol pen</td>
	                                                <td>
	                                                    <button class="ps-setting encore-due">앵콜대기중</button>
	                                                </td>
	                                                <td>디자인상품</td>
	                                                <td>0%</td>
	                                                <td>0만원</td>
	                                                <td>1700만원</td>
	                                                <td>
	                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
	                                                    <button data-toggle="tooltip" title="Email" class="pd-setting-ed"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
	                                                </td>
	                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="custom-pagination">                       
                                            <button class="page-link" id="previous">Previous</button>
                                            <button class="page-link" id="next">Next</button>
                                            <span class="text-right"><span class="text-muted mr-2"></span><span class="text-muted">Total - ${EncoreItems.size()} 아이템   </span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
              
              </div>
          </div>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="${pageContext.request.contextPath}/js/admin/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/main.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/pagingItems.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="${pageContext.request.contextPath}/js/admin/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Google analytics script-->
    <script type="text/javascript">
    $('.approve_btn').on('click',function(){
    	var row = $(this).parent().parent().find("td");
    	var code = row.eq(0).text();
    	var seller = row.eq(4).text();
		var item = row.eq(2).text();
    	console.log("this itemCode: "+code);
    	$.ajax({
            method: 'post',
            url: '../admin/suggestAncore', 
            data: "item_code="+code,
            success: function(){
                console.log("suggested!!");
                //row.eq(3).find("button").text("오픈예정");
                row.eq(3).find("button").remove();
                //row.eq(3).find("button").addClass("ps-setting due");
                row.eq(8).hide();
              //console.log("판매자 이메일: "+seller);
                $.ajax({
            		type:'post',
                    url: '/earlybud/send_mail',
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify({
                    	"mailto": seller,
                    	"mailsubject": "얼리버드 상품 관리자 앵콜 승인 되었습니다.",
                    	"mailcontent": "상품 "+ item +" 앵콜상품으로 수정 하시면 다시 등록됩니다. 마이페이지에서 확인가능합니다."
                    	}),
                    success: function(){
                        console.log("확인 메일&메세지 보냄");
                    }
                });
            }
  	  });
    });
    </script>
  </body>
>>>>>>> branch 'master' of https://github.com/laughcryrepeat/Earlybud.git
</html>