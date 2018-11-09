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
								
									<div id="category_select">
										
										<a href="${pageContext.request.contextPath}">홈 ></a>
									
										<select style="width:auto;" >
											<option>${requestScope.categories["0"]}</option>
											<option>국내도서</option>
											<option>국외도서</option>
										</select>
										
										<div>></div>
										
										<select style="width:auto;" >
											<option>${requestScope.categories["0"]}</option>
											<option>국내도서</option>
											<option>국외도서</option>
										</select>
										
										<div>></div>
										
										<select style="width:auto;" >
											<option>${requestScope.categories["0"]}</option>
											<option>국내도서</option>
											<option>국외도서</option>
										</select>
									</div>
									
									<div id="category_main_base">

										<div id="side-category-menu">
											<div id="side-category-menu_title">
												카테고리
											</div>
											<div id="side-category-menu_title_category">
												<ul>
												<li href="../book/booklist/category.do/"><a><span>소설</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>시/에세이</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>경제/경영</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>자기계발</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>인문</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>역사/문화</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>사회</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>과학/공학</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>예술/대중문화</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>종교</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>유아</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>어린이</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>가정/생활/요리</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>건강</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>취미/레저</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>여행/지도</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>국어/외국어</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>사전</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>컴퓨터/IT</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>청소년</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>학습/참고서</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>취업/수험서</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>만화</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>잡지</span></a></li>
												<li href="../book/booklist/category.do/"><a><span>해외도서</span></a></li>
												</ul>
											</div>
										</div>
									
										<div id="category-content" class="posts">
											
											<c:forEach var="book" items="#{bookListByCategory}">
											
											<article>
											   <a href="#" class="image"><img src="${book.cover}"></a>
											   <h3><a href="#">${book.book_name}</a></h3>
											   <p><a href="#">${book.author} 지음</a><br><a href="#">${book.publisher}</a></p>
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