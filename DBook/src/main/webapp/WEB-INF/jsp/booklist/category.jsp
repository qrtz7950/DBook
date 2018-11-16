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
								
									<div id="category_select">
										
										<a href="${pageContext.request.contextPath}">홈 ></a>
									
										<select class="firCat Cat">
											<c:forEach var="cat" items="${categorys}">
												<option class="firOpt" value="${cat.category_no}">${cat.category_name}</option>
											</c:forEach>
										</select>
										
										<div>></div>
										
										<select class="secCat Cat" >
										</select>
										
										<div>></div>
										
										<select class="thirCat Cat" >
										</select>
										
										<button class="goToCategory">이동</button>
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
											
											<c:forEach var="book" items="#{bookListByCategory}">
											
											<article>
											   <a href="../bookDetail/${book.book_id}.do" class="image">
											   		<img src="${book.cover}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/resources/images/image-null.png';" />
											   </a>
											   <h3><a href="../bookDetail/${book.book_id}.do">${book.book_name}</a></h3>
											   <p><a href="../bookSearch/searchResult.do?keyword=${book.author}">${book.author} 지음</a><br><a href="../bookSearch/searchResult.do?keyword=${book.publisher}">${book.publisher}</a></p>
											</article>
											
											</c:forEach>
                                        </div>
                                        
                                        <div id="page-number">
	                                       	
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
	<script src="${pageContext.request.contextPath}/resources/assets/js/slide2.js"></script>
	<script type="text/javascript">
			
			var categoryInit = $('.secCat');
			var firDepth = null;
			var secDepth = null;
			var thirDepth = null;
			var secFirstNo;
			
			<c:if test="${not empty param.category}">
				var category = '${param.category}';
				console.log("카테고리 init : " + category);
            </c:if>
			<c:if test="${empty param.category}">
				var category = '110';
				console.log("카테고리 init : " + category);
            </c:if>
	
			$(document).ready(function() {
				category_toggle();
				printPageNumber();
				
				var len = category.length;

				var ajaxResult = getCategoryList(category.substring(0,3), categoryInit);
 				ajaxResult.done(function(){
 					getCategoryList(secFirstNo, $('.thirCat'));
 				});
 				
				if(len >= 6){
					getCategoryList(category.substring(0,6), $('.thirCat'));
				} else {
					getCategoryList("000", $('.thirCat'));	
				}
				
				
				$('.firCat').change(function() {
					
					var temp = '<option class="optClick">없음</option>';
					
					firDepth = $(this).val();
					
					if(firDepth == 340) {
						$('thirCat').empty();
						$('secCat').empty();
						$('thirCat').append(temp);
						getCategoryList($(this).val(), categoryInit);
						return false;
					} else if(firDepth == 340170) {
						$('thirCat').empty();
						$('secCat').empty();
						$('secCat').append(temp);
						$('thirCat').append(temp);
						return false;
					}
					
					var ajaxResult = getCategoryList(firDepth, $('.secCat'));
					ajaxResult.done(function(){
						getCategoryList(secFirstNo, $('.thirCat'));
					});
				});
				
				$('.secCat').change(function() {
					
					if(firDepth == 340) {
						return false;
					}

					getCategoryList($(this).val(), $('.thirCat'));
					return false;
				});
				
				$('.goToCategory').click(function() {
					
					var where = $('.thirCat').val();
					
					if($('.thirCat').val() == null || $('.thirCat').val() == "없음") {
						where = $('.secCat').val(); 
					} else if($('.secCat').val() == null || $('.secCat').val() == "없음") {
						where = $('.firCat').val();
					}
					
					location.href="../booklist/category.do?category=" + where + "&page=1";
					return false;
				});

			});

			$(window).resize(function(){
				category_toggle();
				return false;
			});
			
			function getCategoryList(category, obj) {
				
				var result = $.ajax({
					url : '../booklist/categoryList.json',
					type : 'POST',
					dataType : 'json',
					data : {'category' : category},
					error : function(request, status, error){
				       	alert("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(data){
						addCategory(data, obj);
					}
				});
				return result;
			}
			
			function addCategory(data, obj) {
				temp = '';
				if(data.name[0] == null){
					temp += '<option class="optClick">없음</option>';
					secFirstNo = "000";
				} else{
					for(var i=0; i<data.name.length; i++){
						temp += '<option class="optClick" value="' + data.no[i] + '">' + data.name[i] + '</option>';
					}
					secFirstNo = data.no[0];
				}
				obj.empty();
				obj.append(temp);
			}
			
			function printPageNumber(){
				
				var no = 1;
	            
	            <c:if test="${not empty param.page}">
	            no = ${param.page};
	            </c:if>
	            
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
				window.location.href='../booklist/category.do?category=${param.category}&page=' + num;
				
			}
			
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
			
	</script>
</body>
</html>