<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<%-- <jsp:include page="../include/CSS.jsp" /> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slide2css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/SlideMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/autocomplete.css" />
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/TopMenu.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/css/swiper.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/layerPopUp.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/category.css" />
	
	<title>${param.keyword}:: 검색결과 - DBooK</title>

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
										<h2><strong>'${param.keyword}'</strong> 로 검색한 결과</h2>
									</div>
									
									<div id="category_main_base">

										<div id="side-category-menu">
											<div id="side-category-menu_title">
												카테고리
											</div>
											<div id="side-category-menu_title_category">
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
											</div>
										</div>
									
										<div id="category-content" class="posts">
											
											<c:forEach var="book" items="#{bookListByKeyword}">
											
											<article>
											   <a href="#" class="image"><img src="${book.cover}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/resources/images/image-null.png';" /></a>
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
			
		<!-- 달지마 -->
			<script>
				/* MenuButton */
					$(document).ready(function() {
						menuButton();
					});
				
					$(window).resize(function(){
						menuButton();
					});
				
				 
			</script>
			
		<!-- script function -->
			<script>
				function menuButton(){
					$.ajax({
						type : 'get',
						url : '',
						dataType : '',
						data : '' ,
						success : function(){
							if($(window).width()<660){
						        $("#showLeft").hide();
						        $("#cbp-spmenu-s1").hide();
						        $("#topMenu-search").hide();
								$("#showTop").show();
						    }else{
						        $("#showTop").hide();
								$("#showLeft").show();
								$("#cbp-spmenu-s1").show();
								$("#topMenu-search").show();								
						    }
						}
					});
					/* setTimeout("menuButton()", 100); */
				}
			</script>
		
		
		<!-- 검색결과  -->
			<!-- <script>
			 
			$(document).ready(function() {
				search();
			});
				function search(){
					$.ajax({
						url: "${pageContext.request.contextPath}/resources/assets/jsp/searchDB.jsp",
						type : "post",
						dataType: "json",
						data: request,
						success: function(data) {
		                    response(data);
		                },
		                error: function(status, error){
		                     console.log( status +' / ' + error);
		                }
						
					});
				}
			</script> -->
			
			
</body>
</html>