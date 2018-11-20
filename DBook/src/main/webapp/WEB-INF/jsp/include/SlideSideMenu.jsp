<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<!-- Autocomplete Scripts -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery.autocomplete.css"/>
</head>

<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1" style="overflow: auto;">
		<div style="width:80%; margin: 10%;">

			<!-- Search -->
				<section id="search" class="alt">
					<form method="get" action="${pageContext.request.contextPath}/book/bookSearch/searchResult.do">
						<input type="text" id="autoText" name="keyword" maxlength="20" />
					</form>
				</section>

			<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>책 카테고리</h2>
					</header>
					<ul>
						<li>
							<span class="opener">하던거</span>
							<ul>
								<li><a href="${pageContext.request.contextPath}/book/booklist/category.do">카테고리별 검색</a></li>
								<li><a href="${pageContext.request.contextPath}/book/bookDetail/13733438.do">상세</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/library.do">마이 페이지</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/userRating.do">도서 평가</a></li>
								<li><a href="${pageContext.request.contextPath}/user/login.do">로그인</a></li>
								<li><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
								<li><a href="http://developers.kakao.com/logout">카톡 로그아웃</a></li>
							</ul>
						</li>
						<li>
							<span class="opener">소설</span>
							<ul>
							    <li><a href="../booklist/category.do?category=100010&page=1"><span class="opener">나라별소설</span></a></li>
							    <li><a href="../booklist/category.do?category=100020&page=1"><span class="opener">고전/문학</span></a></li>
							    <li><a href="../booklist/category.do?category=100030&page=1"><span class="opener">장르소설</span></a></li>
							    <li><a href="../booklist/category.do?category=100040&page=1"><span class="opener">테마소설</span></a></li>
							</ul>
						</li>
						<li>
							<span class="opener">시 /에세이</span>
							<ul>
							    <li><a href="../booklist/category.do?category=110010&page=1"><span class="opener">한국시</span></a></li>
							    <li><a href="../booklist/category.do?category=110020&page=1"><span class="opener">외국시</span></a></li>
							    <li><a href="../booklist/category.do?category=110030&page=1"><span class="opener">인물 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110040&page=1"><span class="opener">여행 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110050&page=1"><span class="opener">성공 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110060&page=1"><span class="opener">독서 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110070&page=1"><span class="opener">명상 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110080&page=1"><span class="opener">그림/포토 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110090&page=1"><span class="opener">연애/사랑 에세이</span></a></li>
							    <li><a href="../booklist/category.do?category=110100&page=1"><span class="opener">삶의 지혜/명언</span></a></li>
							</ul>
						</li>
						<li><a href="#">스포츠/경제</a></li>
						<li><a href="#">사회</a></li>
						<li>
							<span class="opener">온라인 서점 바로가기</span>
							<ul>
								<li><a href="http://www.yes24.com">Yes24</a></li>
								<li><a href="http://www.kyobobook.co.kr">교보문고</a></li>
								<li><a href="https://www.aladin.co.kr">알라딘</a></li>
								<li><a href="http://book.interpark.com/">인터파크 도서</a></li>
								<li><a href="http://www.bandinlunis.com">반디앤루니스</a></li>
								<li><a href="http://www.ypbooks.co.kr">영풍문고</a></li>
								<li><a href="http://books.11st.co.kr">11번가</a></li>
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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.autocomplete.js"></script>
<script>
/* 검색어 자동완성 */
$(document).ready(function() {
    $('#ui-active-menuitem').css('font-size', '10px');
    $("input#autoText").autocomplete({
        width: 300,
        max: 10,
        delay: 100,
        minLength: 1,
        autoFocus: true,
        cacheLength: 1,
        scroll: true,
        highlight: false,
        source: function(request, response) {
            $.ajax({
                url: "${pageContext.request.contextPath}/resources/assets/jsp/autocompleteDB2.jsp",
                dataType: "json",
                type: "post",
                data: request,
                success: function( data) {
                    response(data);
                },
                error: function(status, error){
                     console.log( status +' / ' + error);
                }
            });
        }
 
    });
});
</script>