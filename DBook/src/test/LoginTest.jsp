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

</head>
<body>
<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>

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
				var gender = response.kakao_account['gender']
            	
            	console.log(JSON.stringify(response));
				console.log(id);
				console.log(profile_image);
				console.log(thumbnail_image);
				console.log(nickname);
				console.log(age_range);
				console.log(gender);
				
				post_to_url("${pageContext.request.contextPath}/main/home.do",
							{ "id": id
							, "profile_image":profile_image
							, "thumbnail_image":thumbnail_image
							, "nickname":nickname
							, "age_range":age_range
							, "gender":gender
							   });
         })
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
    
</script>

</body>
</html>