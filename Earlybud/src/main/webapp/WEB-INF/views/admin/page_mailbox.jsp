<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="header.jsp"%>
      
<!-- CONTENT START HERE -->
      
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-envelope-o"></i> A Messagebox</h1>
          <p>A Messagebox</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">A Messagebox</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-3"><a class="mb-2 btn btn-primary btn-block" href="">Compose Mail</a>
          <div class="tile p-0">
            <h4 class="tile-title folder-head">Folders</h4>
            <div class="tile-body">
              <ul class="nav nav-pills flex-column mail-nav">
                <li class="nav-item active"><a class="nav-link" href="#"><i class="fa fa-inbox fa-fw"></i> Inbox<span class="badge badge-pill badge-primary float-right">12</span></a></li>
                  
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-envelope-o fa-fw"></i> Sent</a></li>
                  
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-filter fa-fw"></i> Junk <span class="badge badge-pill badge-primary float-right">8</span></a></li>
                  
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-trash-o fa-fw"></i> Trash</a></li>
                  
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <div class="tile">
            <div class="mailbox-controls">
              <div class="animated-checkbox">
                <label>
                  <input type="checkbox"><span class="label-text"></span>
                </label>
              </div>
              <div class="btn-group">
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-trash-o"></i></button>
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-reply"></i></button>
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-share"></i></button>
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-refresh"></i></button>
              </div>
            </div>
            <div class="table-responsive mailbox-messages">
              <table class="table table-hover">
                <tbody>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star-o"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td><i class="fa fa-paperclip"></i></td>
                    <td>8 mins ago</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td><b>A report on some good project</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td></td>
                    <td>15 mins ago</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star-o"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td><i class="fa fa-paperclip"></i></td>
                    <td>30 mins ago</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td></td>
                    <td>25 December</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star-o"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td><i class="fa fa-paperclip"></i></td>
                    <td>20 December</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td></td>
                    <td>20 December</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td><i class="fa fa-paperclip"></i></td>
                    <td>20 December</td>
                  </tr>
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td><a href="#"><i class="fa fa-star-o"></i></a></td>
                    <td><a href="read-mail.html">John Doe</a></td>
                    <td class="mail-subject"><b>A report on project almanac</b> - Lorem ipsum dolor sit amet adipisicing elit...</td>
                    <td></td>
                    <td>20 December</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="text-right"><span class="text-muted mr-2">Showing 1-15 out of 60</span>
              <div class="btn-group">
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-chevron-left"></i></button>
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-chevron-right"></i></button>
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