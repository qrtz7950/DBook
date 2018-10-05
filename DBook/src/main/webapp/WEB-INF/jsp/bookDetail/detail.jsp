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
	<style type="text/css">
	
	#category_select{
		display: -webkit-box;
		height: 50px;
		vertical-align:middle;
		border-bottom: 1px solid #7f888f;
		margin-bottom: 20px;
	}
	
	#category_select select{
		height: 1.75em;
		margin-left: 5px;
		margin-right: 5px;
	}
	
	.test{
		display: block;
		height: auto;
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
								<section style="padding-top: 15px; padding-bottom: 15px; margin: 0; height: auto; border: none;">
									<div id="category_select">
										
										<a href="${pageContext.request.contextPath}" style="border: hidden;">홈 ></a>
									
										<select style="width:auto;" >
										
											<option>${requestScope.categories["0"]}</option>
											<option>국내도서</option>
											<option>국외도서</option>
										</select>
										
										<span>></span>
										
										<select style="width:auto;" >
											<option>${requestScope.categories["0"]}</option>
											<option>국내도서</option>
											<option>국외도서</option>
										</select>
										
										<span>></span>
										
										<select style="width:auto;" >
											<option>${requestScope.categories["0"]}</option>
											<option>국내도서</option>
											<option>국외도서</option>
										</select>
									</div>
									
									<div style="padding-bottom: 5px;">
										<h3 style="margin-bottom: 0;">${book.book_name}</h3>
										<h5 style="float: right;">조회수 ${requestScope.book.view_cnt}</h5>
									</div>
									
								</section>
								
								<section style="width: 100%; height: auto; padding-top: 30px; float: left; border-top: 0px;">
									<div style="width:100%; float: left;">
										<div style="width: 30%; height: auto; margin: 0; padding-left: 3%; padding-right: 3%; display: inline-block; float:left;">
											<img src="${pageContext.request.contextPath}/resources/images/book01.jpg" style="width:100%; height:auto;"/>
										</div>
										<div style="width: 70%; height: auto; margin: 0; display: inline-block; float:left;">
											<table style="width: 100%;">
												<tr>
													<th style="width: 20%;">저자</th>
													<td style="width: 80%;">${pageScope.book.author}
												</tr>
												<c:if test="${empty book.translator}">
													<tr>
														<th>번역</th>
														<td>${requestScope.book.translator}
													</tr>
												</c:if>
												<tr>
													<th>출판사</th>
													<td>${requestScope.book.publisher}
												</tr>
												<tr>
													<th>출판일</th>
													<td>${requestScope.book.published_date}
												</tr>
												<tr>
													<th>형태</th>
													<td>${requestScope.book.form_detail}
												</tr>
												<tr>
													<th>평점</th>
													<td>해야됨</td>
												</tr>
											</table>
										</div>
									</div>
								</section>
								
								<section>
									<h3>책 소개</h3>
									<c:forEach var="item" items="${requestScope.book_introduction}">
										${item}
										<br>
									</c:forEach>
								</section>
								
								<section>
									<h3>저자 소개</h3>
									<c:forEach var="item" items="${requestScope.author_introduction}">
										${item}
										<br>
									</c:forEach>
								</section>
								
								<section>
									<h3>목차</h3>
									<c:forEach var="item" items="${requestScope.contents}">
										${item}
										<br>
									</c:forEach>
								</section>
								
								<section>
									${book}
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
			<script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>
			
			<script>
	
			$(document).ready(function(){
				
				$("#category1").each(function(){
					
					if($(this).val()=="${requestScope.categories[0]}"){
						$(this).attr()
					}
					
				});	
			}); 
			</script>
			
			
</body>
</html>