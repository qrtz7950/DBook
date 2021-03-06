<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<%-- <jsp:include page="../include/CSS.jsp" /> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slide2css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/SlideMenu.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/autocomplete.css" />
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/TopMenu.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.6/css/swiper.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/layerPopUp.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/category.css" />
	
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/dbook_icon.png" />
	<title>${param.keyword}:: 검색결과 - DBooK</title>

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
								
									<div id="category_select" style="height: 55px;">
										<h2><strong>'${param.keyword}'</strong> 의 검색 결과</h2>
									</div>
									
									<div id="category_main_base">

										<div id="side-category-menu">
											<div id="side-category-menu_title">
												카테고리
											</div>
											<div id="side-category-menu_title_category">
												<ul>
												    <li><a href="../booklist/category.do?category=100&page=1"><span>소설</span></a></li>
													<li><a href="../booklist/category.do?category=110&page=1"><span>시/에세이</span></a></li>
													<li><a href="../booklist/category.do?category=120&page=1"><span>인문</span></a></li>
													<li><a href="../booklist/category.do?category=130&page=1"><span>가정/생활/요리</span></a></li>
													<li><a href="../booklist/category.do?category=140&page=1"><span>건강</span></a></li>
													<li><a href="../booklist/category.do?category=150&page=1"><span>취미/레저</span></a></li>
													<li><a href="../booklist/category.do?category=160&page=1"><span>경제/경영</span></a></li>
													<li><a href="../booklist/category.do?category=170&page=1"><span>자기계발</span></a></li>
													<li><a href="../booklist/category.do?category=180&page=1"><span>사회</span></a></li>
													<li><a href="../booklist/category.do?category=190&page=1"><span>역사/문화</span></a></li>
													<li><a href="../booklist/category.do?category=200&page=1"><span>종교</span></a></li>
													<li><a href="../booklist/category.do?category=210&page=1"><span>예술/대중문화</span></a></li>
													<li><a href="../booklist/category.do?category=220&page=1"><span>학습/참고서</span></a></li>
													<li><a href="../booklist/category.do?category=230&page=1"><span>국어/외국어</span></a></li>
													<li><a href="../booklist/category.do?category=240&page=1"><span>사전</span></a></li>
													<li><a href="../booklist/category.do?category=250&page=1"><span>과학/공학</span></a></li>
													<li><a href="../booklist/category.do?category=260&page=1"><span>취업/수험서</span></a></li>
													<li><a href="../booklist/category.do?category=270&page=1"><span>여행/지도</span></a></li>
													<li><a href="../booklist/category.do?category=280&page=1"><span>컴퓨터/IT</span></a></li>
													<li><a href="../booklist/category.do?category=290&page=1"><span>잡지</span></a></li>
													<li><a href="../booklist/category.do?category=300&page=1"><span>청소년</span></a></li>
													<li><a href="../booklist/category.do?category=310&page=1"><span>유아</span></a></li>
													<li><a href="../booklist/category.do?category=320&page=1"><span>어린이</span></a></li>
													<li><a href="../booklist/category.do?category=330&page=1"><span>만화</span></a></li>
													<li><a href="../booklist/category.do?category=340&page=1"><span>해외도서</span></a></li>
												</ul>
											</div>
										</div>
									
										<div id="category-content" class="posts">
											
											<c:forEach var="book" items="#{bookListByKeyword}">
											
											<article class="book-search">
												<div style="display: none;">${book.book_id}</div>
											   <a href="#" class="image"><img src="${book.cover}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/resources/images/image-null.png';" /></a>
											   <h3><a href="#">${book.book_name}</a></h3>
											   <p><a href="${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=${book.author}">${book.author} 지음</a><br>
											   <a href="${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=${book.publisher}">${book.publisher}</a></p>
											</article>
											
											</c:forEach>
											
			                             </div>
			                             
			                             <div id="page-number">
	                                       	
                                        </div>
		                           
		                           </div>
							</section>
								

							<%-- <a href="${pageContext.request.contextPath}/login/login.do">카톡로그인</a> --%>
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
				
				$(document).ready(function() {
					category_toggle();
					printPageNumber();
					return false;
				});
	
				$(window).resize(function(){
					category_toggle();
					return false;
				});
				
				function printPageNumber(){
					var no = 1;
					
					<c:if test="${not empty param.page}">
					no = ${param.page};
					</c:if>
					
					console.log(no);
					 
					var deca = Math.floor(no/10);
					var forwPages = (deca * 10) + 11 ;
					var prePages = (deca * 10) - 9 ;
					if (prePages <= 0){
						prePages = 1;
					}
					
					var temp = '<a href="javascript:goToPage(' + prePages + ')">&lt;&lt;&nbsp;&nbsp;</a>';
					for(var i=0;i<10;i++){
						var page = deca * 10 + i + 1;
						temp += '<a class="page-number" href="javascript:goToPage(' + page + ')">' + page + '</a>'
					}
					temp += '<a href="javascript:goToPage(' + forwPages + ')">&nbsp;&nbsp;&gt;&gt;</a>'
	
					$('#page-number').append(temp);
				}
				
				function goToPage(num){
					
					switch (num) {
					case 0:
						num = ${param.page} + 1; 
						break;
					case -1:
						num = ${param.page} - 1;
						if(num == 0){
							num = 1;
						}
						break;
					default:
						break;
					}
					location.href='../bookSearch/searchResult.do?keyword=${param.keyword}&page=' + num;
					
				}
				
				function category_toggle(){
					
					if($(window).width()<480){
						$("#side-category-menu").hide();
						$("#category-content").css("width","100%");
					}
					
					if($(window).width()>480){
						$("#side-category-menu").show();
						$("#category-content").css("width","87%");
					}
				}
			</script>
			
		<!-- 달지마 -->
			<script>
				/* MenuButton */
					$(document).ready(function() {
						menuButton();
					});
				
					$(window).resize(function(){
						menuButton();
					});
				
					$(document).on("click",".book-search",function (){
						var temp_bookId = $(this).children().eq('0').text();
		         		location.href = "${pageContext.request.contextPath}/book/bookDetail/" + temp_bookId + ".do";
					});
			</script>
			
		<!-- script function -->
			<script>
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
			
		
		
		<!-- 검색결과  -->
			<!-- <script>
			 
			$(document).ready(function() {
				search();
			});
				function search(){
					$.ajax({
						url: "${pageContext.request.contextPath}/resources/assets/jsp/searchDB.jsp",
						type : "post",
						dataType: "json",
						data: request,
						success: function(data) {
		                    response(data);
		                },
		                error: function(status, error){
		                     console.log( status +' / ' + error);
		                }
						
					});
				}
			</script> -->
			
			
</body>
</html>