<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<jsp:include page="../include/CSS.jsp"></jsp:include>
	
	<title>DBook</title>
	
	<script>
	
	$(document).ready(function(){
		
		$("#category1" option).each(function(){
			
			if($(this).val()=="${requestScope.categories[0]}"){
				$(this).attr()
			}
			
		});	
	});
	
	</script>
</head>
<body>
	<!-- Wrapper -->
			<button id="showLeft" style="position: fixed; right: 0px; z-index: 100;">Menu</button>
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
							<jsp:include page="../include/HeaderMenu.jsp"/>
							
							<!-- Section -->
								<section style="padding-top: 15px;">
									
									<select style="width:auto;" >
										<option>${requestScope.categories["0"]}</option>
										<option>국내도서</option>
										<option>국외도서</option>
									</select>
									${requestScope.categories["0"]} > ${requestScope.categories["1"]}
									
								</section>					

							<a href="${pageContext.request.contextPath}/login/login.do">카톡로그인</a>

						</div>
					</div>
			</div>
					
				<!-- Sidebar -->
					<jsp:include page="../include/SlideSideMenu.jsp"></jsp:include>
					

		<!-- Scripts -->
			<jsp:include page="../include/JS.jsp"></jsp:include>
			
</body>
</html>