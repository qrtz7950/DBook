<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
.layer-wrap {
	display: none;
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	text-align: center;
	background-color: rgba(0, 0, 0, 0.5);
}

.layer-wrap:before {
	content: "";
	display: inline-block;
	height: 100%;
	vertical-align: middle;
	margin-right: -.25em;
}

.pop-layer {
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: auto;
	background-color: #fff;
	border: 5px solid #F56A6A;
	z-index: 10;
	font-family: Tahoma;
}

.pop-layer .pop-container {
	padding: 20px 25px;
}

.pop-layer .btn-r {
	width: 100%;
	margin: 10px 0 20px;
	padding-top: 10px;
	border-top: 1px solid #DDD;
	text-align: center;
}

a.btn-layerClose {
	display: inline-block;
	height: 25px;
	padding: 0 14px 0;
	border: 1px solid rgba(210, 215, 217, 0.75);
	background-color: #F56A6A;
	font-size: 13px;
	color: #fff;
	line-height: 25px;
}

#infoForm{
	text-align: left;
	margin-left: 21%;
}

/* 
.layerPopUp {
	position: fixed;
	width: 80%;
	left: 50%;
	margin-left: -40%; /* half of width */
	height: 60%;
	top: 50%;
	margin-top: -20%; /* half of height */
	overflow: auto;
	text-align: center;
	vertical-align: middle;
	/* decoration */
	border: 3px solid #F56A6A;
	background-color: #FAA9A9;
	padding: 1em;
	box-sizing: border-box;
}

.hidden {
	display: none;
}
 */
 
</style>
</head>
<body>
<!-- 	
	<div class="layer-wrap">
		<div class="layerPopUp hidden">
			<div class="infoForm">
				서비스를 이용하기 위하여 성별과 나이 정보가 필요합니다<br><br>
				<form action="" method="post">
					<select id="age_range" name="age_range">
						<option selected value="0~9">0~9</option>
						<option value="10~19">10~19</option>
						<option value="20~29">20~29</option>
						<option value="30~39">30~39</option>
						<option value="40~49">40~49</option>
						<option value="50~59">50~59</option>
						<option value="60~69">60~69</option>
						<option value="70~79">70~79</option>
						<option value="80~89">80~89</option>
						<option value="90~99">90~99</option>
					</select>
					<select id="gender" name="gender">
						<option selected value="male">남자</option>
						<option value="female">여자</option>
					</select>
					<button id="userInfo">확인</button>
				</form>
			</div>
		</div>
	</div>
 -->
 
 <!-- <a href="#layer" class="btn-layer">레이어 팝업보기</a> -->
 	
 
	<div id="layer" class="layer-wrap">
		<div class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
					서비스를 이용하기 위하여 성별과 나이 정보가 필요합니다<br><br>
					
					<div id="infoForm">
						나이&nbsp;<select id="age_range" name="age_range">
									<option selected value="0~9">0~9</option>
									<option value="10~19">10~19</option>
									<option value="20~29">20~29</option>
									<option value="30~39">30~39</option>
									<option value="40~49">40~49</option>
									<option value="50~59">50~59</option>
									<option value="60~69">60~69</option>
									<option value="70~79">70~79</option>
									<option value="80~89">80~89</option>
									<option value="90~99">90~99</option>
								</select>
						성별&nbsp;<select id="gender" name="gender">
									<option selected value="male">남자</option>
									<option value="female">여자</option>
								</select>
					</div>
					<div class="btn-r">
						<a id="userInfo" href="#" class="btn-layerClose"><strong>확인</strong></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script>
	$( document ).ready(function() {
		alert('!');
		$('#layer').fadeIn();
		//$('.layerPopUp').removeClass('hidden');
		$('#userInfo').click(function() {
		    $.ajax({
		        type: "POST",
		        url: "${pageContext.request.contextPath}/user/update.do",
		        data: {    
		        	"id" : '${user.id}',
		        	"nickname" : '${user.nickname}',
		            "profile_image" : '${user.profile_image}',
		            "thumbnail_image" : '${user.thumbnail_image}',
		            "age_range" : $('#age_range').val(),
		            "gender" : $('#gender').val()
		        },
		        success: function() {
		            $('.layer-wrap').fadeOut();
		        }, error: function() {
		            $('.layer-wrap').fadeOut();
		        }, always: function() {
		        	$('.layer-wrap').fadeOut();
		        }
		    });
		});
	});

</script>

</body>
</html>