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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/layoutPopUp.css" />
		
	<title>DBook</title>
	
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
									<div class="content">
										<header>
											<h1>Hi, I’m Editorial<br />
											by HTML5 UP</h1>
											<p>A free and fully responsive site template</p>
										</header>
										<p>Aenean ornare velit lacus, ac varius enim ullamcorper eu. Proin aliquam facilisis ante interdum congue. Integer mollis, nisl amet convallis, porttitor magna ullamcorper, amet egestas mauris. Ut magna finibus nisi nec lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien ac quam. Lorem ipsum dolor sit nullam.</p>
										<ul class="actions">
											<li><a href="#" class="button big">Learn More</a></li>
										</ul>
									</div>
									<span class="image object">
										<img src="${pageContext.request.contextPath}/resources/images/pic10.jpg" alt="" />
									</span>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>slide</h2>
									</header>
									<div class="swiper-container">
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide"><div><img src="http://oldmidi.cdn3.cafe24.com/p/578.jpg"><div>1</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/099.jpg"><div>2</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/334.jpg"><div>3</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/526.jpg"><div>4</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/563.jpg"><div>5</div></div></div>
												<div class="swiper-slide"><div><img src="http://oldmidi.cdn3.cafe24.com/p/019.jpg"><div>6</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.dothome.co.kr/img/p/187.jpg"><div>7</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/176.jpg"><div>8</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/461.jpg"><div>9</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/321.jpg"><div>10</div></div></div>
												<div class="swiper-slide"><div><img src="http://mabinogi.filamt.com/img/p/521.jpg"><div>11</div></div></div>
												<div class="swiper-slide"><div><img src="http://superkts.bl.ee/img/p/400.jpg"><div>12</div></div></div>
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
										<div style="text-align:center; margin-top:5px;">랜덤사진 갤러리</div>
									</div>
								</section>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ipsum sed dolor</h2>
									</header>
									<div class="posts">
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic01.jpg" alt="" /></a>
											<h3>Interdum aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic02.jpg" alt="" /></a>
											<h3>Nulla amet dolore</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic03.jpg" alt="" /></a>
											<h3>Tempus ullamcorper</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic04.jpg" alt="" /></a>
											<h3>Sed etiam facilis</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic05.jpg" alt="" /></a>
											<h3>Feugiat lorem aenean</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic06.jpg" alt="" /></a>
											<h3>Amet varius aliquam</h3>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											<ul class="actions">
												<li><a href="#" class="button">More</a></li>
											</ul>
										</article>
									</div>
								</section>

						</div>
					</div>
			</div>
					
		<!-- layerPopUp -->
				<div class="layerPopUp hidden">
					<div class="infoForm">
						서비스를 이용하기 위하여 성별과 나이 정보가 필요합니다<br><br>
						<form action="" method="post">
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
							<select id="gender" name="gender">
								<option selected value="male">남자</option>
								<option value="female">여자</option>
							</select>
							<button id="userInfo">확인</button>
						</form>
					</div>
				</div>
					
		<!-- Sidebar -->
			<jsp:include page="../include/SideMenu.jsp"></jsp:include>
					

		<!-- Scripts -->
			<jsp:include page="../include/JS.jsp"></jsp:include>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/js/swiper.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>
			
			
		<!-- 로그인 유저정보 추가입력 -->
			<c:if test="${not empty user.id and user.gender == 'none' or user.age_range == 'none'}">
            <script>
               $( document ).ready(function() {
                  $('.layerPopUp').removeClass('hidden');
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
                             alert('!');
                             $('.layerPopUp').addClass('hidden');
                          }, error: function() {
                             alert('!');
                             $('.layerPopUp').addClass('hidden');
                          }
                      });
                  });
               });
            </script>
         </c:if>        
			
			
		<!-- Menu  -->
			<script>
				$(window).resize(function(){
					menuButton();
					
				});
				
				
				$(document).ready(function() {
	                $('#ui-active-menuitem').css('font-size', '10px');
	                $("input#autoText").autocomplete({
	                    width: 300,
	                    max: 10,
	                    delay: 100,
	                    minLength: 1,
	                    autoFocus: true,
	                    cacheLength: 1,
	                    scroll: true,
	                    highlight: false,
	                    source: function(request, response) {
	                        $.ajax({
	                            url: "${pageContext.request.contextPath}/resources/assets/jsp/autocompleteDB2.jsp",
	                            dataType: "json",
	                            type: "post",
	                            data: request,
	                            success: function( data) {
	                                response(data);
	                            },
	                            error: function(status, error){
	                                 console.log( status +' / ' + error);
	                            }
	                        });
	                    }
	             
	                });
	            });
				
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