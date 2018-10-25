<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/SlideMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/autocomplete.css" />
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/TopMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/category.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/library.css" />
	
	<title>DBook</title>
</head>
<body>

	<!-- topMenu -->
			<jsp:include page="../include/TopMenu.jsp"/>
			
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
								
									<div class="mypage-title">
												<a href="../mypage/library.do">내 서재</a>
									</div>
									
									<div id="category_main_base">

										<div id="side-category-menu">
											<div id="side-category-menu_title">
												My Page
											</div>
											<div id="side-category-menu_title_category">
												<ul>
													<li class="bookmark-book">관심있는 책</li>
													<li class="rated-book">최근에 본 도서</li>
													<li class="review-book">내가 쓴 리뷰</li>
												</ul>
											</div>
										</div>
									
										<div id="category-content" class="posts">
										
											<div class="bookmark-book-content">
												<div class="mypage-subtitle">
													<span>관심있는 책</span>
													<a class="bookmark-book more">M O R E</a>
												</div>
												
												<div class="articles">
													<c:forEach begin="1" end="4">
													<article>
													   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
													   <h3><a href="#">죽고 싶지만 떡볶이는 먹고 싶어</a></h3>
													   <p><a href="#">백세희 지음</a><br><a href="#">흔</a></p>
													</article>
													
													</c:forEach>
												</div>
												<div class="view-more hidden bookmark-view-more"><img src="/DBook/resources/images/arrow-60.png"></div>
											</div>
											
											<div class="rated-book-content">
												<div class="mypage-subtitle">
													<span>최근에 본 도서</span>
													<a class="rated-book more">M O R E</a>
												</div>
												
												<div class="articles">
													<c:forEach begin="1" end="4">
													
													<article>
													   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
													   <h3><a href="#">죽고 싶지만 떡볶이는 먹고 싶어</a></h3>
													   <p><a href="#">백세희 지음</a><br><a href="#">흔</a></p>
													</article>
													
													</c:forEach>
												</div>
												<div class="view-more hidden rated-view-more"><img src="/DBook/resources/images/arrow-60.png"></div>
											</div>
											
											<div class="review-book-content">
												<div class="mypage-subtitle">
													<span>내가 쓴 리뷰</span>
													<a class="review-book more">M O R E</a>
												</div>
												
												<div class="articles">
													<c:forEach begin="1" end="4">
													
													<article>
													   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
													   <h3><a href="#">죽고 싶지만 떡볶이는 먹고 싶어</a></h3>
													   <p><a href="#">백세희 지음</a><br><a href="#">흔</a></p>
													</article>
													
													</c:forEach>
												</div>
												<div class="view-more hidden review-view-more"><img src="/DBook/resources/images/arrow-60.png"></div>
											</div>
											
			                             </div>
		                           
		                           </div>
							</section>
								

							<%-- <a href="${pageContext.request.contextPath}/login/login.do">카톡로그인</a> --%>
						</div>
					</div>
			</div>
			
		<!-- Sidebar -->
			<jsp:include page="../include/SlideSideMenu.jsp"></jsp:include>
			<jsp:include page="../include/SlideTopMenu.jsp"></jsp:include>
					

		<!-- Scripts -->
			<jsp:include page="../include/JS.jsp"></jsp:include>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>
			<script type="text/javascript">
			
			$(document).ready(function() {
				category_toggle();
			});

			$(window).resize(function(){
				category_toggle();
			});
			
			function category_toggle(){
			
				if($(window).width()<480){
					$("#side-category-menu").hide();
					$("#category-content").css("width","100%");
				}
				
				if($(window).width()>480){
					$("#side-category-menu").show();
					$("#category-content").css("width","83%");
				}
			}
			
			$('.bookmark-book').click(function() {
				$('.more').slideUp(500);
				$('.view-more').slideDown(500);
				$('.bookmark-book-content').slideDown(500);
				$('.rated-book-content').slideUp(500);
				$('.review-book-content').slideUp(500);
			});
			
			$('.rated-book').click(function() {
				$('.more').slideUp(500);
				$('.view-more').slideDown(500);
				$('.rated-book-content').slideDown(500);
				$('.bookmark-book-content').slideUp(500);
				$('.review-book-content').slideUp(500);
			});
						
			$('.review-book').click(function() {
				$('.more').slideUp(500);
				$('.view-more').slideDown(500);
				$('.review-book-content').slideDown(500);
				$('.bookmark-book-content').slideUp(500);
				$('.rated-book-content').slideUp(500);
			});
			
			var bookmarkNTh = 1;
			var ratedNTh = 1;
			var reviewNTh = 1;			
			
			$('.bookmark-view-more').click(function() {
				$.ajax({
					url : '../mypage/bookmark.json',
					type : 'POST',
					dataType : 'json',
					data : {id :'${sessionScope.user.id}', nTh:bookmarkNTh},
					error : function(request, status, error){
				       	alert("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(data){
						console.log(data);
						bookmarkNTh++;
					}
				});
			});
			
			
			
			</script>
			
			<script>
			/*
			$(document).ready(function(){
				
				$("#category1").each(function(){
					
					if($(this).val()=="${requestScope.categories[0]}"){
						$(this).attr()
					}
					
				});	
			});
			*/
			</script>
			
			
</body>
</html>
