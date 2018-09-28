<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<jsp:include page="../include/CSS.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slide2.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/css/swiper.min.css">
	
	<title>DBook</title>
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
								

							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1>Hi, I’m Editorial<br />
											by HTML5 UP</h1>
											<p>A free and fully responsive site template</p>
										</header>
										<p>Aenean ornare velit lacus, ac varius enim ullamcorper eu. Proin aliquam facilisis ante interdum congue. Integer mollis, nisl amet convallis, porttitor magna ullamcorper, amet egestas mauris. Ut magna finibus nisi nec lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien ac quam. Lorem ipsum dolor sit nullam.</p>
										<ul class="actions">
											<li><a href="#" class="button big">Learn More</a></li>
										</ul>
									</div>
									<span class="image object">
										<img src="${pageContext.request.contextPath}/resources/images/pic10.jpg" alt="" />
									</span>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>slide</h2>
									</header>
									<div class="swiper-container">
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide"><div><img src="http://oldmidi.cdn3.cafe24.com/p/578.jpg"><div>1</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/099.jpg"><div>2</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/334.jpg"><div>3</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/526.jpg"><div>4</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/563.jpg"><div>5</div></div></div>
												<div class="swiper-slide"><div><img src="http://oldmidi.cdn3.cafe24.com/p/019.jpg"><div>6</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/187.jpg"><div>7</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/176.jpg"><div>8</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/461.jpg"><div>9</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/321.jpg"><div>10</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/521.jpg"><div>11</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/400.jpg"><div>12</div></div></div>
												<div class="swiper-slide"><div><img src="http://biketago.com/img/p/407.jpg"><div>13</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/288.jpg"><div>14</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/557.jpg"><div>15</div></div></div>
												<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
										</div>
										<div style="text-align:center; margin-top:5px;">랜덤사진 갤러리</div>
									</div>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ipsum sed dolor</h2>
									</header>
									<div class="posts">
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic01.jpg" alt="" /></a>
											<h3>Interdum aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic02.jpg" alt="" /></a>
											<h3>Nulla amet dolore</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic03.jpg" alt="" /></a>
											<h3>Tempus ullamcorper</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic04.jpg" alt="" /></a>
											<h3>Sed etiam facilis</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic05.jpg" alt="" /></a>
											<h3>Feugiat lorem aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic06.jpg" alt="" /></a>
											<h3>Amet varius aliquam</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
									</div>
								</section>

						</div>
					</div>
					
				<!-- Sidebar -->
					<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1" style="overflow: auto;">
							<div style="width:80%; margin: 10%;">
	
								<!-- Search -->
									<section id="search" class="alt">
										<form method="post" action="#">
											<input type="text" name="query" id="query" placeholder="Search" />
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
													<li><a href="#">소설</a></li>
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

		<!-- Scripts -->
			<jsp:include page="../include/JS.jsp"></jsp:include>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>
</body>
</html>