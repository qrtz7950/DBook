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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/swiper.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/layerPopUp.css" />
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
	
	<title>DBook</title>
	
	<style>	
	
	.swiper-slide > div > img{
		width: auto;
		height: 230px;
	}
	
	.hidden-book-id{display: none;}
	.book-package:hover{cursor: pointer;}
	.book-package > div {min-height: 48px;}
	
	#banner{
	    left: -20%;
	    position: relative;
	    width: 140%;
	    height: -webkit-fill-available;
	    background: url(/DBook/resources/images/index.jpg) center center / cover no-repeat;
	}
	
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
      	position: absolute;
      }
      
      #index-up{
		position: absolute;
		top: 35%;
		width: 700px;
		left: calc((100% - 700px)/2);
		z-index: 965;
		text-align: center;
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
		margin: 50px 0 0 0;
     }
      
    #index-btn:hover {
		background-color: #f3a0a0;
	}
	
	#bottom-login {
		font-size: 20px;
		color: #ffffff;
		border-radius: 200px;
		background-color: #fc426a;
		padding: 10px 30px;
		margin: 0 0 0 0;
	}
	
	 #bottom-login:hover {
		background-color: #f3a0a0;
	}
	
	</style>
</head>
<body>
		<!-- topMenu -->
			<jsp:include page="../include/TopMenu.jsp"/>
			
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Banner -->
							<c:if test="${empty user}">
								<section id="banner">
									<div id="index-black" class="cover"></div>
									<div id="index-up" class="cover">
										<a>오늘은 무슨책?</a>
										<br>
										<div style="color: #f3a0a0">나를 위한 맞춤 책 추천사이트</div>
										<button id="index-btn">DBook</button>
									</div>
								</section>
							</c:if>

							<!-- Header -->
								<jsp:include page="../include/HeaderMenu.jsp"/>

							<!-- Section -->
								<section id="recommend-book">
									<header class="major">
										<h2>높은 평점을 받은 도서</h2>
									</header>
									<div class="swiper-container" id="top-rating-books">
											<div class="swiper-wrapper">
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
									</div>
									
									<header class="major">
										<h2>조회수가 높은 도서</h2>
									</header>
									<div class="swiper-container" id="top-view_cnt-books">
											<div class="swiper-wrapper">
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
									</div>

									<header class="major">
										<h2>사람들의 관심이 많은 도서</h2>
									</header>
									<div class="swiper-container" id="top-interest-books">
											<div class="swiper-wrapper">
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
									</div>
									
									<c:if test="${empty user}">
										<div style="text-align: center; margin-top: 20px;">
											<hr>
											<h2>로그인하시면 나에게 맞는 추천을 받을수 있어요</h2>
											<a href="${pageContext.request.contextPath}/user/login.do" id="bottom-login">Login</a>
										</div>
									</c:if>
									
								</section>

						</div>
					</div>
			</div>
					
		<!-- layerPopUp -->
		
		<div id="layerPopUp_mask" class="hidden"></div>
		
				<div class="layerPopUp hidden">
					<div id="layer" class="layer-wrap">
						<div class="pop-layer">
							<div class="pop-container">
								<div class="pop-conts">
									서비스를 이용하기 위하여 성별과 나이 정보가 필요합니다<br><br>
									
									<div id="infoForm">
										<div class="infoText">나이</div>
										<div>
											<select id="age_range" name="age_range">
												<option selected value="0~9">0~9</option>
												<option value="10~19">10~19</option>
												<option value="20~29">20~29</option>
												<option value="30~39">30~39</option>
												<option value="40~49">40~49</option>
												<option value="50~59">50~59</option>
												<option value="60~69">60~69</option>
												<option value="70~79">70~79</option>
												<option value="80~89">80~89</option>
												<option value="90~99">90~99</option>
											</select>
										</div>
										<div class="infoText">성별</div>
										<div>
											<select id="gender" name="gender">
												<option selected value="male">남자</option>
												<option value="female">여자</option>
											</select>
										</div>
									</div>
									<div class="btn-r">
										<a id="userInfo" href="#" class="btn-layerClose"><strong>확인</strong></a>
									</div>
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
			<!-- <script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script> -->
			
		<!-- 변수 설정 -->
			<script>
				var login_check = ${!empty user};
				
				var mode = 0;
				var recommendArray = new Array();
				var infoPerPage = 7;
				
				var recommendObj = new Object();
				recommendObj.recommendWhat = "높은 평점을 받은 도서";
				recommendObj.id = "top-rating-books";
				recommendArray.push(recommendObj);
				
				var recommendObj = new Object();
				recommendObj.recommendWhat = "조회수가 높은 도서";
				recommendObj.id = "top-view_cnt-books";
				recommendArray.push(recommendObj);
				
				var recommendObj = new Object();
				recommendObj.recommendWhat = "사람들의 관심이 많은 도서";
				recommendObj.id = "top-interest-books";
				recommendArray.push(recommendObj);
				
				var recommendObj = new Object();
				recommendObj.recommendWhat = "회원님의 연령대가 좋아하는 도서";
				recommendObj.id = "top-user_age-books";
				recommendArray.push(recommendObj);
				
				var recommendObj = new Object();
				recommendObj.recommendWhat = "회원님의 평가와 유사한 사람들의 도서";
				recommendObj.id = "similar-rating-books";
				recommendArray.push(recommendObj);
				
				var recommendObj = new Object();
				recommendObj.recommendWhat = "관심도서가 같은 사람들의 또다른 관심도서";
				recommendObj.id = "same-interest-books";
				recommendArray.push(recommendObj);
			</script>
		
		<!-- 초기 화면 설정 -->
			<script>
				$(document).ready(function(){
					if(!login_check){
		   				setTimeout(function(){
		   					$('#index-btn').fadeIn(1000);
		   				}, 2000);
					}
	   			});
				
	   			
	   			// scroll lock
	   			if(!login_check){	   				
		   			$('html, body').css({'overflow': 'hidden', 'height': '100%'});
		   			$('#element').on('scroll touchmove mousewheel', function(event) {
		   			  event.preventDefault();
		   			  event.stopPropagation();
		   			  return false;
		   			});
	   			}
	   			
	   			$('#index-btn').click(function(){
	   				$('html, body').css({'overflow': '', 'height': ''});	// scroll lock 해제
	   				$('#element').off('scroll touchmove mousewheel');
	   				$('#banner').slideUp(1000);
	   			});
			</script>
		
		<!-- 로그인 유저정보 추가입력 -->
			<c:if test="${not empty user.id and user.gender == 'none' or user.age_range == 'none'}">
            <script>
	            function wrapWindowByMask(){
	                var maskHeight = $(document).height();  
	                var maskWidth = $(window).width();  
	
	                $('#mask').css({'width':maskWidth,'height':maskHeight});  
	
	                $('#mask').fadeIn(1000);      
	                $('#mask').fadeTo("slow",0.8);    
	        	}
            
               $( document ).ready(function() {
                  $('.layerPopUp').removeClass('hidden');
                  wrapWindowByMask();
                  $('#layerPopUp_mask').removeClass('hidden');
                  $('#userInfo').click(function() {
                      $.ajax({
                          type: "POST",
                          url: "${pageContext.request.contextPath}/user/update.do",
                          data: {
                        	  "id" : '${user.id}',
                              "nickname" : '${user.nickname}',
                              "profile_image" : '${user.profile_image}',
                              "thumbnail_image" : '${user.thumbnail_image}',
                              "age_range" : $('#age_range').val(),
                              "gender" : $('#gender').val()
                          },
                          success: function() {
                             $('.layerPopUp').addClass('hidden');
                             $('#mask').hide();
                          }, error: function() {
                             $('.layerPopUp').addClass('hidden');
                             $('#mask').hide();
                          }
                      });
                   });
            	});
            </script>
         	</c:if>
         
         <!-- 슬라이드 관련 -->
	         <script>
	         	// 각 조건에 따라 추천책 띄우기
	         	$(document).ready(function(){
	         		slideSetting('.swiper-sample', infoPerPage);
	         		
	         		// 평점이 높은 책 추천
	         		select_books('#'+recommendArray[mode].id, mode++);
	         		// 조회수가 높은 책 추천
	         		select_books('#'+recommendArray[mode].id, mode++);
	         		// 관심이 높은 책 추천
	         		select_books('#'+recommendArray[mode].id, mode++);
	         	});
	         	
	         	// 책 누를 시 이동
	         	$(document).on("click",".book-package",function (){
	         		var temp_bookId = $(this).children().eq('0').text();
	         		location.href = "${pageContext.request.contextPath}/book/bookDetail/" + temp_bookId + ".do";
	         	});
	         	
	         	// id, mode를 받아 알맞은 책들을 해당 위치에 넣음
	         	function select_books(id, mode){
	         		$.ajax({
						url : '${pageContext.request.contextPath}/book/select_books.do',
						type : 'POST',
						dataType : 'json',
						data : {
							'mode' : mode,
							'start': 1,
							'end': 21
						},
						error : function(request, status, error){
					       	console.log("code:"+request.status+"\n"+"error:"+error);
					    },
						success : function(books){
							$(id).children().eq('0').empty();
							var a = '';
							for(var i=0; i<books.items.length; i++){
								var book_name = books.items[i].book_name;
								if(book_name.length > 22) {
									book_name = book_name.substring(0, 21) + "...";
								}
								a += '<div class="swiper-slide">';
								a += 	'<div class="book-package">';
								a +=		'<div class="hidden-book-id">' + books.items[i].book_id + '</div>';
								a +=		'<img src="' + books.items[i].cover + '" onError="this.onerror=null;this.src=\'${pageContext.request.contextPath}/resources/images/image-null.png\';" />';
								a += 		'<div>' + book_name + '</div>';
								a +=	'</div>';
								a += '</div>';
							}
							
							// 정보 모자랄때 빈칸 처리
							for(var i=0; i < 7 - books.items.length; i++){
								a += '<div class="swiper-slide">';
								a += 	'<div class="book-package">';
								a +=		'<img src="${pageContext.request.contextPath}/resources/images/image-null.png" />';
								a += 		'<div>' + "추천책 없음" + '</div>';
								a +=	'</div>';
								a += '</div>';
							}
							
							$(id).children().eq('0').append(a);
							
							slideSetting(id, infoPerPage); 
						}
					});
	         	}
	         	
	         	// 슬라이드 설정 함수
	         	function slideSetting(where, number){
	         		new Swiper(where, {
	         			
						slidesPerView : number, // 동시에 보여줄 슬라이드 갯수
						spaceBetween : 20, // 슬라이드간 간격
						slidesPerGroup : number, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

						// 그룹수가 맞지 않을 경우 빈칸으로 메우기
						// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
						loopFillGroupWithBlank : true,

						loop : true, // 무한 반복

						pagination : { // 페이징
							el : '.swiper-pagination',
							clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
						},
						navigation : { // 네비게이션
							nextEl : '.swiper-button-next', // 다음 버튼 클래스명
							prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
						}
					});
	         	}
			</script>
			
		<!-- 로그인 시 추가 추천 -->
			<script>
				$(window).scroll(function() {
				    if ($(window).scrollTop() == $(document).height() - $(window).height() && login_check && mode-recommendArray.length!=0) {
				      var a = '';
				      a +=	'<header class ="major">';
				      a += 		'<h2>' + recommendArray[mode].recommendWhat + '</h2>';
				      a +=	'</header>';
				      a +=	'<div class="swiper-container" id="' + recommendArray[mode].id + '">';
				      a +=		'<div class="swiper-wrapper">';
				      a +=		'</div>';
				      a +=		'<div class="swiper-button-next"></div>';
				      a +=		'<div class="swiper-button-prev"></div>';
				      a +=		'<div class="swiper-pagination"></div>';
				      a +=	'</div>';
				      
				      $("#recommend-book").append(a);
				      select_books('#'+recommendArray[mode].id, mode++);
				    }
				});
			</script>
</body>
</html>