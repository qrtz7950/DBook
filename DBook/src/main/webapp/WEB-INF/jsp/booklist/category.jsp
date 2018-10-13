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
	<style type="text/css">
	
	#side-category-menu{
		width : 15%;
		display: block;
		margin-left:1.5%;
		float: left;
	}
	
	#side-category-menu_title{
		background-color: rgb(245, 106, 106);
		text-align: center;
		vertical-align: middle;
		font-weight: bold;
		color: white;
	}
	#side-category-menu_title_category{
		padding: 5px;
		padding-left: 10px;
	}
	
	#side-category-menu_title_category a{
		text-decoration: none;
		border-bottom: none;
		color: #7f888f;	
	}
	
	#category-content{
		width:83%;
		display: inline-flex;
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
		margin-left: 1%;
	}
	#category_select div{
		height: 1.75em;
		margin-left: 1%;
	}
	
	#category-content .posts {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-wrap: wrap;
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		margin: 0 0 0 0;
		width:100%;
	}
	
	.posts article {
    -moz-flex-grow: 0;
    -webkit-flex-grow: 0;
    -ms-flex-grow: 0;
    flex-grow: 0;
    -moz-flex-shrink: 1;
    -webkit-flex-shrink: 1;
    -ms-flex-shrink: 1;
    flex-shrink: 1;
    margin: 0 0 3% 4%;
    position: relative;
    /*width: calc(33.33333% - 6em);*/
	}
	</style>
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
											
											<c:forEach begin="1" end="20">
											
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