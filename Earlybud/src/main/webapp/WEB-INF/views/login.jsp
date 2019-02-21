<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
  <title>EarlyBud 로그인</title>
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/login/style.css">
</head>

<body>
  <script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
  <c:out value="${error}"/><c:out value="${logout}"/>
  <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      <div class="tab-content">
          <div id="signup">
            <h1>아직 회원이 아니신가요?</h1>
            <form action="/earlybud/join" method="post">
              <div class="field-wrap">
                <label>
                  닉네임<span class="req">*</span>
                </label>
                <input type="text"required name="nickname" autocomplete="off" />
              </div>
            <div class="field-wrap">
              <label>
                이메일<span class="req">*</span>
              </label>
              <input type="email"required name="email"/>
            </div>
            <div class="field-wrap">
              <label>
                비밀번호<span class="req">*</span>
              </label>
              <input type="password"required name="pwd" autocomplete="off"/>
            </div>
            <button id="join" type="submit" class="button button-block" onclick="if(!memberSubmit(this.form)){return false;}"/>회원가입</button>
            <a class="button1 button-block" href="https://kauth.kakao.com/oauth/authorize?client_id=e6572958e72ab54e8d05db03cfd4ac7e&redirect_uri=http://localhost:8080/earlybud/oauth&response_type=code&scope=account_email
"><img class="img" src="images/login/kakaotalk.png">카카오로 회원가입</a>
            </form>
          </div>
          <div id="login">
            <form action="/earlybud/login" method="post">
              <div class="field-wrap">
              <label>
                이메일<span class="req">*</span>
              </label>
              <input type="email" name="username"/>
            </div>
            <div class="field-wrap">
              <label>
                비밀번호<span class="req">*</span>
              </label>
              <input type="password" name="password"/>
            </div>
            <p class="forgot"><a href="#">비밀번호를 잊으셨나요?</a></p>
              <a class="button1 button-block" href="https://kauth.kakao.com/oauth/authorize?client_id=e6572958e72ab54e8d05db03cfd4ac7e&redirect_uri=http://localhost:8080/earlybud/oauth&response_type=code&scope=account_email
"><img class="img" src="images/login/kakaotalk.png">카카오로 로그인</a>
            <button class="button button-block"/>Log In</button>
            	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
            
			</script>
            </form> 
          </div>
      </div><!-- tab-content -->
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="js/login/index.js"></script>
<!-- <script type="text/javascript">
  function id_check(str){
	   var request = $.ajax({url:"join", method:"GET", data:{id:str}, dataType:"html"});
	   request.done(function(data){
		   $("#id_ok").html(data);
	   });
  }
  </script> -->
</body>
</html>