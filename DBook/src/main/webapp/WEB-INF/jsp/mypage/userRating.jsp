<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			display: block;
			min-height: 1200px;
		}
		
		.bookList{
			
		}
		
		.book{
			position: relative;
			display:block;
			margin: 1.4%;
			width:11.485%;
			height:16.242%;
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
			padding-bottom: 5px;
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
		
		#progrecess_bar{
			position:relative;
			vertical-align:middle;
			float:left;
			width:0%;
			height:100%;
			background-color: #f56a6a;
		}
		
		.progrecess_title{
		}
		
		#progrecess_num{
		}
		
		.rating_point{
			display: none;
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
		
		.book_overlay_rating > span .starNone {
			width: 11.25px;
			height: 22.5px;
		}
		.book_overlay_rating > span .starMargin {
			width: 11.25px;
			height: 22.5px;
		}
		
				
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
					<div class="progrecess_title">최소 10개 이상의 작품을 평가해주세요</div>
					<div align="center" class="progrecess_bar_base">
						<div class="progrecess_bar_blank">
							<div id="progrecess_bar"></div>
						</div>
					</div>
				</div>

				<div class="bookList_base">
					<div class="bookList">
					
					<c:forEach var="bookOrder" items="${asd}">
					
						<div class="book" id=book${bookOrder}>
							<div class="book_cover">
								<img src="/DBook/resources/images/book01.jpg">
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">죽고 싶지만 떡볶이는 먹고싶어</div>
								<div class="book_overlay_date">2018</div>
								<div class="hidden isRatingCheck"></div>
								<input type="hidden" name="rating" value="0">
								<div class="book_overlay_rating">
									<span class="starNone"></span>
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
									<span class="starMargin"></span>
								</div>
							</div>
						</div>
					
					</c:forEach>
					
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
			
			/* 진행도 및 평가한 책의 아이디 및 점수 배열 */
			var progressCnt = 0;
			var bookId = [];
			var bookRating = [];
			
			/* post형식 전송 함수 */
			function post_to_url(path, params, method) {
			    
				method = method || "post"; 

			    var form = document.createElement("form");
			    form.setAttribute("method", method);
			    form.setAttribute("action", path);
			 
			    for(var key in params) {
			        var hiddenField = document.createElement("input");
			        hiddenField.setAttribute("type", "hidden");
			        hiddenField.setAttribute("name", key);
			        hiddenField.setAttribute("value", params[key]);
			 
			        form.appendChild(hiddenField);
			    }
			 
			    document.body.appendChild(form);
			    form.submit();
			}
			
			/* 별점 입력값 구하기 */
			function getInputRating(obj){
				return obj.find('span.on').length; 
			};
			
			/* 0-10 진행도 체크 및 10에 도달 후 평가점수 Ajax로 입력  */
			function progressCntPlus() {
				if(progressCnt<90){
					progressCnt += 10;
					progressBarPlus(progressCnt);
					$('#progrecess_num').empty();
					$('#progrecess_num').text(progressCnt/10);
				} else{
					$.ajax({
						success : function(){
							post_to_url("../mypage/ratingSubmit.do",
								{ "bookId": bookId,
								  "bookRating" : bookRating 
								});
								  }
						  });
				}
			}
			
			/* 진행사항 증가 애니매이션 */
			function progressBarPlus(num) {
				$('#progrecess_bar').animate({width:num+'%'});
			}
			
			/* 책 위에 마우스 호버시 오버레이 나타남 체크된 책은 없어지지않음 */
			$('.book').hover(function() {
				$(this).find('.book_overlay').removeClass('hidden');
			}, function() {
				var checkChecked = $(this).find('input[name=rating]');
				if(checkChecked.val() == 0) {
					$(this).find('.book_overlay').addClass('hidden');
				}
			});
			
			/* 별점 입력시 별점생성 및 해당하는 책의 id와 점수를 스크립트 전역변수 배열에 추가 
			   check 텍스트를 넣어 해당 책의 평가 여부 구분*/
			$(".book_overlay_rating span").click(function(){
				$(this).parent().children('span').removeClass('on');
				$(this).addClass('on').prevAll('span').addClass('on');

				//var book = $(this).parent('.book');
				var book = $(this).parent().parent().parent();
				var id = book.attr('id');
				var rating = book.find('input[name=rating]');
				
				console.log(book);
				
				rating.attr("value", getInputRating(book));
	
				var bookCheck = book.find('.isRatingCheck')
				
				if(bookCheck.text() == ''){
					bookCheck.text('check');
					progressCntPlus();
					bookId.push(id);
					bookRating.push(rating.attr('value'));
				} else {
					bookId.pop();
					bookRating.pop();
					bookId.push(id);
					bookRating.push(rating.attr('value'));
				}
				
				console.log("-----------------");
				console.log(bookId);
				console.log(bookRating);
				console.log(progressCnt);
				console.log("-----------------");
			});
			</script>
</body>
</html>

