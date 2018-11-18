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
		
		.ranking-detail-selected{
			border: 2px solid #f56a6a;
		}
		
		.ranking-item-image {
			width: 116px;
			height: 170px;
			float: left;
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
    		width: 50%;
		}
		
		#ranking-box {
			text-align: center;
			margin: 20px auto;
			width: 90%;
		}
		
		#ranking-subject {
			width: 80%;
			margin: 0 auto 40px;
		}
		
		.ranking-item {
			text-align: initial;
			margin-top: 20px;
			margin-bottom: 10px;
			
			background-color: #f9f9f9;
		}
		
		.info-book_id {display: none;}
		
		.info-book_name {
		    word-break: break-word;
		    font-size: 18px;
		    font-weight: bold;
		}
		
		.ranking-item-image, .info-book_name, .info-author, .info-publisher {cursor: pointer;} 
		.info-book_name:hover, .info-author:hover, .info-publisher:hover{color: #f56a6a !important;}
		
		/* 별점 */
			.avg_rating_point {
				float: right;
				margin-left: 20px;
				font-size: 1.5em;
			}
			
			
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
			
			.avg_rating {
				display: inline-block;
				height: 30px;
			}
			
			.starR1.on {
				background-position: 0 0;
			}
			
			.starR2.on {
				background-position: -15px 0;
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
												<th id="rate-rank" class="ranking-detail"><div style="display: none;">0</div>평점 랭킹</th>
												<th id="view_cnt-rank" class="ranking-detail"><div style="display: none;">1</div>조회수 랭킹</th>
											</tr>
										</table>
										
										<div id="ranking-items">
										
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
				$('#rate-rank').addClass('ranking-detail-selected');
				showRank(0);
			});

			$(window).resize(function(){
				rankingHomeForm();
			});
			
			$('.ranking-detail').click(function(){
				//$(this).parent().children().css({'border': '1px solid #dadada'});
				$(this).parent().children('th').removeClass('ranking-detail-selected')
				$(this).addClass('ranking-detail-selected');
				//$(this).css({'border': '2px solid #f56a6a'});
				$('#ranking-items').empty();
				showRank($(this).children().eq('0').text());
			});
			
			/* 링크 */
			$(document).on("click",".ranking-item-image",function (){
				var temp_bookId = $(this).next().children().eq('0').text();
				location.href = "${pageContext.request.contextPath}/book/bookDetail/" + temp_bookId + ".do";
			});
			
			$(document).on("click",".info-book_name",function (){
				var temp_bookId = $(this).prev().text();
				location.href = "${pageContext.request.contextPath}/book/bookDetail/" + temp_bookId + ".do";
			});
			
			$(document).on("click",".info-author",function (){
				var temp_keyword = $(this).text();
				location.href = "${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=" + temp_keyword;
			});
			
			$(document).on("click",".info-publisher",function (){
				var temp_keyword = $(this).text();
				location.href = "${pageContext.request.contextPath}/book/bookSearch/searchResult.do?keyword=" + temp_keyword;
			});
			
			/* 함수 */
			function showRank(mode){
				var rank_no_first = $('.ranking-item').length + 1
				var rank_no = rank_no_first;
				$.ajax({
					url : '${pageContext.request.contextPath}/book/select_books.do',
					type : 'POST',
					dataType : 'json',
					data : {
						'mode' : mode,
						'start': rank_no,
						'end': rank_no+9
					},
					error : function(request, status, error){
				       	console.log("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(books){
						var a = '';
						for(var i=0; i<books.items.length; i++){
							a += '<div id="rank' + rank_no + '" class="ranking-item">';
							a += 	'<div class="rank-number">' + rank_no + '</div>';
							a +=	'<img class="ranking-item-image" src="' + books.items[i].cover + '" onError="this.onerror=null;this.src=\'${pageContext.request.contextPath}/resources/images/image-null.png\';" />';
							a +=	'<div class="ranking-item-info">';
							a +=		'<div class="info-book_id">' + books.items[i].book_id + '</div>';
							a +=		'<div class="info-book_name">' + books.items[i].book_name + '</div>';
							a +=		'<div class="avg_rating">';
							a +=			'<span class="starR1"></span> <span class="starR2"></span>';
							a +=			'<span class="starR1"></span> <span class="starR2"></span>';
							a +=			'<span class="starR1"></span> <span class="starR2"></span>';
							a +=			'<span class="starR1"></span> <span class="starR2"></span>';
							a +=			'<span class="starR1"></span> <span class="starR2"></span>';
							a +=			'<div class="avg_rating_point">' + books.items[i].avg_rating + '</div>';
							a +=		'</div>';
							a +=		'<div class="info-author">' + books.items[i].author + '</div>';
							a +=		'<div class="info-publisher">' + books.items[i].publisher + '</div>';
							a +=		'<div class="info-published_date">' + books.items[i].published_date + '</div>';
							a +=	'</div>'
							a += '</div>'
							
							rank_no++;
						}
						
						$('#ranking-items').append(a);
						
						avg_rating(rank_no_first, $('.ranking-item').length);
					}
				});
			}
			
			function avg_rating(first, end){
				for(var i=first; i<=end; i++){
					var temp_this = $('#rank'+i).children().eq('2')
					var book_id = temp_this.children().eq('0').text();
					
					temp_this.children('.avg_rating').eq('0').children("span").removeClass('on');
					var rating_point = parseFloat(temp_this.children('.avg_rating').eq('0').children('.avg_rating_point').eq('0').text());
					if(rating_point != 0){
						rating_point = Math.round(rating_point - 1);
						temp_this.children('.avg_rating').eq('0').children("span").eq(rating_point).addClass('on').prevAll('span').addClass('on');
					}
				}
			}
			
			function rankingHomeForm(){
				if($(window).width()<480){
					
				}
				
				if($(window).width()>480){
					
				}
			}
			
			/* 원페이지 */
			$(window).scroll(function() {
			    if ($(window).scrollTop() == $(document).height() - $(window).height() && $('.ranking-item').length < 50) {
			    	showRank($('.ranking-detail-selected').children().eq('0').text());
			    }
			});
			
	</script>
</body>
</html>