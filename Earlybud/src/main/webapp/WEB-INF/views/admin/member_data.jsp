<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="header.jsp"%>
      
<!-- CONTENT START HERE -->
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Member Data Table</h1>
          <p>회원 조회, 관리, 강제 탈퇴</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active"><a href="#">Member Data Table</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="memberTable">
                <thead>
                  <tr>
                  	<th></th>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Region</th>
                    <th>Age</th>
                    <th>Start date</th>
                    <th>Buying</th>
                  </tr>
                </thead>
        <!-- no need tbody tag when using DataTables -->
                <tbody>
                  <tr>
                  	<td></td>
                    <td>Tiger Nixon</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td>61</td>
                    <td>2011/04/25</td>
                    <td>$320,800</td>
                  </tr>
                  <tr>
                  	<td></td>
                    <td>Garrett Winters</td>
                    <td>Accountant</td>
                    <td>Tokyo</td>
                    <td>63</td>
                    <td>2011/07/25</td>
                    <td>$170,750</td>
                  </tr>
                  <tr>
                  	<td></td>
                    <td>Ashton Cox</td>
                    <td>Junior Technical Author</td>
                    <td>San Francisco</td>
                    <td>66</td>
                    <td>2009/01/12</td>
                    <td>$86,000</td>
                  </tr>
                  <tr>
                  	<td></td>
                    <td>Cedric Kelly</td>
                    <td>Senior Javascript Developer</td>
                    <td>Edinburgh</td>
                    <td>22</td>
                    <td>2012/03/29</td>
                    <td>$433,060</td>
                  </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </main>
    
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css">
    <!-- Essential javascripts for application to work-->
    <script src="${pageContext.request.contextPath}/js/admin/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="${pageContext.request.contextPath}/js/admin/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js" charset="UTF-8"></script>
    <!-- Google analytics script-->
    <script type="text/javascript">
    $(document).ready(function() {
        $('#memberTable').DataTable( {
            columnDefs: [ {
                orderable: false,
                className: 'select-checkbox',
                targets:   0
            } ],
            select: {
                style:    'os',
                selector: 'td:first-child'
            },
            order: [[ 1, 'asc' ]]
        } );
    } );
    </script>
  </body>
</html>