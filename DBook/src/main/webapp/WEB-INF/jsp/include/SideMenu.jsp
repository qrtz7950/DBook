<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Autocomplete Scripts -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery.autocomplete.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.autocomplete.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#keyword").autocomplete("${pageContext.request.contextPath}/resources/assets/jsp/autocompleteDB.jsp"); //한줄. 서버에서 키워드 리스 가져오기
		
		});
	</script>
</head>
<body>
			
<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1" style="overflow: auto;">
		<div style="width:80%; margin: 10%;">

			<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" id="keyword" size="20" name="keyword" />
					</form>
				</section>

			<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>책 카테고리</h2>
					</header>
					<ul>
						<li><a href="index.html">?</a></li>
						<li>
							<span class="opener">국내도서</span>
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
						</li>
						<li>
							<span class="opener">국외도서</span>
							<ul>
								<li><a href="#">영어 도서</a></li>
								<li><a href="#">일어 도서</a></li>
								<li><a href="#">프랑스 도서</a></li>
								<li><a href="#">독어 도서</a></li>
								<li><a href="#">스페인 도서</a></li>
							</ul>
						</li>
						<li><a href="#">스포츠/경제</a></li>
						<li><a href="#">사회</a></li>
						<li>
							<span class="opener">Another Submenu</span>
							<ul>
								<li><a href="#">Lorem Dolor</a></li>
								<li><a href="#">Ipsum Adipiscing</a></li>
								<li><a href="#">Tempus Magna</a></li>
								<li><a href="#">Feugiat Veroeros</a></li>
							</ul>
						</li>
						<li><a href="#">Maximus Erat</a></li>
						<li><a href="#">Sapien Mauris</a></li>
						<li><a href="#">Amet Lacinia</a></li>
					</ul>
				</nav>

			<!-- Section -->
				<section>
					<header class="major">
						<h2>해외도서</h2>
					</header>
					<div class="mini-posts">
						<article>
							<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic07.jpg" alt="" /></a>
							<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
						</article>
						<article>
							<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic08.jpg" alt="" /></a>
							<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
						</article>
						<article>
							<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic09.jpg" alt="" /></a>
							<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
						</article>
					</div>
					<ul class="actions">
						<li><a href="#" class="button">More</a></li>
					</ul>
				</section>

			<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
					<ul class="contact">
						<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
						<li class="fa-phone">(000) 000-0000</li>
						<li class="fa-home">1234 Somewhere Road #8254<br />
						Nashville, TN 00000-0000</li>
					</ul>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
				</footer>

		</div>
</div>
</body>
</html>