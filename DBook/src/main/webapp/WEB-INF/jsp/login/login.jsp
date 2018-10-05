<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/login_page.css" />
</head>
<body>
	<div class="login-page">
	  <h1><strong>DB</strong>ook</h1>
	  <hr>
	  <div class="form">
	    <form class="register-form">
	      <input type="text" placeholder="name"/>
	      <input type="password" placeholder="password"/>
	      <input type="text" placeholder="email address"/>
	      <button>create</button>
	      <p class="message">Already registered? <a href="#">Sign In</a></p>
	    </form>
	    <form class="login-form">
	      <input type="text" placeholder="username"/>
	      <input type="password" placeholder="password"/>
	      <button id="asd">login</button>
	      <a id="kakao-login-btn"></a>
	      <p class="message">Not registered? <a href="#">Create an account</a></p>
	    </form>
	  </div>
	</div>
<%-- <a id="kakao-login-btn"></a>
<a href="${pageContext.request.contextPath}/user/logout.do">DBook 로그아웃</a>
<a href="http://developers.kakao.com/logout">카카오 로그아웃</a> --%>

<!-- Script -->

<script src="${pageContext.request.contextPath}/resources/assets/js/login_page.js"></script>

</body>
</html>