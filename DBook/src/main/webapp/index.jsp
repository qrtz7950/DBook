<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <jsp:include page="WEB-INF/jsp/include/CSS.jsp"></jsp:include>
   <link rel="stylesheet" href="./resources/assets/css/slide2.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/css/swiper.min.css">
   
   <title>DBook</title>
   
   <style>
	  
	  #index-background{
	  	 background: url('${pageContext.request.contextPath}/resources/images/index.jpg') no-repeat center center fixed;
		 -webkit-background-size: cover;
		 -moz-background-size: cover;
		 -o-background-size: cover;
		 background-size: cover;
		 width: 100%;
		 height: 100%;
		 top: 0;
		 position: fixed;
		 z-index: 955;
	  }
      
      #index-black{
      	top: 0;
      	width: 100%;
      	height: 100%;
      	background-color: #000000;
      	opacity: 0.5;
      	z-index: 960;
      	position: fixed;
      }
      
      #index-up{
      	position: fixed;
      	top: 35%;
      	left: calc((100% - 370px)/2);
      	z-index: 965;
      }
      
      #index-up > a{
      	color: #ffffff;
      	font-size: 50px;
      	border: none;
      	text-align: center;
      	width: 340px;
      }
      
      #index-btn{
      	display: none;
      	font-size: 20px;
	    color: #ffffff !important;
	    border-radius: 200px;
	    background-color: #fc426a;
	    padding: 0 30px;
	    margin: 0 0 0 220px;
      }
      
      #index-btn:hover {
		background-color: #f3a0a0;
	  }
   </style>

</head>
<body>
	<!-- topMenu -->
		<jsp:include page="WEB-INF/jsp/include/TopMenu.jsp"/>
		
	<!-- Wrapper -->
		<div id="index-background"></div>
		<div id="index-black"></div>
		<div id="index-up">
			<a>오늘은 무슨책?</a>
			<br>
			<div style="color: #f3a0a0">나를 위한 맞춤 책 추천사이트</div>
			<button id="index-btn">DBook</button>
		</div>
	<!-- Sidebar -->
		<jsp:include page="WEB-INF/jsp/include/SlideSideMenu.jsp"/>
		<jsp:include page="WEB-INF/jsp/include/SlideTopMenu.jsp"/>
               

</body>
	<!-- Scripts -->
		<jsp:include page="WEB-INF/jsp/include/JS.jsp"></jsp:include>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
		<script src="./resources/assets/js/slide2.js"></script>
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script>
			$(document).ready(function(){
				setTimeout(function(){
					$('#index-btn').show(1000);
				}, 3000);
			});
			
			$('#index-btn').click(function(){
				location.href = "${pageContext.request.contextPath}/main/home.do";
			});
		</script>
</html>