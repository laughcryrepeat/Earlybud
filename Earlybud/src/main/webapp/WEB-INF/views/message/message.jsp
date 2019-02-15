<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html> 
<html lang="ko">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<head>
<%
	String sender = null;
	if (session.getAttribute("sender") != null) {
		sender =  (String) session.getAttribute("sender");
	}
	String receiver = null;
	if (request.getParameter("receiver") != null){
		receiver = (String) request.getParameter("receiver");
	}
%>
<script type = "text/javascript">
	function autoClosingAlert(selector, delay){
		var alert = $(selector).alert();
		window.setTimeout(function(){alert.hide()}, delay);
	}
	function submitFunction(){
		var sender = '<%= sender %>';
		var receiver = '<%= receiver %>';
		var content = $('#content');
		$.ajax({
			type: "POST",
			url: "./chatSubmitServlet",
			data: {
				sender: encodeURIComponent(sender),
				receiver: encodeURIComponent(receiver),
				content: encodeURIComponent(content)
			},
			success: function(result){
				if(result == 1){
					aucoClosingAlert('#successMessage', 2000);
				}else if(result == 0){
					aucoClosingAlert('#dangerMessage', 2000);
				}else{
					aucoClosingAlert('#warningMessage', 2000);
				}
			}
		})
		$('#chatContent').val('');
	}
</script>

<link href="css/message/message.css" type="text/css" rel="stylesheet">

</head>
<body>
<script type = "text/javascript" src = "/resources/js/messageList/message.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var operForm = $("#operForm");
		
		$("button[data-oper='modify]").on("click", function(e){
			operForm.attr("action", "/message/modify").submit();
		});
	})
</script>
<script type = "text/javascript" src="/resources/js/messageList/message.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		console.log(messageListService);
	});
	
</script>


<script type = "text/javascript" src="/resources/js/messageList/message.js"></script>
<script type="text/javascript">
	console.log("==========");
	console.log("JS TEST");
	var bnoValue = '<c:out value="${message.message_code}"/>';
	
	//for message add test
	messageService.add(
		{message:"JS TEST", sender:"red@gmail.com", message_code:message_code}
		,
		function(result){
			alert("RESULT: "+result);
		}
	);
	
</script>

<div class="container">
<h3 class=" text-center">EarlyBud 판매자 문의</h3>
<div class="messaging">
      <div class="inbox_msg">
        <div class="inbox_people">
          <div class="headind_srch">
            <div class="recent_heading">
              <h4>Recent</h4>
            </div>
            <div class="srch_bar">
              <div class="stylish-input-group">
                <input type="text" class="search-bar"  placeholder="Search" >
                <span class="input-group-addon">
                <button type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
                </span> </div>
            </div>
          </div>
          
          <div class="inbox_chat">
          <c:forEach items="${listM}" var="listM">

			            <div class="chat_list active_chat">
			              <div class="chat_people">
			                <div class="chat_img"> <img src="${pageContext.request.contextPath}/images/like/<c:out value="${listM.IMAGE}"/>" alt="sunil"> </div>
			                <div class="chat_ib">
			                  <h5>${listM.NICKNAME}</h5>

			                  <plow>${listM.INFO}</plow>
<%-- 			                  <p>${listM.INFO}</p> --%>
			                </div>
			              </div>
			            </div>
          </c:forEach>
<%-- 			            <c:if test=${msgSent.MESSAGE_CODE_SEQ lt msgReceived.MESSAGE_CODE_SEQ}> --%>

          </div>
        </div>
        
        
        <div class="mesgs">
          <div class="msg_history">
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="images/message/ky.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>테스트입니닷</p>
                  <span class="time_date"> 03:57 PM    |    June 9</span></div>
              </div>
            </div>
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Test which is a new approach to have all
                  solutions</p>
                <span class="time_date"> 11:01 AM    |    June 9</span> </div>
            </div>
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test, which is a new approach to have</p>
                  <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
              </div>
            </div>
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Apollo University, Delhi, India Test</p>
                <span class="time_date"> 11:01 AM    |    Today</span> </div>
            </div>
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>We work directly with our designers and suppliers,
                    and sell direct to you, which means quality, exclusive
                    products, at a price anyone can afford.</p>
                  <span class="time_date"> 11:01 AM    |    Today</span></div>
              </div>
            </div>
          </div>
          <div class="type_msg">
            <div class="input_msg_write">
              <input type="text" class="content" placeholder="Type a message" />
              <button class="msg_send_btn" type="button" onclick="submitFunction();"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
            </div>
          </div>
        </div>
      </div>
      
      
      <p class="text-center top_spac"> Design by <a target="_blank" href="#">Sunil Rajput</a></p>
      
    </div></div>
    </body>
</html>