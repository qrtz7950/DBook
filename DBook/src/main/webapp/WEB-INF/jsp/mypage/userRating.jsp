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
		
		.userrating-overlay-base {
		    position: fixed;
		    left: 0;
		    top: 0;
		    height: 100%;
		    width: 100%;
		    z-index: 998;
		    background-color: rgba(0,0,0,0.8);
		}
		.userrating-overlay {
			position: fixed;
			vertical-align: middle;
			width: 500px;
			left: calc((100% - 500px)/2);
			top: 30%;
			color: #fffff;
			z-index: 999;
			text-align: center;
		}
		.userrating-overlay > div {
			margin-bottom: 5%;
		}
		.userrating-overlay-img > img{
			display:inline-block;
			width: 30%;
			height: 38%;
		}
		
		.userrating-overlay-text1{
			color: white; 
			font-size: 25pt;
			font-weight: bold;
		}
		
		.userrating-overlay-text2{
			margin-bottom: 3%;
			font-size: 15pt;
		}
		
		.yes-or-no{
		}
		
		.userrating-overlay-button{
			width:27%;
			height:8%;
			border-radius: 30px;
			background-color: #f56a6a;
			border: 5px solid #f56a6a;
			color: white;
			font-size: 15pt;
			margin: 0 9% 0;
			padding: 1% 0 1%;
			font-weight: bold;
			display: inline-block;
		}
		
		.userrating-overlay-button:hover{
			background-color: #f14e4e;
			border: 5px solid white;
			cursor: pointer;
		}
		
		.userRating_base{
			padding:0 3% 0;
		}
		
		.bookList_base{
			margin-top:1em;
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
			height: 300px;
		}
		
		.book_overlay{
			position:absolute;
			display:block;
			bottom:0px;
			left:0px;
			width:100%;
			z-index: 10;
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
		
		.inside-topmenu{
			position: fixed;
		    top: 3.2em;
		    left: 0;
		    right: 0;
		    width: 100%;
		    height: 180px;
		    z-index: 400;
		    background: linear-gradient(to top, rgba(255,255,255,0), #ffffff 20%);
		    text-align: center;
		}
		
		.progrecess_base{
			padding: 1%;
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
			font-size: 13pt;
		}
		
		#progrecess_num{
			font-size: 20pt;
		}
		
		.overrating-base{
		    padding-top: 1%;
		}
		
		.overrating-base > div{
		}
		
		.overrating-title{
		    font-size: 150%;
		}
		
		.overrating-subtitle{
			font-size: 100%;
		}
		
		.overrating-button{
			position:absolute;
			right:3%;
			top:10%;
			border-radius: 30px;
		    background-color: #f56a6a;
		    border: 5px solid #f56a6a;
		    color: white;
		    margin: 0 1.4% 0;
		    padding: 0.25% 0.25% 0.25%;
		    font-size:150%;
		    font-weight: bold;
		    display: inline-block;
		}
		.overrating-button:hover{
			background-color: #f14e4e;
			cursor: pointer;
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
	
	</style>
<title>도서 평가 :: DBook</title>
</head>
<body>

	<!-- 오버레이 -->
	<div class="userrating-overlay-base">
	</div>
	<div class="userrating-overlay">
		<div class="userrating-overlay-img">
			<img src="${pageContext.request.contextPath}/resources/images/star150.png">
		</div>
		<div class="userrating-overlay-text">
			<div class="userrating-overlay-text1">10개 이상의 평가가 필요해요</div>
			<div class="userrating-overlay-text2">취향에 맞는 책을 추천드리려고요!</div>
		</div>
		<div class="yes-or-no">
			<div class="userrating-overlay-button yes">좋아요</div>
		</div>
	</div>

	<!-- topMenu -->
			<jsp:include page="../include/TopMenu.jsp"/>

	<!-- userRating -->
			<div class="userRating_base">
				
				<!-- Header -->
				<jsp:include page="../include/HeaderMenu.jsp"/>
				
				<!-- inside Topmenu -->
				
				<div class="inside-topmenu">
					<!-- 진행상황 -->
					<div class="progrecess_base hidden">
						<div id="progrecess_num">0</div>
						<div class="progrecess_title">10개 이상의 작품을 평가해주세요</div>
						<div align="center" class="progrecess_bar_base">
							<div class="progrecess_bar_blank">
								<div id="progrecess_bar"></div>
							</div>
						</div>
					</div>
					
					<!-- 추가 평가 -->
					<div class="overrating-base" style="display: none;">
						<div class="overrating-title">이제 저희가 책 추천을 해 드릴 수 있겠네요</div>
						<div class="overrating-subtitle">평가를 많이 할 수록 더욱 성향에 맞는 추천이 가능해요!</div>
						<div class="next overrating-button">넘어가기</div>
					</div>
				</div>

				<div class="bookList_base">
					<div class="bookList">
					
					<c:forEach var="bookOrder" items="${book}">

						<div class="book" id="${bookOrder.book_id}">
							<div class="book_cover">
								<img src="${bookOrder.cover}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/resources/images/image-null.png';" />
							</div>
							<div class="book_overlay hidden">
								<div class="book_overlay_title">${bookOrder.book_name }</div>
								<div class="book_overlay_date">${bookOrder.published_date }</div>
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
			
			/* 별점 입력값 구하기 */
			function getInputRating(obj){
				return obj.find('span.on').length; 
			};
			
			/*Ajax 별점 전송 함수*/
			function sendUserRating() {
				$.ajaxSettings.traditional = true;
				$.ajax({
					type : 'post',
					url:"../review/ratingSubmit.do",
					dataType : "text",
					data:{
						"bookId": bookId,
						"bookRating" : bookRating
						},
					success:function(){
						$('.progrecess_base').slideUp();
						$( ".overrating-base" ).fadeIn(500);
					}
				});						
			}
			
			/* 0-10 진행도 체크 및 10에 도달 후 평가점수 Ajax로 입력  */
			function progressCntPlus() {
				if(progressCnt<90){
					if (progressCnt == 20) {
						$('.progrecess_title').text("성향을 파악하는 중...");
					} else if (progressCnt == 50) {
						$('.progrecess_title').text("앗, 저도 그 책 좋아하는데");
					} else if (progressCnt == 80) {
						$('.progrecess_title').text("거의 다 됐어요!");
					}
					progressCnt += 10;
					progressBarPlus(progressCnt);
					$('#progrecess_num').text(progressCnt/10);
				} else if(progressCnt == 90){
					progressCnt += 10;
					progressBarPlus(progressCnt);
					$('#progrecess_num').text(progressCnt/10);
					sendUserRating();
					bookId = [];
					bookRating = [];
				} else {
					sendUserRating();
					bookId = [];
					bookRating = [];
				}
			}
			
			function checkedBookRationInput(id, rating, bookCheck) {
				
				if(bookCheck.text() == ''){
					bookCheck.text('check');
					bookId.push(id);
					bookRating.push(rating.attr('value'));
					progressCntPlus();
				} else {
					bookId.pop();
					bookRating.pop();
					bookId.push(id);
					bookRating.push(rating.attr('value'));
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
			
			/* 별점 입력시
			       해당 책에 히든 속성으로 점수 입력
			       별점생성 및 해당하는 책의 id와 점수를 스크립트 전역변수 배열에 추가 
			   check 텍스트를 넣어 해당 책의 평가 여부 구분*/
			$(".book_overlay_rating span").click(function(){
				$(this).parent().children('span').removeClass('on');
				$(this).addClass('on').prevAll('span').addClass('on');

				var book = $(this).parent().parent().parent();

				var id = book.attr('id');
				var rating = book.find('input[name=rating]');
				var bookCheck = book.find('.isRatingCheck');
				
				rating.attr("value", getInputRating(book) - 1);
				checkedBookRationInput(id, rating, bookCheck)
				
				console.log("-----------------");
				console.log(bookId);
				console.log(bookRating);
				console.log(progressCnt);
				console.log("-----------------");
			});
			
			$(".yes").click(function(){
				$('.userrating-overlay-base').addClass('hidden');
				$('.userrating-overlay').addClass('hidden');
			});
			$(".next").click(function(){
				sendUserRating();
				location.href="../mypage/library.do";
			});

			</script>
</body>
</html>

