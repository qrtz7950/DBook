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
	
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String keyword = request.getParameter("keyword");
	%>
	
	<title>${param.keyword }:: 검색결과 - DBooK</title>
	
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
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
							<jsp:include page="../include/HeaderMenu.jsp"/>
								

							<!-- Banner -->
								<section id="banner" style="padding-top: 25px; padding-bottom: 0px;">
									<h2><strong>'<%=keyword %>'</strong> 로 검색한 결과</h2>
								</section>

							<!-- Section -->
								<section>
								<div id="sideCategoryMenu">
										<div id="sideCategoryMenu_title">
											카테고리
										</div>
										<div id="sideCategoryMenu_title_category">
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
									<div id="Category_content" class="posts">
				                            <c:forEach begin="1" end="21">
											
											<article>
											   <a href="#" class="image"><img src="/DBook/resources/images/book01.jpg"></a>
											   <h3><a href="#">죽고 싶지만 떡볶이는 먹고 싶어</a></h3>
											   <p><a href="#">백세희 지음</a><br><a href="#">흔</a></p>
											</article>
											
											</c:forEach>
				                           </div>
								</section>

						</div>
					</div>
			</div>
		<!-- Sidebar -->
			<jsp:include page="../include/SlideSideMenu.jsp"></jsp:include>
					

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
			<script>
			$(document).ready(function() {
				search();
			});
				function search(){
					$.ajax({
						url: "${pageContext.request.contextPath}/resources/assets/jsp/searchDB.jsp",
						type : "post",
						dataType: "json",
						data: request,
						success: function( data) {
		                    response(data);
		                },
		                error: function(status, error){
		                     console.log( status +' / ' + error);
		                }
						
					});
				}
			</script>
			
			
</body>
</html>