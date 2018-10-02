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
/* basic */
.layerPopUp {
    position: fixed;
    width: 80%;
    left: 50%;
    margin-left: -40%; /* half of width */
    height: 60%;
    top: 50%;
    margin-top: -20%; /* half of height */
    overflow: auto;
	text-align:center;
	
    /* decoration */
    border: 3px solid #F56A6A;
    background-color: #FAA9A9;
    padding: 1em;
    box-sizing: border-box;
}
.hidden {
    display: none;
}
</style>
	<c:if test="${not empty user.id and empty user.gender or empty user.age_range}">
		$( document ).ready(function() {
			alert('!');
			$('.layerPopUp').removeClass('hidden');
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
			            alert('정보 등록 성공');
			        }, error: function() {
			            alert('정보 등록 실패');
			        }
			    });
			});
		});
	</c:if>
<script>

</script>
</head>
<body>
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
<h1></h1>
<h1></h1>
<h1></h1>
</body>
</html>