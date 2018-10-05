<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 222px;
	margin: 0 auto 100px;
	margin-top: 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
	border-radius: 3px;
	padding: 45px;
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
	border-radius: 3px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #f56a6a;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	margin-bottom: 15px;
	border-radius: 3px;
}

#kakao-login-btn {
	padding: 0px;
	margin: 0px;
}

.form button:hover, .form button:active, .form button:focus {
	background: #f35656;
}

.form .message {
	margin: 10px 0 0 0;
	color: #3d4449;
	font-size: 12px;
}

.form .message a {
	color: #f56a6a;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}

body {
	/* 	  background: #76b852; /* fallback for old browsers
	  background: -webkit-linear-gradient(right, #ff9494, #f56a6a);
	  background: -moz-linear-gradient(right, #ff9494, #f56a6a);
	  background: -o-linear-gradient(right, #ff9494, #f56a6a);
	  background: linear-gradient(to left, #ff9494, #f56a6a);
	  font-family: "Roboto", sans-serif;
	  -webkit-font-smoothing: antialiased;
	  -moz-osx-font-smoothing: grayscale; */
	
}

html {
	background: url(../../../DBook/resources/images/login_background.jpg) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

body h1 {
	color: #FFFFFF;
	text-align: center;
	font-size: 60pt;
	margin: 0px;
	text-shadow: 3px 3px #000000;
}

hr {
	color: #FFFFFF;
	border-style: solid;
	margin: 0 50px 0;
	font-style: oblique;
}

strong{
	color: #f56a6a
}

.login-form button {
	margin-bottom: 15px;
}

#pink {
	width: 30%;
	height: 100%;
	background: #76b852; /* fallback for old browsers background :
	-webkit-linear-gradient( right, #ff9494, #f56a6a);
	background: -moz-linear-gradient(right, #ff9494, #f56a6a);
	background: -o-linear-gradient(right, #ff9494, #f56a6a);
	background: linear-gradient(to left, #ff9494, #f56a6a);
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	background: -o-linear-gradient(right, #ff9494, #f56a6a);
	background: linear-gradient(to left, #ff9494, #f56a6a);
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
}
</style>
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

<script type='text/javascript'>

	$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});

	function post_to_url(path, params, method) {
	    method = method || "post"; 
	
	    var form = document.createElement("form");
	    form.setAttribute("method", method);
	    form.setAttribute("action", path);
	 
	    for(var key in params) {
	        var hiddenField = document.createElement("input");
	        hiddenField.setAttribute("type", "hidden");
	        hiddenField.setAttribute("name", key);
	        hiddenField.setAttribute("value", params[key]);
	 
	        form.appendChild(hiddenField);
	    }
	 
	    document.body.appendChild(form);
	    form.submit();
	}
	
	// 사용할 앱의 JavaScript 키
    Kakao.init('70b6dca9bb4272bcec25e71ea7ab0125');
    // 카카오 로그인 버튼을 생성
   	Kakao.Auth.createLoginButton({
   	      container: '#kakao-login-btn',
   	      success: function(authObj) {
   	      console.log(JSON.stringify(authObj));
	        // 로그인 성공시 사용자 정보 가져오기
	        Kakao.API.request({
	            url: '/v2/user/me',
	            success: function(response) {
	            	
					var id = response.id;
					var profile_image = response.properties['profile_image'];
					var thumbnail_image = response.properties['thumbnail_image'];
					var nickname = response.properties['nickname'];
					var age_range = response.kakao_account['age_range'];
					var gender = response.kakao_account['gender'];
	            	var has_gender = response.kakao_account['has_gender'];
	            	var has_age_range = response.kakao_account['has_age_range'];
					
	            	console.log(JSON.stringify(response));
					console.log(id);
					console.log(profile_image);
					console.log(thumbnail_image);
					console.log(nickname);
					console.log(age_range);
					console.log(gender);
					console.log(has_gender);
					console.log(has_age_range);
					
					
					if(has_gender == false || has_age_range == false){
	
						if(has_gender == false){
							gender = 'none';
						}
						
						if(has_age_range == false){
							age_range = 'none';
						}
					} 
					post_to_url("${pageContext.request.contextPath}/user/login.do",
							{ "id": id
							, "profile_image":profile_image
							, "thumbnail_image":thumbnail_image
							, "nickname":nickname
							, "age_range":age_range
							, "gender":gender
							});
	            	}
	        });
	      },
	      fail: function(err) {
	         alert(JSON.stringify(err));
	      }
	    });
    
</script>

</body>
</html>