<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/SlideMenu.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/autocomplete.css" />
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/TopMenu.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/detail.css" />

<title>DBook</title>
<style type="text/css">
.detail-section {
	width: 100%;
	height: auto;
	padding-top: 30px !important;
	float: left;
	border-top: 0px;
}

.info-head {
	padding-top: 15px !important;
	padding-bottom: unset !important;
}

#category_select {
	display: -webkit-box;
	padding-bottom : 15px;
	vertical-align: middle;
	border-bottom: 1px solid #7f888f;
}

#category_select select {
	height: 1.75em;
	margin-left: 5px;
	margin-right: 5px;
}

/* 책 정보, 이미지 */
#book-name {
	margin-bottom: 0;
	float: left;
	display: inline-block;
}

#interest {
	color: white;
	background-color: #47a3da;
	border-radius: 8px;
	width: fit-content;
	padding: 2px 5px;
	float: right;
	position: inherit;
	display: inline-block;
	cursor: pointer;
}

#view-cnt {
	float: right;
	position: relative;
	top: 30px;
	left: 50px;
	display: inline-block;
}

#book_info {
	width: 100%;
	text-align: center;
	margin: auto;
}

#cover_image {
	width: 25%;
	height: auto;
	margin: 0;
	padding-left: 3%;
	padding-right: 3%;
	display: inline-block;
	float: left;
}

.book_info_table {
	width: 75%;
	height: auto;
	margin: 0;
	display: table;
	float: left;
	padding-left: 3%;
	padding-right: 3%;
}

.book_info_row {
	display: table-row;
}

.book_info_cell {
	display: table-cell;
	padding: 8px;
}

.book_info_col1 {
	width: 15%;
	font-weight: bold;
	color: black;
}

.book_info_col2 {
	width: 32%;
}

#avg_rating_point {
	float: right;
	margin-left: 20px;
	font-size: 1.5em;
}

/* 별점 */
.starR1 {
	background:
		url('${pageContext.request.contextPath}/resources/images/star.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
}

.starR2 {
	background:
		url('${pageContext.request.contextPath}/resources/images/star.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
}

.star_smallR1 {
	background:
		url('${pageContext.request.contextPath}/resources/images/star_small.png')
		no-repeat -26px 0;
	background-size: auto 100%;
	width: 7.5px;
	height: 15px;
	float: left;
	text-indent: -9999px;
}

.star_smallR2 {
	background:
		url('${pageContext.request.contextPath}/resources/images/star_small.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 7.5px;
	height: 15px;
	float: left;
	text-indent: -9999px;
}

#rating>span {
	cursor: pointer;
}

#avg_rating {
	display: inline-block;
	height: 30px;
}

#rating {
	display: inline-block;
	height: 20px;
	margin-left: 20px;
	position: relative;
	top: -3px;
}

.reviewForm2>span {
	width: 8px;
	height: 16px;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}

.star_smallR1.on {
	background-position: 0 0;
}

.star_smallR2.on {
	background-position: -7.5px 0;
}

/* 리뷰 */
#reviews {
	padding: 0 20px;
}

.reviewForm1 {
	font-size: 15px;
	color: #2a2a2a;
	line-height: 25px;
	font-weight: 800;
	display: inline;
}

.reviewForm2 {
	display: inline-block;
	margin-left: 15px;
	position: relative;
	top: 2px;
}

.reviewForm3 {
	font-size: 13px;
	color: black;
	line-height: 18px;
	word-break: break-all;
	padding: 5px;
}

.reviewForm4 {
	display: inline;
}

.reviewForm5 {
	float: right;
	display: inline-block;
}

.rating_point {
	display: none;
}

.page-number {
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	border: none;
}

.good, .bad {
	float: left;
	position: relative;
	min-width: 15px;
	padding: 1px 7px;
	margin: 0 2px;
	margin-bottom: 2px;
	border: 1px solid #ededed;
	background-color: #fff;
	cursor: pointer;
}

.good>img, .bad>img {
	width: 15px;
	margin-right: 2px;
}

.good>a, .bad>a {
	color: #7f888f;
	border: none;
}

#review-submit {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	border: 0;
	font-size: 12px;
	cursor: pointer;
	border-radius: 5px;
	margin: -30px 0 10px 15px;
}

