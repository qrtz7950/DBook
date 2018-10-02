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

<h1></h1>
<h1></h1>
<h1></h1>
</body>
</html>