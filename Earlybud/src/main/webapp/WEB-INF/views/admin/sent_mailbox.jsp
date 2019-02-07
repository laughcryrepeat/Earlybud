<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.*,com.earlybud.model.Message"%>
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
        <div class="col-md-3">
            <button type="button" class="mb-2 btn btn-primary btn-block" id="emailBtn1">전체공지 메일쓰기</button>
          <div class="tile p-0">
            <h4 class="tile-title folder-head">Folders</h4>
            <div class="tile-body">
              <ul class="nav nav-pills flex-column mail-nav">
                <li class="nav-item active"><a class="nav-link" href="#"><i class="fa fa-inbox fa-fw"></i>
                Inbox<span class="badge badge-pill badge-primary float-right">12</span></a>      
                </li>
                  
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-envelope-o fa-fw"></i> Sent</a></li>
                  
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
                <button id="emailBtn2" class="btn btn-primary btn-sm" type="button"><i class="fa fa-reply"></i></button>
                <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-refresh"></i></button>
              </div>
            </div>
            <div class="table-responsive mailbox-messages">
              <table class="table table-hover">
                 
                <tbody>
                  <c:forEach items="${listSentMsg}" var="Msg"> 
                  <tr>
                    <td>
                      <div class="animated-checkbox">
                        <label>
                          <input class="msg_check" type="checkbox"><span class="label-text"> </span>
                        </label>
                      </div>
                    </td>
                    <td class="user_email">${Msg.reciever}</td>
                      <td><a data-toggle="modal" data-backdrop="static" data-keyboard="false" href="#msg_modal" class="request"><b>${Msg.content}</b></a></td>
                    <td><i class="fa fa-envelope-o"></i></td>
                    <td>${Msg.send_date}</td>
                  </tr>
                  </c:forEach>            
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
  
  <!-- Modal -->
  <div class="modal fade" id="sendEmail" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">관리자이메일보내기</h4>
        <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
          <p>Send Email</p>
            <form name="email_modal" method="post" action="email/send">
                <input id="mailfrom" name="mailfrom" class="form-control" value="admin.email" type="hidden" >
                <div class="form-group">
                  <label class="control-label">제목</label>
                  <input id="mailsubject" name="mailsubject" class="form-control" type="text" >
                </div>
                <div class="form-group">
                  <label class="control-label">Email</label>
                  <input id="mailto" name="mailto" class="form-control" type="text" >
                </div>
                <div class="form-group">
                  <label class="control-label">참조 CC</label>
                  <input id="mailcc" name="mailcc" class="form-control" type="text" >
                </div>
                <div class="form-group">
                  <label class="control-label">숨은참조 BCC</label>
                  <input id="mailbcc" name="mailbcc" class="form-control" type="text" >
                </div>
                <div class="form-group">
                  <label class="control-label">내용</label>
                  <textarea id="mailcontent" name="mailcontent" class="form-control" rows="4" ></textarea>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" id="send" class="btn btn-default" >Send</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal2 -->
  <div class="modal fade" id="msg_modal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal2 content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">답변 메세지보기</h4>
        <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
          <p>Reply Message</p>
            <form name="msg_form" method="post" action="email/send">
                <div class="form-group">
                  <label class="control-label">From</label>
                  <input id="msg_from" name="msg_from" class="form-control" readonly >
                </div>
                <div class="form-group">
                  <label class="control-label">Date</label>
                  <input id="msg_date" name="msg_date" class="form-control" readonly >
                </div>
                <div class="form-group">
                  <label class="control-label">내용</label>
                  <textarea id="msg_content" name="msg_content" class="form-control" rows="4" readonly></textarea>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" id="reply" class="btn btn-default" data-dismiss="modal" >Reply</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
    <!-- Page specific javascript-->
    <script type="text/javascript">
        var modal1 = $("#sendEmail");
        var modal2 = $("#msg_modal");
        var email = {};
      $(document).ready(function(){
          $("#emailBtn1").click(function(){
              modal1.find("input").val("");
              modal1.find("textarea").val("");
              $("#sendEmail").modal({backdrop: 'static', keyboard: false});
              
         }); 
          
          $("#reply").click(function(){
              $('#mailto').val(msg_form.msg_from.value);
              $("#sendEmail").modal({backdrop: 'static', keyboard: false});
         });
          
         $("#send").click(function(){
              var serializeArray = modal1.serializeArray();
              console.log("before send email");
              $.ajax({
                method: 'post',
                url: '../admin/send_mail', 
                data: serializeArray,
                success: function(){
                    console.log("success");
                }
            });
            modal1.modal("hide");
        });  
      });  
      $(".request").click(function(){
    	  var tr = $(this).parent().parent();
  			var sender = tr.find("td").eq(1).text();
  			var content = tr.find("td").eq(2).text();
  			var senddate = tr.find("td").eq(4).text();
  			console.log("sender에 담긴 값 : "+sender);
          $('#msg_from').val(sender);
          $('#msg_date').val(senddate);
          $('#msg_content').val(content);
      });
    </script>
  </body>
</html>