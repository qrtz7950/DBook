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
	<title>DBook</title>
	
	<style>
		.ranking-detail{
			padding: 20px;
			text-align: center;
			border: 1px solid #dadada;
			cursor: pointer;
		}
		
		.ranking-item-image {
			width: 116px;
			height: 170px;
			float: left;
			
			background-color: thistle;
		}
		
		.rank-number {
			position: absolute;
		    font-weight: bold;
		    color: #ffffff;
		    text-shadow: 1px 0 #000000, 0 1px #000000, -1px 0 #000000, 0 -1px #000000;
		    font-size: 30px;
		    margin: 5px;
		}
		
		.ranking-item-info {
			margin: 10px 15px;
			display: inline-block;
    		min-height: 150px;
		}
		
		#ranking-box {
			text-align: center;
			margin: 20px auto;
			width: 90%;
		}
		
		#ranking-subject {
			width: 90%;
			margin: 0 auto 40px;
		}
		
		.ranking-item {
			text-align: initial;
			margin-top: 20px;
			margin-bottom: 10px;
			
			background-color: antiquewhite;
		}
	</style>
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
								<section style="padding-top: 15px; height: auto; text-align: center;">
									<div id="ranking-box">
										<table id="ranking-subject">
											<tr>
												<th id="r-r" class="ranking-detail">평점 랭킹</th>
												<th id="vc-r" class="ranking-detail">조회수 랭킹</th>
											</tr>
										</table>
										
										<div id="ranking-items">
											<c:forEach begin="0" end="2" varStatus="status">
												<div class="ranking-item">
													<div class="rank-number">${status.count}</div>
													<img class="ranking-item-image" src="../resources/images/image-null.png" />
													<div class="ranking-item-info">
														<div>책 제목</div>
														<div>평점</div>
														<div>저자</div>
													</div>
												</div>
											</c:forEach>
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
	<script type="text/javascript">
			
			$(document).ready(function() {
				
			});

			$(window).resize(function(){
				rankingHomeForm();
			});
			
			$('.ranking-detail').click(function(){
				$(this).parent().children().css({'border': '1px solid #dadada'});
				$(this).css({'border': '2px solid #f56a6a'});
			});
			
			function rankingHomeForm(){
				if($(window).width()<480){
					
				}
				
				if($(window).width()>480){
					
				}
			}
			
	</script>
</body>
</html>