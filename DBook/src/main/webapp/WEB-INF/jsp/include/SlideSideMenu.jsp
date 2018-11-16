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
							<span class="opener">국내도서</span>
							<ul>
												    <li><a href="../booklist/category.do?category=100&page=1"><span>소설</span></a></li>
													<li><a href="../booklist/category.do?category=110&page=1"><span>시/에세이</span></a></li>
													<li><a href="../booklist/category.do?category=120&page=1"><span>인문</span></a></li>
													<li><a href="../booklist/category.do?category=130&page=1"><span>가정/생활/요리</span></a></li>
													<li><a href="../booklist/category.do?category=140&page=1"><span>건강</span></a></li>
													<li><a href="../booklist/category.do?category=150&page=1"><span>취미/레저</span></a></li>
													<li><a href="../booklist/category.do?category=160&page=1"><span>경제/경영</span></a></li>
													<li><a href="../booklist/category.do?category=170&page=1"><span>자기계발</span></a></li>
													<li><a href="../booklist/category.do?category=180&page=1"><span>사회</span></a></li>
													<li><a href="../booklist/category.do?category=190&page=1"><span>역사/문화</span></a></li>
													<li><a href="../booklist/category.do?category=200&page=1"><span>종교</span></a></li>
													<li><a href="../booklist/category.do?category=210&page=1"><span>예술/대중문화</span></a></li>
													<li><a href="../booklist/category.do?category=220&pag출판도시 문화재단e=1"><span>학습/참고서</span></a></li>
													<li><a href="../booklist/category.do?category=230&page=1"><span>국어/외국어</span></a></li>
													<li><a href="../booklist/category.do?category=240&page=1"><span>사전</span></a></li>
													<li><a href="../booklist/category.do?category=250&page=1"><span>과학/공학</span></a></li>
													<li><a href="../booklist/category.do?category=260&page=1"><span>취업/수험서</span></a></li>
													<li><a href="../booklist/category.do?category=270&page=1"><span>여행/지도</span></a></li>
													<li><a href="../booklist/category.do?category=280&page=1"><span>컴퓨터/IT</span></a></li>
													<li><a href="../booklist/category.do?category=290&page=1"><span>잡지</span></a></li>
													<li><a href="../booklist/category.do?category=300&page=1"><span>청소년</span></a></li>
													<li><a href="../booklist/category.do?category=310&page=1"><span>유아</span></a></li>
													<li><a href="../booklist/category.do?category=320&page=1"><span>어린이</span></a></li>
													<li><a href="../booklist/category.do?category=330&page=1"><span>만화</span></a></li>
							</ul>
						</li>
						<li>
							<span class="opener">해외도서</span>
							<ul>
								<li><a href="../booklist/category.do?category=340&page=1"><span>해외도서</span></a></li>
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