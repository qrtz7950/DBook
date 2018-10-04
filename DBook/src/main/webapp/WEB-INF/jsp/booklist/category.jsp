<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/category.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/sideMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/autocomplete.css" />
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	
	<title>DBook</title>
	<style type="text/css">
	
	</style>
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
								<section style="padding-top: 15px; height: auto;">
									<select style="width:auto;" >
										<option>${requestScope.categories["0"]}</option>
										<option>국내도서</option>
										<option>국외도서</option>
									</select>
									${requestScope.categories["0"]} > ${requestScope.categories["1"]}
									<br>
									
									<div id="sideCategoryMenu" style="width: 20%; display: block; float:left;">
										<article>
											<ul>
												<li><a href="${pageContext.request.contextPath}/booklist/category/국내도서>소설.do">소설</a></li>
												<li><a href="#">시/에세이</a></li>
												<li><a href="#">인문</a></li>
												<li><a href="#">가정/생활</a></li>
												<li><a href="#">요리</a></li>
												<li><a href="#">건강</a></li>
												<li><a href="#">취미/스포츠</a></li>
												<li><a href="#">경제/경영</a></li>
												<li><a href="#">자기계발</a></li>
												<li><a href="#">정치/사회</a></li>
												<li><a href="#">정부간행물</a></li>
												<li><a href="#">역사/문화</a></li>
												<li><a href="#">종교</a></li>
												<li><a href="#">예술/대중문화</a></li>
												<li><a href="#">중/고학습</a></li>
												<li><a href="#">기술/공학</a></li>
												<li><a href="#">외국어</a></li>
												<li><a href="#">과학</a></li>
												<li><a href="#">취업/수험서</a></li>
												<li><a href="#">여행</a></li>
												<li><a href="#">컴퓨터/IT</a></li>
												<li><a href="#">잡지</a></li>
												<li><a href="#">사전</a></li>
												<li><a href="#">청소년</a></li>
												<li><a href="#">초등학습</a></li>
												<li><a href="#">유아</a></li>
												<li><a href="#">아동</a></li>
												<li><a href="#">어린이영어</a></li>
												<li><a href="#">만화</a></li>
												<li><a href="#">아동/유아전집</a></li>
												<li><a href="#">한국소개도서</a></li>
												<li><a href="#">PB상품</a></li>
											</ul>
										</article>
									</div>
									
									<div class="posts" style="width: 80%; display: inline-flex; float:left;">
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/pic01.jpg" alt=""></a>
		                                 <h3>Interdum aenean</h3>
		                                 <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
		                                 <ul class="actions">
		                                    <li><a href="#" class="button">More</a></li>
		                                 </ul>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/pic02.jpg" alt=""></a>
		                                 <h3>Nulla amet dolore</h3>
		                                 <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
		                                 <ul class="actions">
		                                    <li><a href="#" class="button">More</a></li>
		                                 </ul>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/pic03.jpg" alt=""></a>
		                                 <h3>Tempus ullamcorper</h3>
		                                 <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
		                                 <ul class="actions">
		                                    <li><a href="#" class="button">More</a></li>
		                                 </ul>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/pic05.jpg" alt=""></a>
		                                 <h3>Feugiat lorem aenean</h3>
		                                 <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
		                                 <ul class="actions">
		                                    <li><a href="#" class="button">More</a></li>
		                                 </ul>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/pic04.jpg" alt=""></a>
		                                 <h3>Sed etiam facilis</h3>
		                                 <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
		                                 <ul class="actions">
		                                    <li><a href="#" class="button">More</a></li>
		                                 </ul>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/pic05.jpg" alt=""></a>
		                                 <h3>Feugiat lorem aenean</h3>
		                                 <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
		                                 <ul class="actions">
		                                    <li><a href="#" class="button">More</a></li>
		                                 </ul>
		                              </article>
		                           </div>
		                           
							</section>
								

							<%-- <a href="${pageContext.request.contextPath}/login/login.do">카톡로그인</a> --%>
						</div>
					</div>
			</div>
					
				<!-- Sidebar -->
					<jsp:include page="../include/SideMenu.jsp"></jsp:include>
					

		<!-- Scripts -->
			<jsp:include page="../include/JS.jsp"></jsp:include>
			
</body>
</html>