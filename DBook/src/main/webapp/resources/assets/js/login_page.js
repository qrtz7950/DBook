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
					post_to_url("../user/login.do",
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