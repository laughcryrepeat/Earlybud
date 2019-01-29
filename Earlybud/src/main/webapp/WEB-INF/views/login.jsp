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
            <form action="/" method="post">
              <div class="field-wrap">
                <label>
                  이름<span class="req">*</span>
                </label>
                <input type="text"required name="name" autocomplete="off" />
              </div>
            <div class="field-wrap">
              <label>
                이메일<span class="req">*</span>
              </label>
              <input type="email"required name="password" autocomplete="off"/>
            </div>
            <div class="field-wrap">
              <label>
                비밀번호<span class="req">*</span>
              </label>
              <input name="password" type="password"required autocomplete="off"/>
            </div>
            <button id="join" type="submit" class="button button-block" onclick="if(!memberSubmit(this.form)){return false;}"/>회원가입</button>
            <a class="button1 button-block" href="javascript:kakao()"><img class="img" src="images/login/kakaotalk.png">카카오톡으로 시작하기</a>
            </form>
          </div>
          <div id="login">
            <form action="/earlybud/login" method="post">
              <div class="field-wrap">
              <label>
                이메일<span class="req">*</span>
              </label>
              <input type="email"required name="username" autocomplete="off"/>
            </div>
            <div class="field-wrap">
              <label>
                비밀번호<span class="req">*</span>
              </label>
              <input type="password"required name="password" autocomplete="off"/>
            </div>
            <p class="forgot"><a href="#">비밀번호를 잊으셨나요?</a></p>
            <button class="button button-block"/>Log In</button>
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
            </form> 
          </div>
      </div><!-- tab-content -->
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="js/login/index.js"></script>
  <script type="text/javascript">
  	Kakao.init('deaa60a748706f6b5879d19dfb26bf56');
  	function kakao(){
  		Kakao.Auth.loginForm({
  			success: function(authObj) {
  				Kakao.API.request({
  			         url: '/v2/user/me',
  			         success: function(res) {
  			        	alert(JSON.stringify(res));
  			         },
  			         fail: function(error) {
  			           alert(JSON.stringify(error));
  			         }
  			       });
  			     },
  			 fail: function(err) {
  			       alert(JSON.stringify(err));
  			}
  		});
  	};
  </script>
</body>
</html>
