<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/SlideMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/autocomplete.css" />
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/TopMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	
	<style>
	
		.forMarginTop{
		}
		
		.userRating_overlay {
		    position: fixed;
		    left: 0;
		    top: 0;
		    height: 100%;
		    width: 100%;
		    z-index: 500;
		    background-color: rgba(0,0,0,0.8);
		}
		
		.userRating_base{
			padding:0 3% 0;
		}
		
		.bookList_base{
		}
		
		.bookList{
		}
		
		.book{
			position: relative;
			display:block;
			margin: 1.4%;
			width:11%;
			height:15.56%;
			float: left;
		}
		
		.book_cover{
		}
		
		.book_cover :hover {
			/*border: 1px solid gray;*/
		}
				
		.book img{
			width: 100%;
			height: 100%;
		}
		
		.book_overlay{
			position:absolute;
			display:block;
			bottom:0px;
			left:0px;
			width:100%;
			z-index: 500;
			text-align:center;
			vertical-align:middle;
			background-color: rgba(18,17,24,0.9);
		}
		
		.book_overlay_title{
			padding: 1px 2px 1px;
		}
		
		.book_overlay_rating{
			display: inline-block;
		}
		
		.hidden{
			display: none;
		}
		
		.progrecess_base{
			padding: 1em;
			text-align: center;
			display: grid;
		}
		
		.progrecess_bar_base{
			padding: 0;
			float: left;
		}
		
		.progrecess_bar_blank{
			border: 1px solid black;
			height: 10px;
			width: 30%;
			padding: 1px;
		}
		
		.progrecess_bar_blank span{
			vertical-align:middle;
			float:left;
			width:50%;
			height: 6px;
			background-color: #f56a6a;
		}
		
		/* 별점 */
		.starR1 {
		    background: url('${pageContext.request.contextPath}/resources/images/star_middle.png') no-repeat -39px 0;
		    background-size: auto 100%;
		    width: 11.25px;
		    height: 22.5px;
		    float:left;
		    text-indent: -9999px;
		}
		.starR2 {
		    background: url('${pageContext.request.contextPath}/resources/images/star_middle.png') no-repeat right 0;
		    background-size: auto 100%;
		    width: 11.25px;
		    height: 22.5px;
		    float:left;
		    text-indent: -9999px;
		}
		.book_overlay_rating > span {cursor: pointer;}
				
		.starR1.on {background-position:0 0;}
		.starR2.on {background-position:-11.25px 0;}
		
		/*
		
		책표지 크기는 A4용지 비율 사이즈인 1 :1.41
		
		*/
	
	</style>
<title>Insert title here</title>
</head>
<body>
	<!-- topMenu -->
			<jsp:include page="../include/TopMenu.jsp"/>

	<!-- userRating -->
			<div class="userRating_base">
				
				<!-- Header -->
				<jsp:include page="../include/HeaderMenu.jsp"/>

				<div class="progrecess_base">
					<div id="progrecess_num">0</div>
					<div>최소 10개 이상의 작품을 평가해주세요</div>
					<div align="center" class="progrecess_bar_base">
						<div class="progrecess_bar_blank">
							<span class="progrecess_bar"></span>
						</div>
					</div>
				</div>

				<div class="bookList_base">
					<div class="bookList">
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">
									<span class="starR1"></span>
									<span class="starR2"></span>
									<span class="starR1"></span>
									<span class="starR2"></span>
									<span class="starR1"></span>
									<span class="starR2"></span>
									<span class="starR1"></span>
									<span class="starR2"></span>
									<span class="starR1"></span>
									<span class="starR2"></span>
								</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div align="center" class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
						<div class="book">
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="book_overlay_rating">별점</div>
							</div>
						</div>
					
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
			
			$('.book').hover(function() {
				$(this).find('.book_overlay').removeClass('hidden');
			}, function() {
				$(this).find('.book_overlay').addClass('hidden');
			});
			
			$(".book_overlay_rating span").click(function(){
				  $(this).parent().children('span').removeClass('on');
				  $(this).addClass('on').prevAll('span').addClass('on');
				  $('input[name=rating]').attr("value", getInputRating());
				});
			
			</script>
</body>
</html>