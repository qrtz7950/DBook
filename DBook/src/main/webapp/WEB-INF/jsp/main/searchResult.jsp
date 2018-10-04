<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<jsp:include page="../include/CSS.jsp" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slide2.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/css/swiper.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/layerPopUp.css" />
	
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String keyword = request.getParameter("keyword");
	%>
	
	<title><%=keyword %>:: 검색결과 - DBooK</title>
	
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
		
	</style>

</head>
<body>
		<!-- topMenu -->
			<ul id="topMenu">
				<li><a class="active" href="#home">Home</a></li>
				<li><a href="#news">News</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a href="#about">About</a></li>
				<li class="topMenu-right"><a id="showLeft">Menu</a></li>
				<li class="topMenu-right"><a id="showTop">Menu</a></li>
				<li class="topMenu-right" id="topMenu-search">
					<form method="post" action="#" style="margin: 0; padding-top: 5px;">
						<input type="text" name="query" id="query" placeholder="Search" /> 
					</form>
				</li>
			</ul>
			<!-- <button id="showLeft" style="position: fixed; right: 0px; z-index: 902;">Menu</button> -->
			
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
							<jsp:include page="../include/HeaderMenu.jsp"/>
								

							<!-- Banner -->
								<section id="banner">
									
								</section>

							<!-- Section -->
								<section>
								</section>

						</div>
					</div>
			</div>
		<!-- Sidebar -->
			<jsp:include page="../include/SideMenu.jsp"></jsp:include>
					

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