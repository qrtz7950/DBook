<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>${param.id}의 My Page</title>
<style>
		#topMenu {
			position: fixed;
			width: 100%;
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    overflow: hidden;
		    background-color: #333;
		    z-index: 900;
		}
		#topMenu > li {
		    float: left;
		}
		#topMenu > li a {
		    display: block;
		    color: white;
		    text-align: center;
		    padding: 14px 16px;
		    text-decoration: none;
		    border: none;
		}
		#topMenu > li a:hover {
		    background-color: #111;
		}
		#topMenu > li.topMenu-right {
			float: right;
		}
		#sideCategoryMenu{
			width : 15%;
			display: block;
			margin-left:30px;
			float: left;
		}
		
		#sideCategoryMenu_title{
			background-color: rgb(245, 106, 106);
			text-align: center;
			vertical-align: middle;
			font-weight: bold;
			color: white;
		}
		#sideCategoryMenu_title_category{
			padding: 5px;
			padding-left: 10px;
		}
		
		#Category_content{
			width: 80%;
			display: inline-flex;
			float:left;"
		}
		
		#category_select{
			display: -webkit-box;
			height: 50px;
			vertical-align:middle;
			border-bottom: 1px solid #7f888f;
			margin-bottom: 20px;
		}
		
		#category_select select{
			height: 1.75em;
			margin-left: 5px;
			margin-right: 5px;
		}
	</style>
</head>
<body>
	<!-- topMenu -->
			<jsp:include page="../include/TopMenu.jsp"></jsp:include>
					
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

									<div id="sideCategoryMenu">
										<div id="sideCategoryMenu_title">
											M y P a g e
										</div>
										<div id="sideCategoryMenu_title_category">
											<ul>
												<li><a href="${pageContext.request.contextPath}/mypage/bookmark.do">책 즐겨찾기</a></li>
												<li><a href="${pageContext.request.contextPath}/mypage/rated.do">평가한 도서</a></li>
												<li><a href="${pageContext.request.contextPath}/mypage/allreview.do">내가 쓴 리뷰</a></li>
												<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
												<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
											</ul>
										</div>
									</div>
									
									<header class="major">
										<h2>책 즐겨찾기</h2>
									</header>
									<div id="Category_content" class="posts">
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                              <article>
		                                 <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg" alt=""></a>
		                                 <a href="#"><h3>죽고 싶지만 떡볶이는 먹고 싶어</h3></a>
		                                 <a href="#"><p>백세희 지음<br><a href="">흔</a></p></a>
		                              </article>
		                           </div>	                           
							</section>

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
</body>
</html>