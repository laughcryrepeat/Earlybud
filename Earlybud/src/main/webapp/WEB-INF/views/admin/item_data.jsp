<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.*,java.sql.Date,com.earlybud.model.Item"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="header.jsp"%>

  <!--  MAIN CONTENT START HERE  -->    
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> Item List Page</h1>
          <p>상품 리스팅 승인,반려. 상품검색</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">Item List Page</a></li>
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
                                    <h4>Item List</h4>
                                    <div class="add-product">
                                        <a href="#">Add Library</a>
                                    </div>
                                    <div class="asset-inner">
                                        <table>
                                            <tr>
                                                <th>No</th>
                                                <th>Image</th>
                                                <th>상품명</th>
                                                <th>상태</th>
                                                <th>카테고리</th>
                                                <th>달성률(%)</th>
                                                <th>현재금액</th>
                                                <th>목표금액</th>
                                                <th>관리자승인</th>
                                            </tr>
                        <!-------------------------------------------------->
                        				<c:forEach items="${listItem}" var="Item">
                                            <tr><td>${Item.item_code}</td>
                                                <td><img src="${pageContext.request.contextPath}/uploads/reward/${Item.main_image}" alt="" /></td>
                                                <td>${Item.title}</td>
                                                <td>
 <!-- 날짜계산 -->                                                   
<fmt:parseDate value="${Item.opendate}" var="strPlanDate" pattern="yyyy-MM-dd"/>
<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
<fmt:parseDate value="${Item.closingdate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
<fmt:parseDate value="${now}" var="nowDateformat" pattern="yyyy-MM-dd" />
<fmt:parseNumber value="${nowDateformat.time / (1000*60*60*24)}" integerOnly="true" var="nowDate"></fmt:parseNumber>
<c:choose>
	<c:when test = "${endDate - nowDate < 0}">
		<button class="dp-setting">Finished</button>
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test = "${strDate - nowDate >= 0}">
				<c:choose>
					<c:when test = "${Item.admincall eq 0}">
						<button class="ds-setting">Await Approval</button>
					</c:when>
					<c:otherwise>
						<button class="ps-setting">Due</button>
					</c:otherwise>
				</c:choose>
			</c:when>
			<c:otherwise>
				<button class="pd-setting">Active</button>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>
<!-- ${nowDate}/${endDate}/${strDate}  -->                                                                                       
                                                </td>
                                                <td>${Item.cat_name}</td>
                                                <td><fmt:formatNumber value="${Item.cur_sum/Item.target_sum * 100 }" pattern=".00" />%</td>
                                                <td><fmt:formatNumber value="${Item.cur_sum}" type="number"/></td>
                                                <td><fmt:formatNumber value="${Item.target_sum}" type="number"/></td>
                                                <td>
                                                	<c:choose>
                                                	<c:when test="${Item.admincall eq 0}">
                                                    	<button data-toggle="tooltip" title="Approve" class="pd-setting-ed approve_btn"><i class="fa fa-check" aria-hidden="true"></i></button>
                                                    	<button data-toggle="tooltip" title="Reject" class="pd-setting-ed reject_btn"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></button>
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
                                                    <button class="ps-setting">Due</button>
                                                </td>
                                                <td>디자인상품</td>
                                                <td>0%</td>
                                                <td>0만원</td>
                                                <td>1700만원</td>
                                                <td>
                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
                                                    <button data-toggle="tooltip" title="Reject" class="pd-setting-ed"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td><img src="${pageContext.request.contextPath}/images/admin/book-3.jpg" alt="" /></td>
                                                <td>Box of pendrive</td>
                                                <td>
                                                    <button class="ds-setting">Await Approval</button>
                                                </td>
                                                <td>디자인상품</td>
                                                <td>0%</td>
                                                <td>0만원</td>
                                                <td>1500만원</td>
                                                <td>
                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
                                                    <button data-toggle="tooltip" title="Reject" class="pd-setting-ed"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td><img src="${pageContext.request.contextPath}/images/admin/book-4.jpg" alt="" /></td>
                                                <td>Quality Bol pen</td>
                                                <td>
                                                    <button class="dp-setting">Finished</button>
                                                </td>
                                                <td>디자인상품</td>
                                                <td>20%</td>
                                                <td>240만원</td>
                                                <td>1200만원</td>
                                                <td>
                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
                                                    <button data-toggle="tooltip" title="Reject" class="pd-setting-ed"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td><img src="${pageContext.request.contextPath}/images/admin/book-1.jpg" alt="" /></td>
                                                <td>Web Development Book</td>
                                                <td>
                                                    <button class="pd-setting">Active</button>
                                                </td>
                                                <td>출판</td>
                                                <td>10%</td>
                                                <td>180만원</td>
                                                <td>1800만원</td>
                                                <td>
                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
                                                    <button data-toggle="tooltip" title="Reject" class="pd-setting-ed"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td><img src="${pageContext.request.contextPath}/images/admin/book-2.jpg" alt="" /></td>
                                                <td>Quality Bol pen</td>
                                                <td>
                                                    <button class="ps-setting">Due</button>
                                                </td>
                                                <td>디자인상품</td>
                                                <td>0%</td>
                                                <td>0만원</td>
                                                <td>1000만원</td>
                                                <td>
                                                    <button data-toggle="tooltip" title="Approve" class="pd-setting-ed"><i class="fa fa-check" aria-hidden="true"></i></button>
                                                    <button data-toggle="tooltip" title="Reject" class="pd-setting-ed"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="custom-pagination">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                        </ul>
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
    <!-- The javascript plugin to display page loading on top-->
    <script src="${pageContext.request.contextPath}/js/admin/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Google analytics script-->
    <script type="text/javascript">
    $('.approve_btn').on('click',function(){
    	var row = $(this).parent().parent().find("td");
    	var code = row.eq(0).text();
    	console.log("this itemCode: "+code);
    	$.ajax({
            method: 'post',
            url: '../admin/approveItem', 
            data: "item_code="+code,
            success: function(){
                console.log("update admincall!!");
                row.eq(8).hide();
            }
  	  });
    });
    
	$('.reject_btn').on('click',function(){
		var code = $(this).parent().parent().find("td").eq(0).text();
    	console.log("this itemCode: "+code);
    	$.ajax({
            method: 'post',
            url: '../admin/rejectItem', 
            data: "item_code="+code,
            success: function(){
                console.log("update reject admincall!!");
            }
  	  });
    });
    
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
  </body>
</html>