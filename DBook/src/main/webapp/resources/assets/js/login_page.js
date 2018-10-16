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

function signCheckForm() {
	
	console.log('checkForm()진입');
		
	if(isNull($('#sign_id'), '아이디를 입력해주세요')) {
		return false;
	}
	
	if($('#sign_id').val().length > 15) {
		alert('아이디는 15자 이내만 가능합니다');
		$('#sign_id').focus();
		return false;
	}
	
	if(idState == '중복된 ID입니다'){
		alert(idState);
		$('#sign_id').focus();
		return false;
	}
	
	if(isNull($('#sign_nickname'), '닉네임를 입력해주세요')) {
		return false;
	}
	
	if($('#sign_nickname').val().length > 15) {
		alert('닉네임는 15자 이내만 가능합니다');
		$('#sign_nickname').focus();
		return false;
	}
	
	if(isNull($('#sign_password'), '패스워드를 입력해주세요')) {
		return false;
	}
	
	if($('#sign_password').val().length > 15) {
		alert('패스워드는 15자 이내만 가능합니다');
		$('#sign_password').focus();
		return false;
	}
	
	if(isNull($('#sign_age_range'), '나이를 입력해주세요')) {
		return false;
	}
	
	var age = $('#sign_age_range');
	
	if(isNaN(age.val())){
		alert('나이 입력란에는 숫자만 입력 가능합니다');
		age.focus();
		return false;
	}
	
	if(age.val() <= 0 || age.val() > 100){
		alert('1~100 사이의 숫자를 입력해주세요');
		age.focus();
		return false;
	}
	
	if($('#sign_password').val() != $('#sign_password_check').val()){
		alert('입력한 패스워드와 패스워드 확인 일치한지 확인하세요');
		$('#sign_password_check').focus();
		return false;
	}
	
	return true;
}

function isNull(obj, msg) {
	if(obj.val() == '') {
		alert(msg);
		obj.focus();
		return true;
	}
	return false;
}

var idState = '';

function callback(data) {
	
	idState = data;
	
	if($("#sign_id").val() != ''){
		if(idState == "사용하셔도 좋은 ID입니다"){
			$('#OKicon').removeClass('hidden');
			$('#NOicon').addClass('hidden');
		} else {
			$('#NOicon').removeClass('hidden');
			$('#OKicon').addClass('hidden');
		}
	} else {
		$('#OKicon').addClass('hidden');
		$('#NOicon').addClass('hidden');
	}
}

$(document).ready(function() {
	
	$("#sign_id").keyup(function(){

		var word=$("#sign_id").val();

		$.ajax({
			delay: 500,
			url : "../user/idDupCheck.json",
			data : {
				id:word
			},
			dataType : "json",
			success : callback
		});
	});
	
	$('#signIn').click(function() {
		
		if(signCheckForm()){
			
			var age = $('#sign_age_range').val();
			
			age = age - (age % 10);
			age = age + "~" + (age + 9);
			
			var id = $('#sign_id').val();
			var password = $('#sign_password').val();
			var gender = $('#sign_gender').val();
			var profile_image = "none";
			var thumbnail_image = "none";
			var nickname = $('#sign_nickname').val();
			
			$.ajax({
				success : function(){
					post_to_url("../user/signIn.do",
							{ "id":id
						, "profile_image":profile_image
						, "thumbnail_image":thumbnail_image
						, "password":password
						, "nickname":nickname
						, "age_range":age
						, "gender":gender
							});
						  }
				  });
		}
	});
	
	$('#logIn').click(function() {
		
		var id = $('#id').val();
		var password = $('#password').val();
		
		$.ajax({
			success : function(){
				post_to_url("../user/login.do",
						{ "id":id
						, "password":password
						});
			}
		});
	});
});

/////////////////////////
//    카카오 로그아웃		 ////
//Kakao.Auth.logout()////
/////////////////////////

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
				post_to_url("../user/kakaoLogin.do",
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
   	
   	