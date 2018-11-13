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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/library.css" />
	<title>DBook</title>
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
								
								<div class="mypage-title"><a href="../mypage/library.do">내 서재</a></div>
									
								<div id="category_main_base">
									<div id="side-category-menu">
										<div id="side-category-menu_title">
											My Page
										</div>
										<div id="side-category-menu_title_category">
											<ul>
												<li class="bookmark-book cursor">관심있는 책</li>
												<li class="recent-book cursor">최근에 본 도서</li>
												<li class="review-book cursor">내가 쓴 리뷰</li>
											</ul>
										</div>
									</div>
								
									<div id="category-content" class="posts">
									
										<div class="bookmark-book-content">
											<div class="mypage-subtitle">
												<span>관심있는 책</span>
												<a class="bookmark-book more cursor">M O R E</a>
											</div>
											
											<div class="articles bookmark-book-list">
											</div>
											<div class="view-more hidden bookmark-view-more"><img src="/DBook/resources/images/arrow-60.png"></div>
										</div>
										
										<div class="recent-book-content">
											<div class="mypage-subtitle">
												<span>최근에 본 도서</span>
												<a class="recent-book more cursor"></a>
											</div>
											<div class="articles recent-book-list"></div>
										</div>
										
										<div class="review-book-content">
											<div class="mypage-subtitle">
												<span>내가 쓴 리뷰</span>
												<a class="review-book more cursor">M O R E</a>
											</div>
											<div id="reviews"></div>
											<div id="review-page"></div>
											
										</div>
									</div>
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
			<script src="../resources/assets/js/slide2.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.cookie-1.4.1.min.js"></script>
						
			<script type="text/javascript">
			var cookieBookArray = [];
			var bookmarkNTh = 0;
			var reviewNTh = 0;	
			var cookieNTh = 0;
			
			$(document).ready(function() {
				parseCookieToArray();
				if(cookieBookArray.length > 0){
					console.log('cookieBookArray > 0 조건만족');
					getCookieBookInfo();
				} else {
					console.log('cookieBookArray > 0 조건불만족');
					addEmptyBooks(4,$('.recent-book-list'));
				}
				reviews_print(1);
				bookmarkViewMore();
				category_toggle();
				
				$('.bookmark-book').click(function() {
					$('.more').slideUp(500);
					$('.view-more').slideDown(500);
					$('.bookmark-book-content').slideDown(500);
					$('.recent-book-content').slideUp(500);
					$('.review-book-content').slideUp(500);
					return false;
				});
				
				$('.recent-book').click(function() {
					$('.more').slideUp(500);
					$('.view-more').slideDown(500);
					$('.recent-book-content').slideDown(500);
					$('.bookmark-book-content').slideUp(500);
					$('.review-book-content').slideUp(500);
					return false;
				});
							
				$('.review-book').click(function() {
					$('.more').slideUp(500);
					$('.view-more').slideDown(500);
					$('.review-book-content').slideDown(500);
					$('.bookmark-book-content').slideUp(500);
					$('.recent-book-content').slideUp(500);
					return false;
				});
				
				
				$('.bookmark-view-more').click(function() {
					bookmarkViewMore();
					return false;
				});
				
				$('.review-view-more').click(function() {
					reviewViewMore();
					return false;
				});
				
				/* 리뷰 good 누를때 처리 */
				// 동적 생성 태그는 onclick 대신 이렇게
				$(document).on("click",".good",function (){
					var temp_this = $(this).parents().eq("0");
					
					if(${empty sessionScope.user}){
						alert("로그인이 필요한 서비스 입니다");
						location.href = "../user/login.do";
					}else{
						$.ajax({
							url : '../mypage/review_react.do',
							type : 'POST',
							dataType : 'json',
							data : {
										review_no : temp_this.parents().eq("0").children().eq("0").text(),
										id : '${sessionScope.user.id}',
										good_or_bad : 1
									},
							error : function(request, status, error){
						       	alert("code:"+request.status+"\n"+"error:"+error);
						    },
							success : function(r){
								temp_this.children().eq("0").css("border", "2px solid #f56a6a");
								temp_this.children().eq("1").css("border", "1px solid #ededed");
								temp_this.children().eq("0").children().eq("1").empty();
								temp_this.children().eq("0").children().eq("1").append(r.items[0].good);
								temp_this.children().eq("1").children().eq("1").empty();
								temp_this.children().eq("1").children().eq("1").append(r.items[1].bad);
							}
						});
					}
					return false;
				});
			
			/* 리뷰 bad 누를때 처리 */
				$(document).on("click",".bad",function (){
					var temp_this = $(this).parents().eq("0");
					
					if(${empty sessionScope.user}){
						alert("로그인이 필요한 서비스 입니다");
						location.href = "../user/login.do";
					}else{
						$.ajax({
							url : '../mypage/review_react.do',
							type : 'POST',
							dataType : 'json',
							data : {
										review_no : temp_this.parents().eq("0").children().eq("0").text(),
										id : '${sessionScope.user.id}',
										good_or_bad : 0
									},
							error : function(request, status, error){
						       	alert("code:"+request.status+"\n"+"error:"+error);
						    },
							success : function(r){
								temp_this.children().eq("0").css("border", "1px solid #ededed");
								temp_this.children().eq("1").css("border", "2px solid #f56a6a");
								temp_this.children().eq("0").children().eq("1").empty();
								temp_this.children().eq("0").children().eq("1").append(r.items[0].good);
								temp_this.children().eq("1").children().eq("1").empty();
								temp_this.children().eq("1").children().eq("1").append(r.items[1].bad);
							}
						});
					}
				});
				return false;
			});

			$(window).resize(function(){
				category_toggle();
				return false;
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
			
			function bookmarkViewMore() {
				$.ajax({
					url : '../mypage/bookmark.json',
					type : 'POST',
					dataType : 'json',
					data : {id :'${sessionScope.user.id}', nTh:bookmarkNTh},
					error : function(request, status, error){
				       	alert("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(data){
						addBookmark(data);
						bookmarkNTh++;
					}
				});
			}
			
			function addBookmark(data) {
				var s = "";
					s += '<div class = "bookmark-div-articles">';
				for(var i =0; i<data.items.length; i++){
					s += '<article>';
					s += '	<a href="${pageContext.request.contextPath}/book/bookDetail/' + data.items[i].book_id + '.do" class="image"><img src="' + books.items[i].cover + '" onError="this.onerror=null;this.src=\'${pageContext.request.contextPath}/resources/images/image-null.png\';"/></a>';
					s += '	<h3><a href="${pageContext.request.contextPath}/book/bookDetail/' + data.items[i].book_id + '.do">' + data.items[i].book_name + '</a></h3>';
					s += '	<p><a href="${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=' + data.items[i].author + '">' + data.items[i].author + '</a><br><a href="${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=' + data.items[i].publisher + '">' + data.items[i].publisher + '</a></p>';
					s += '</article>';
				}
				s += '</div>';
				$('.bookmark-book-list').append(s);
			}

			/* 리뷰 db에서 가져와서 출력 */
			function reviews_print(curPage){
				$.ajax({
					url : '../mypage/review.json',
					type : 'POST',
					dataType : 'json',
					data : {},
					error : function(request, status, error){
				       	alert("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(reviews){
						
						console.log(reviews);
						
						$("#reviews").children().remove()
						
						var totalPage = 0;
						var numPerPage = 10;
						
						if(reviews.items.length != 0){
							totalPage = Math.ceil(reviews.items.length / numPerPage);
						}
						var a = '';
						for(var i=0; i<reviews.items.length; i++){
							if(i>=(curPage-1)*numPerPage && i<curPage*numPerPage){
								
								if(reviews.items[i].cover == null)
									reviews.items[i].cover = "/DBook/resources/images/image-null.png";
								
								a += '<div class="reviewForm-base">';
								a += 	'<div class="review-cover">';
								a += 		'<article>';
								a += 		'<a href="#" class="image"><img src="' + reviews.items[i].cover + '"></a>';
								a += 		'</article>';
								a += 	'</div>';
								a += 		'<div id="review' + (i+1) + '" class="review">';
								a += 			'<div class="reviewForm0">' + reviews.items[i].review_no + '</div>';
								a += 			'<div class="reviewForm1">'+ reviews.items[i].book_name +'</div>';
								a +=			'<div class="reviewForm2">';
								a +=				'<div class="rating_point">' + reviews.items[i].rating + '</div>';
								a +=				'<span class="star_smallR1"></span>';
								a +=				'<span class="star_smallR2"></span>';
								a +=				'<span class="star_smallR1"></span>';
								a +=				'<span class="star_smallR2"></span>';
								a +=				'<span class="star_smallR1"></span>';
								a +=				'<span class="star_smallR2"></span>';
								a +=				'<span class="star_smallR1"></span>';
								a +=				'<span class="star_smallR2"></span>';
								a +=				'<span class="star_smallR1"></span>';
								a +=				'<span class="star_smallR2"></span>';
								a +=			'</div>';
								a +=			'<div class="reviewForm3">';
								if(reviews.items[i].content !=null){
									a +=	reviews.items[i].content
								}
								a +=			'</div>';
								a +=			'<div class="reviewForm4">' + reviews.items[i].review_reg_date + '</div>';
								a +=			'<div class="reviewForm5">';
								a +=				'<span class="good"><img src="${pageContext.request.contextPath}/resources/images/good.png"/><a>' + reviews.items[i].good + '</a></span>'
								a +=				'<span class="bad"><img src="${pageContext.request.contextPath}/resources/images/bad.png"/><a>' + reviews.items[i].bad + '</a></span>'
								a +=			'</div>';
								a += 		'</div><br>';
								a += 	'</div>';
								a += '</div>';
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
							
							reaction_border();
						}, 500);
					}
				});
			}
			
			function getInputRating(){
				return $("#rating span.on").length;
			}
		
			function reviews_rating(curPage){
				for(var i=(curPage-1)*10+1; i<=curPage*10; i++){
					if($("#review"+i).children(".reviewForm2").children(".rating_point").text() != 0){
						rating_point = $("#review"+i).children(".reviewForm2").children(".rating_point").text()-1;
						$("#review"+i).children(".reviewForm2").children("span").eq(rating_point).addClass('on').prevAll('span').addClass('on');
					}
				}
			}
		
			/* good, bad 눌렀던 리뷰 border style 바꾸기 */
			function reaction_border(){
				
				if(${!empty sessionScope.user} && $(".review").length != 0){
					var review_no_list = new Array();
					for(var i=0; i<$(".review").length; i++){
						review_no_list[i] = $(".review").eq(i).children().eq("0").text();
					}
					
					$.ajaxSettings.traditional = true;
					$.ajax({
						url : '${pageContext.request.contextPath}/review/reaction_border.do',
						type : 'POST',
						dataType : 'json',
						data : {
									review_no_list : review_no_list
								},
						error : function(request, status, error){
					       	alert("code:"+request.status+"\n"+"error:"+error);
					    },
						success : function(r){
							for(var i=0; i<$(".review").length; i++){
								if(r.items[i].reaction == 1){
									$(".review").eq(i).children().eq("5").children().eq("0").css("border", "2px solid #f56a6a");
								}else if(r.items[i].reaction ==0){
									$(".review").eq(i).children().eq("5").children().eq("1").css("border", "2px solid #f56a6a");
								}
							}
						}
					});
				}
			}
			</script>
						<script type="text/javascript">
			// 쿠키
			function parseCookieToArray() {
				for(var i = 1; i < 5; i++){
					order = 'recentBook' + i
					var a = $.cookie(order);
					if(a !== undefined){
						cookieBookArray.push(a);						
					}
				}
				console.log(cookieBookArray);
			}
			
			function getCookieBookInfo() {
				$.ajaxSettings.traditional = true;
				$.ajax({
					url : '../mypage/cookie.json',
					type : 'POST',
					dataType : 'json',
					data : {'cookieBookArray':cookieBookArray},
					error : function(request, status, error){
				       	alert("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(data){
						addCookieBooks(data);
						addEmptyBooks(4-cookieBookArray.length,$('.recent-div-articles'));
					}
				});
			}
			
			function addCookieBooks(data) {
				
				var temp = '';
				
				temp += '<div id="recent' + (i+1) + '" class="articles recent-book-list">';
				temp += 	'<div class="recent-div-articles">';
				
				for(var i=0; i<data.items.length; i++){
					if(data.items[i].cover == null)
						data.items[i].cover = "/DBook/resources/images/image-null.png";
					
					temp += 		'<article>';
					temp += 			'<a href="${pageContext.request.contextPath}/book/bookDetail/' + data.items[i].book_id + '.do" class="image"><img src="' + books.items[i].cover + '" onError="this.onerror=null;this.src=\'${pageContext.request.contextPath}/resources/images/image-null.png\';"/></a>';
					temp +=	 			'<h3><a href="${pageContext.request.contextPath}/book/bookDetail/' + data.items[i].book_id + '.do">' + data.items[i].book_name + '</a></h3>';
					temp +=				'<p><a href="${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=' + data.items[i].author + '">' + data.items[i].author + '</a><br><a href="${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=' + data.items[i].publisher + '">' + data.items[i].publisher + '</a></p>';
					temp += 		'</article>';
				}	
				
				temp += 	'</div>';
				temp += '</div>';
				
				$('.recent-book-list').append(temp);
				
			}
			
			function addEmptyBooks(num, obj) {
				
				var temp = '';
				
				for(var i=0; i<num; i++){
					temp += 		'<article>';
					temp += 			'<a href="" class="image"><img src="/DBook/resources/images/image-null.png"></a>';
					temp +=	 			'<h3><a href="">책 정보가 없습니다.</a></h3>';
					temp +=				'<p><a href=""></a><br><a href=""></a></p>';
					temp += 		'</article>';
				}
				
				obj.append(temp);
			}
			</script>
			<script>
			/*
			$(document).ready(function(){
				
				$("#category1").each(function(){
					
					if($(this).val()=="${requestScope.categories[0]}"){
						$(this).attr()
					}
					
				});	
			});
			*/
			</script>
</body>
</html>