#review-page {
	text-align: center;
}
</style>
</head>
<body>

	<!-- topMenu -->
	<jsp:include page="../include/TopMenu.jsp" />

	<!-- Wrapper -->
	<button id="showLeft"
		style="position: fixed; right: 0px; z-index: 100;">Menu</button>
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<jsp:include page="../include/HeaderMenu.jsp" />

				<!-- Section -->
				<section style="padding: 15px 0 0 0; margin: 0; height: auto; border: none;">
					<div id="category_select">

						<a href="${pageContext.request.contextPath}"
							style="border: hidden;">홈 ></a> <select style="width: auto;">

							<option>${requestScope.categories["0"]}</option>
							<option>국내도서</option>
							<option>국외도서</option>
						</select> <span>></span> <select style="width: auto;">
							<option>${requestScope.categories["0"]}</option>
							<option>국내도서</option>
							<option>국외도서</option>
						</select> <span>></span> <select style="width: auto;">
							<option>${requestScope.categories["0"]}</option>
							<option>국내도서</option>
							<option>국외도서</option>
						</select>
					</div>
					<%-- 
					<div style="padding-bottom: 10px;">
						<h3 id="book-name">${requestScope.book.book_name}</h3>
						<div id="interest">관심 +</div>
						<h5 id="view-cnt">조회수 ${requestScope.book.view_cnt}</h5>
					</div>
					 --%>
				</section>

				<section class="detail-section info-head">
					<div style="display: inline-block; width: 100%; padding-bottom: 20px;">
						<h3 id="book-name">${requestScope.book.book_name}</h3>
						<div id="interest">관심 +</div>
						<h5 id="view-cnt">조회수 ${requestScope.book.view_cnt}</h5>
					</div>
				</section>

				<section class="detail-section">
					<div id="book_info">
						<div id="cover_image">
							<img src="${requestScope.book.cover}"
								style="width: 100%; height: auto;" />
						</div>
						<div class="book_info_table">
							<div class="book_info_row">
								<div class="book_info_cell book_info_col1">저자</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.author}</div>
								<div class="book_info_cell book_info_col1">번역</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.translator}</div>
							</div>
							<div class="book_info_row">
								<div class="book_info_cell book_info_col1">출판사</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.publisher}</div>
								<div class="book_info_cell book_info_col1">출판일</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.published_date}</div>
							</div>
							<div class="book_info_row">
								<div class="book_info_cell book_info_col1">형태</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.form_detail}</div>
								<div class="book_info_cell book_info_col1">eBOOK</div>
								<div class="book_info_cell book_info_col2">
									<c:if test="${requestScope.book.is_ebook==0}">없음</c:if>
									<c:if test="${requestScope.book.is_ebook==1}">있음</c:if>
								</div>
							</div>
							<div class="book_info_row">
								<div class="book_info_cell book_info_col1">ISBN 10</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.isbn_10}</div>
								<div class="book_info_cell book_info_col1">ISBN 13</div>
								<div class="book_info_cell book_info_col2">${requestScope.book.isbn_13}</div>
							</div>
						</div>
						<div class="book_info_table" style="float: right;">
							<div class="book_info_row">
								<div class="book_info_cell book_info_col1"
									style="vertical-align: middle;">평점</div>
								<div class="book_info_cell"
									style="width: 85%; text-align: center;">
									<div id="avg_rating">
										<span class="starR1"></span> <span class="starR2"></span> <span
											class="starR1"></span> <span class="starR2"></span> <span
											class="starR1"></span> <span class="starR2"></span> <span
											class="starR1"></span> <span class="starR2"></span> <span
											class="starR1"></span> <span class="starR2"></span>
										<div id="avg_rating_point"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="detail-section">
					<h3>책 소개</h3>
					<c:forEach var="item" items="${requestScope.book_introduction}">
										${item}
										<br>
					</c:forEach>
				</section>

				<section class="detail-section">
					<h3>저자 소개</h3>
					<c:forEach var="item" items="${requestScope.author_introduction}">
										${item}
										<br>
					</c:forEach>
				</section>

				<section class="detail-section">
					<h3>목차</h3>
					<c:forEach var="item" items="${requestScope.contents}">
										${item}
										<br>
					</c:forEach>
				</section>

				<section class="detail-section">
					<h3 style="display: inline;">의견 남기기</h3>
					<div id="rating">
						<span class="starR1"></span> <span class="starR2"></span> <span
							class="starR1"></span> <span class="starR2"></span> <span
							class="starR1"></span> <span class="starR2"></span> <span
							class="starR1"></span> <span class="starR2"></span> <span
							class="starR1"></span> <span class="starR2"></span>
					</div>

					<div id="reviewInput"
						style="margin-top: 20px; margin-bottom: 20px;">
						<form name="reviewInputForm"
							action="${pageContext.request.contextPath}/review/write.do"
							onsubmit="return check_before_input()" method="post">
							<div class="input-group" style="width: 95%; margin: 0 auto;">
								<input type="hidden" name="id" value="${sessionScope.user.id}">
								<input type="hidden" name="book_id"
									value="${requestScope.book.book_id}"> <input
									type="hidden" name="rating" value="0">
								<textarea class="form-control" style="resize: none;"
									placeholder="남기고 싶은 글을 남기세요" name="content"></textarea>
							</div>
						</form>
						<button type="submit" id="review-submit">등록</button>
					</div>

					<h3 id="reviews-count">의견 ( ${requestScope.reviews.size()} )</h3>
					<div id="reviews"></div>
					<div id="review-page"></div>
				</section>

			</div>
		</div>
	</div>

	<!-- Sidebar -->
	<jsp:include page="../include/SlideSideMenu.jsp"></jsp:include>
	<jsp:include page="../include/SlideTopMenu.jsp"></jsp:include>


	<!-- Scripts -->
	<jsp:include page="../include/JS.jsp"></jsp:include>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>

	<script>
					$(document).ready(function() {
						detailForm();
						reviews_print(1);
						avg_rating();
					});
		
					$(window).resize(function(){
						detailForm();
					});
				
				
				/* 책 정보 */
					/* 평점 계산 후 출력 */
					function avg_rating(){
						$.ajax({
							type : 'post',
							url : '${pageContext.request.contextPath}/review/avg_rating.do',
							data : {book_id :'${requestScope.book.book_id}'},
							error : function(request, status, error){
						       	alert("code:"+request.status+"\n"+"error:"+error);
						    },
							success : function(avg_rating){
								$("#avg_rating").children("span").removeClass('on');
								var rating_point = avg_rating;
								$("#avg_rating_point").text(rating_point);
								if(rating_point != 0){
									rating_point = Math.round(rating_point - 1);
									$("#avg_rating").children("span").eq(rating_point).addClass('on').prevAll('span').addClass('on');
								}
							}
						});
					}
					
				/* 리뷰 */
					/* 별 누를때 */
						$("#rating span").click(function(){
							  $(this).parent().children('span').removeClass('on');
							  $(this).addClass('on').prevAll('span').addClass('on');
							  $('input[name=rating]').attr("value", getInputRating());
							});
			
					/* 리뷰 등록 */
						$("#review-submit").click(function(){
							if(check_before_input()){
								$.ajax({
									type : 'post',
									url : '${pageContext.request.contextPath}/review/write.do',
									data : $("form[name=reviewInputForm]").serialize(),
									error : function(request, status, error){
								       	alert("code:"+request.status+"\n"+"error:"+error);
								    },
									success : function(){
										$("#rating").children('span').removeClass('on');
										$("#reviewInput").children().eq("0").children().eq("0").children().eq("3").val('');
										
										reviews_print(1);
										avg_rating();
									}
								});
							}
						});
						
					
					/* 리뷰별 별점 출력 */
						function reviews_rating(curPage){
							for(var i=(curPage-1)*10+1; i<=curPage*10; i++){
								if($("#review"+i).children(".reviewForm2").children(".rating_point").text() != 0){
									rating_point = $("#review"+i).children(".reviewForm2").children(".rating_point").text()-1;
									$("#review"+i).children(".reviewForm2").children("span").eq(rating_point).addClass('on').prevAll('span').addClass('on');
								}
							}
						}
					
					/* 리뷰 보내기전 확인 */
						function check_before_input(){
							if(${empty user}){
								alert("로그인이 필요한 서비스 입니다");
								location.href = "${pageContext.request.contextPath}/user/login.do";
								return false;
							}else if($('textarea.form-control').eq(0).val()==""){
								alert("글을 입력해 주세요");
								return false;
							}
							return true;
						}
					
					/* 별점 입력값 구하기 */
						function getInputRating(){
							return $("#rating span.on").length;
						}
						
					/* 리뷰 db에서 가져와서 출력 */
						function reviews_print(curPage){
							$.ajax({
								type : 'post',
								url : '${pageContext.request.contextPath}/review/bookDetail_review.do',
								type : 'POST',
								dataType : 'json',
								data : {book_id :'${requestScope.book.book_id}'},
								error : function(request, status, error){
							       	alert("code:"+request.status+"\n"+"error:"+error);
							    },
								success : function(reviews){
									$("#reviews").children().remove()
									
									var totalPage = 0;
									var numPerPage = 10;
									
									if(reviews.items.length != 0){
										totalPage = Math.ceil(reviews.items.length / numPerPage);
									}
									
									$("#reviews-count").empty();
									var text = "의견 (" + reviews.items.length + ")";
									$("#reviews-count").append(text);
									
									var a = '';
									for(var i=0; i<reviews.items.length; i++){
										if(i>=(curPage-1)*numPerPage && i<curPage*numPerPage){
											a += '<div id="review' + (i+1) + '" class="review">';
											a += 	'<div class="reviewForm1">' + reviews.items[i].nickname + ' (' + reviews.items[i].id + ')</div>';
											a +=	'<div class="reviewForm2">';
											a +=		'<div class="rating_point">' + reviews.items[i].rating + '</div>';
											a +=		'<span class="star_smallR1"></span>';
											a +=		'<span class="star_smallR2"></span>';
											a +=		'<span class="star_smallR1"></span>';
											a +=		'<span class="star_smallR2"></span>';
											a +=		'<span class="star_smallR1"></span>';
											a +=		'<span class="star_smallR2"></span>';
											a +=		'<span class="star_smallR1"></span>';
											a +=		'<span class="star_smallR2"></span>';
											a +=		'<span class="star_smallR1"></span>';
											a +=		'<span class="star_smallR2"></span>';
											a +=	'</div>';
											a +=	'<div class="reviewForm3">' + reviews.items[i].content + '</div>';
											a +=	'<div class="reviewForm4">' + reviews.items[i].review_reg_date + '</div>';
											a +=	'<div class="reviewForm5">';
											a +=		'<span class="good"><img src="${pageContext.request.contextPath}/resources/images/good.png"/><a>' + reviews.items[i].good + '</a></span>'
											a +=		'<span class="bad"><img src="${pageContext.request.contextPath}/resources/images/bad.png"/><a>' + reviews.items[i].bad + '</a></span>'
											a +=	'</div>';
											a += '</div><br>';
										}
									}
									$("#reviews").append(a);
									
									$("#review-page").empty();
									var b = '';
									b += '<a class="page-number" href="javascript:reviews_print(1)"> << </a>';
									if(curPage<5){
										for(var i=1; i<=(totalPage<5?totalPage:5); i++){
											b += '<a class="page-number" href="javascript:reviews_print(' + i + ')">' + i + '</a>';
										}
									}else if(curPage+3 > totalPage){
										for(var i=totalPage-4; i<=totalPage; i++){
											b += '<a class="page-number" href="javascript:reviews_print(' + i + ')">' + i + '</a>';
										}
									}else{
										for(var i=curPage-2; i<=curPage+2; i++){
											b += '<a class="page-number" href="javascript:reviews_print(' + i + ')">' + i + '</a>';
										}
									}
									b += '<a class="page-number" href="javascript:reviews_print(' + totalPage + ')"> >> </a>'
									$("#review-page").append(b);
									
									setTimeout(function(){
										reviews_rating(curPage);
										$('input[name=rating]').attr("value", getInputRating());
									}, 500);
								}
							});
						}
					
				/* 창크기 반응 */
					function detailForm(){
						
						if($(window).width()>900){
							$("#book_info").css("width","700px");
							$("#cover_image").css("width","25%");
							$(".book_info_table").css("width","75%");
						}
						else if($(window).width()>660){
							$("#book_info").css("width","100%");
							$("#cover_image").css("width","25%");
							$(".book_info_table").css("width","75%");
					    }
						else{
							$("#book_info").css("width","100%");
							$("#cover_image").css("width","100%");
							$(".book_info_table").css("width","100%");							
					    }
					}
			</script>


</body>
</html>