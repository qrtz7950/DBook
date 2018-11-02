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
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
	
	<title>DBook</title>
	
	<style>	
	
	.swiper-slide > div > img{
		width: auto;
		height: 230px;
	}
	
	#banner{
	    left: -10%;
	    position: relative;
	    width: 120%;
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
								<section id="banner">
									<div id="index-black" class="cover"></div>
									<div id="index-up" class="cover">
										<a>오늘은 무슨책?</a>
										<br>
										<div style="color: #f3a0a0">나를 위한 맞춤 책 추천사이트</div>
										<button id="index-btn">DBook</button>
									</div>
								</section>

							<!-- Header -->
								<jsp:include page="../include/HeaderMenu.jsp"/>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>추천도서</h2>
									</header>
									<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/280/14028062.jpg"><div>존 러스킨의 생명의 경제학</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/308/14030874.jpg"><div>기억 파단자</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/671/14067118.jpg"><div>5년 전에 잊어린 것</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/526/14052659.jpg"><div>펭귄 하이웨이</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/670/14067045.jpg"><div>악마의 미학</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/187.jpg"><div>7</div></div></div>
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/176.jpg"><div>8</div></div></div> -->
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/461.jpg"><div>9</div></div></div> -->
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/321.jpg"><div>10</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/521.jpg"><div>11</div></div></div>
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/400.jpg"><div>12</div></div></div> -->
												<div class="swiper-slide"><div><img src="http://biketago.com/img/p/407.jpg"><div>13</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/288.jpg"><div>14</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/557.jpg"><div>15</div></div></div>
												<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
									</div>
									
									<header class="major">
										<h2>추천도서2</h2>
									</header>
									<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/280/14028062.jpg"><div>존 러스킨의 생명의 경제학</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/308/14030874.jpg"><div>기억 파단자</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/671/14067118.jpg"><div>5년 전에 잊어린 것</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/526/14052659.jpg"><div>펭귄 하이웨이</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/670/14067045.jpg"><div>악마의 미학</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/187.jpg"><div>7</div></div></div>
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/176.jpg"><div>8</div></div></div> -->
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/461.jpg"><div>9</div></div></div> -->
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/321.jpg"><div>10</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/521.jpg"><div>11</div></div></div>
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/400.jpg"><div>12</div></div></div> -->
												<div class="swiper-slide"><div><img src="http://biketago.com/img/p/407.jpg"><div>13</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/288.jpg"><div>14</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/557.jpg"><div>15</div></div></div>
												<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
									</div>

									<header class="major">
										<h2>추천도서3</h2>
									</header>
									<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/280/14028062.jpg"><div>존 러스킨의 생명의 경제학</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/308/14030874.jpg"><div>기억 파단자</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/671/14067118.jpg"><div>5년 전에 잊어린 것</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/526/14052659.jpg"><div>펭귄 하이웨이</div></div></div>
												<div class="swiper-slide"><div><img src="https://bookthumb-phinf.pstatic.net/cover/140/670/14067045.jpg"><div>악마의 미학</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/187.jpg"><div>7</div></div></div>
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/176.jpg"><div>8</div></div></div> -->
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/461.jpg"><div>9</div></div></div> -->
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/321.jpg"><div>10</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/521.jpg"><div>11</div></div></div>
<!-- 												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/400.jpg"><div>12</div></div></div> -->
												<div class="swiper-slide"><div><img src="http://biketago.com/img/p/407.jpg"><div>13</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/288.jpg"><div>14</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/557.jpg"><div>15</div></div></div>
												<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
											</div>
										
											<!-- 네비게이션 -->
											<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
											<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
										
											<!-- 페이징 -->
											<div class="swiper-pagination"></div>
									</div>
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
			<script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>
			
			
		
			<script>
				$(document).ready(function(){
	   				setTimeout(function(){
	   					$('#index-btn').fadeIn(1000);
	   				}, 2000);
	   			});
	   			
	   			// scroll lock
	   			$('html, body').css({'overflow': 'hidden', 'height': '100%'});
	   			$('#element').on('scroll touchmove mousewheel', function(event) {
	   			  event.preventDefault();
	   			  event.stopPropagation();
	   			  return false;
	   			});
	   			
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
</body>
</html>