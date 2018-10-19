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
												My Page
									</div>
									
									<div id="category_main_base">

										<div id="side-category-menu">
											<div id="side-category-menu_title">
												My Page
											</div>
											<div id="side-category-menu_title_category">
												<ul>
													<li><a href="${pageContext.request.contextPath}/mypage/bookmark.do">즐겨찾기한 책</a></li>
													<li><a href="${pageContext.request.contextPath}/mypage/rated.do">평가한 도서</a></li>
													<li><a href="${pageContext.request.contextPath}/mypage/allreview.do">내가 쓴 리뷰</a></li>
												</ul>
											</div>
										</div>
									
										<div id="category-content" class="posts">
											
											<div class="mypage-subtitle" style="margin-top: 0;">
												<a>즐겨찾기한 책</a>
												<a href="${pageContext.request.contextPath}/mypage/bookmark.do">M O R E</a>
											</div>
											
											<c:forEach begin="1" end="4">
											
											<article>
											   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
											   <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
											   <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
											</article>
											
											</c:forEach>
											
											<div class="mypage-subtitle">
												<a>평가한 도서</a>
												<a href="${pageContext.request.contextPath}/mypage/rated.do">M O R E</a>
											</div>
											
											<c:forEach begin="1" end="4">
											
											<article>
											   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
											   <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
											   <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
											</article>
											
											</c:forEach>
											
											<div class="mypage-subtitle">
												<a>내가 쓴 리뷰</a>
												<a href="${pageContext.request.contextPath}/mypage/allreview.do">M O R E</a>
											</div>
											
											<c:forEach begin="1" end="4">
											
											<article>
											   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
											   <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
											   <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
											</article>
											
											</c:forEach>
											
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
			
			</script>
			
			<script>
	
			$(document).ready(function(){
				
				$("#category1").each(function(){
					
					if($(this).val()=="${requestScope.categories[0]}"){
						$(this).attr()
					}
					
				});	
			}); 
			</script>
			
			
</body>
</html>