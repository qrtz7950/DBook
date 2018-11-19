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
    		width: calc(100% - 150px);
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
		
		.info-book_id {
			display: none;
		}
		
		.info-book_name {
			width: fit-content;
		    word-break: break-word;
		    font-size: 18px;
		    font-weight: bold;
		}
		
		.info-detail {
			font-size: 1em;
		    float: right;
		    bottom: 0;
		    border-bottom: dotted 1px;
		    color: #f56a6a;
		    text-decoration: none;
		}
		.info-detail:hover {
			cursor: pointer;
		    font-weight: bold;
		    border-bottom: dotted 3px;
		}
		
		.info-author, .info-publisher{width: fit-content;}
		
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
			
		
		path {  stroke: #fff; }
		path:hover {  opacity:0.9; }
		rect:hover {  fill:#e8a75c; }
		.axis {  font: 10px sans-serif; }
		.legend tr{    border-bottom:1px solid grey; }
		.legend tr:first-child{    border-top:1px solid grey; }
		
		.axis path,
		.axis line {
		  fill: none;
		  stroke: #000;
		  shape-rendering: crispEdges;
		}
		
		.x.axis path {  display: none; }
		.legend{
		    margin-bottom:76px;
		    display:inline-block;
		    border-collapse: collapse;
		    border-spacing: 0px;
		    width: fit-content;
		    margin-left: 10px;
		}
		.legend td{
		    padding:4px 5px;
		    vertical-align:bottom;
		}
		.legendFreq, .legendPerc{
		    align:right;
		    width: 50px;
		}
		
		.dashboard {
		    width: 850px;
		    margin: auto;
		    display: none;
		}
		
		.pieChart {
			top: -50px;
		    position: relative;
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
	<script src="http://d3js.org/d3.v3.min.js"></script>
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
			
			$(document).on("click",".info-detail",function (){
				var target_dashboard_id = '#' + $(this).parent().parent().attr('id') + '-dashboard';
				var temp = $(this).parent();
				var book_id = temp.children().eq('0').text();
				
				$(target_dashboard_id).empty();
				
				$.ajax({
					url : '${pageContext.request.contextPath}/ranking/infoReview.do',
					type : 'POST',
					dataType : 'json',
					data : {
						'book_id': book_id
					},
					error : function(request, status, error){
				       	console.log("code:"+request.status+"\n"+"error:"+error);
				    },
					success : function(data){
						//data = {"freqData":[{"State":"10대","freq":{"woman":0,"man":0}},{"State":"20대","freq":{"man":1,"woman":2}},{"State":"30대","freq":{"woman":0,"man":1}},{"State":"40대","freq":{"woman":0,"man":0}},{"State":"50대","freq":{"woman":0,"man":0}},{"State":"60대","freq":{"woman":0,"man":0}},{"State":"70대 이상","freq":{"woman":0,"man":0}}],"name":"평점 상세정보"};
						dashboard(target_dashboard_id, data.freqData);
						temp.next().slideToggle();
					}
				});
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
							a +=		'<div class="info-detail">평가자정보▽</div>'
							a +=	'</div>'
							a +=	'<div id="rank' + rank_no + '-dashboard" class="dashboard"></div>'
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
					//dashboard('#rank' + i + '-dashboard', freqData);
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
	
	<!-- 그래프 관련 -->
	<script>
		function dashboard(id, fData){
		    var barColor = '#dc8929';
		    function segColor(c){ return {woman:"#f56a6a", man:"#807dba"}[c]; }
		    
		    // compute total for each state.
		    fData.forEach(function(d){d.total=d.freq.man+d.freq.woman;});
		    
		    // function to handle histogram.
		    function histoGram(fD){
		        var hG={},    hGDim = {t: 50, r: 100, b: 30, l: 100};	// 막대 그래프 크기 조절
		        hGDim.w = 500 - hGDim.l - hGDim.r, 
		        hGDim.h = 300 - hGDim.t - hGDim.b;
		            
		        //create svg for histogram.
		        var hGsvg = d3.select(id).append("svg")
		            .attr("width", hGDim.w + hGDim.l + hGDim.r)
		            .attr("height", hGDim.h + hGDim.t + hGDim.b).append("g")
		            .attr("transform", "translate(" + hGDim.l + "," + hGDim.t + ")");
		
		        // create function for x-axis mapping.
		        var x = d3.scale.ordinal().rangeRoundBands([0, hGDim.w], 0.1)
		                .domain(fD.map(function(d) { return d[0]; }));
		
		        // Add x-axis to the histogram svg.
		        hGsvg.append("g").attr("class", "x axis")
		            .attr("transform", "translate(0," + hGDim.h + ")")
		            .call(d3.svg.axis().scale(x).orient("bottom"));
		
		        // Create function for y-axis map.
		        var y = d3.scale.linear().range([hGDim.h, 0])
		                .domain([0, d3.max(fD, function(d) { return d[1]; })]);
		
		        // Create bars for histogram to contain rectangles and freq labels.
		        var bars = hGsvg.selectAll(".bar").data(fD).enter()
		                .append("g").attr("class", "bar");
		        
		        //create the rectangles.
		        bars.append("rect")
		            .attr("x", function(d) { return x(d[0]); })
		            .attr("y", function(d) { return y(d[1]); })
		            .attr("width", x.rangeBand())
		            .attr("height", function(d) { return hGDim.h - y(d[1]); })
		            .attr('fill',barColor)
		            .on("mouseover",mouseover)// mouseover is defined below.
		            .on("mouseout",mouseout);// mouseout is defined below.
		            
		        //Create the frequency labels above the rectangles.
		        bars.append("text").text(function(d){ return d3.format(",")(d[1])})
		            .attr("x", function(d) { return x(d[0])+x.rangeBand()/2; })
		            .attr("y", function(d) { return y(d[1])-5; })
		            .attr("text-anchor", "middle");
		        
		        function mouseover(d){  // utility function to be called on mouseover.
		            // filter for selected state.
		            var st = fData.filter(function(s){ return s.State == d[0];})[0],
		                nD = d3.keys(st.freq).map(function(s){ return {type:s, freq:st.freq[s]};});
		               
		            // call update functions of pie-chart and legend.    
		            pC.update(nD);
		            leg.update(nD);
		        }
		        
		        function mouseout(d){    // utility function to be called on mouseout.
		            // reset the pie-chart and legend.    
		            pC.update(tF);
		            leg.update(tF);
		        }
		        
		        // create function to update the bars. This will be used by pie-chart.
		        hG.update = function(nD, color){
		            // update the domain of the y-axis map to reflect change in frequencies.
		            y.domain([0, d3.max(nD, function(d) { return d[1]; })]);
		            
		            // Attach the new data to the bars.
		            var bars = hGsvg.selectAll(".bar").data(nD);
		            
		            // transition the height and color of rectangles.
		            bars.select("rect").transition().duration(500)
		                .attr("y", function(d) {return y(d[1]); })
		                .attr("height", function(d) { return hGDim.h - y(d[1]); })
		                .attr("fill", color);
		
		            // transition the frequency labels location and change value.
		            bars.select("text").transition().duration(500)
		                .text(function(d){ return d3.format(",")(d[1])})
		                .attr("y", function(d) {return y(d[1])-5; });            
		        }        
		        return hG;
		    }
		    
		    // function to handle pieChart.
		    function pieChart(pD){
		        var pC ={},    pieDim ={w:150, h: 150};		// pieChart 크기 조절
		        pieDim.r = Math.min(pieDim.w, pieDim.h) / 2;
		                
		        // create svg for pie chart.
		        var piesvg = d3.select(id).append("svg")
		            .attr("width", pieDim.w).attr("height", pieDim.h).append("g")
		            .attr("transform", "translate("+pieDim.w/2+","+pieDim.h/2+")");
		        
		        // create function to draw the arcs of the pie slices.
		        var arc = d3.svg.arc().outerRadius(pieDim.r - 10).innerRadius(0);
		
		        // create a function to compute the pie slice angles.
		        var pie = d3.layout.pie().sort(null).value(function(d) { return d.freq; });
		
		        // Draw the pie slices.
		        piesvg.selectAll("path").data(pie(pD)).enter().append("path").attr("d", arc)
		            .each(function(d) { this._current = d; })
		            .style("fill", function(d) { return segColor(d.data.type); })
		            .on("mouseover",mouseover).on("mouseout",mouseout);
		
		        // create function to update pie-chart. This will be used by histogram.
		        pC.update = function(nD){
		            piesvg.selectAll("path").data(pie(nD)).transition().duration(500)
		                .attrTween("d", arcTween);
		        }        
		        // Utility function to be called on mouseover a pie slice.
		        function mouseover(d){
		            // call the update function of histogram with new data.
		            hG.update(fData.map(function(v){ 
		                return [v.State,v.freq[d.data.type]];}),segColor(d.data.type));
		        }
		        //Utility function to be called on mouseout a pie slice.
		        function mouseout(d){
		            // call the update function of histogram with all data.
		            hG.update(fData.map(function(v){
		                return [v.State,v.total];}), barColor);
		        }
		        // Animating the pie-slice requiring a custom function which specifies
		        // how the intermediate paths should be drawn.
		        function arcTween(a) {
		            var i = d3.interpolate(this._current, a);
		            this._current = i(0);
		            return function(t) { return arc(i(t));    };
		        }    
		        return pC;
		    }
		    
		    // function to handle legend.
		    function legend(lD){
		        var leg = {};
		            
		        // create table for legend.
		        var legend = d3.select(id).append("table").attr('class','legend');
		        
		        // create one row per segment.
		        var tr = legend.append("tbody").selectAll("tr").data(lD).enter().append("tr");
		            
		        // create the first column for each segment.
		        tr.append("td").append("svg").attr("width", '16').attr("height", '16').append("rect")
		            .attr("width", '16').attr("height", '16')
					.attr("fill",function(d){ return segColor(d.type); });
		            
		        // create the second column for each segment.
		        tr.append("td").text(function(d){ return d.type;});
		
		        // create the third column for each segment.
		        tr.append("td").attr("class",'legendFreq')
		            .text(function(d){ return d3.format(",")(d.freq);});
		
		        // create the fourth column for each segment.
		        tr.append("td").attr("class",'legendPerc')
		            .text(function(d){ return getLegend(d,lD);});
		
		        // Utility function to be used to update the legend.
		        leg.update = function(nD){
		            // update the data attached to the row elements.
		            var l = legend.select("tbody").selectAll("tr").data(nD);
		
		            // update the frequencies.
		            l.select(".legendFreq").text(function(d){ return d3.format(",")(d.freq);});
		
		            // update the percentage column.
		            l.select(".legendPerc").text(function(d){ return getLegend(d,nD);});        
		        }
		        
		        function getLegend(d,aD){ // Utility function to compute percentage.
		            return d3.format("%")(d.freq/d3.sum(aD.map(function(v){ return v.freq; })));
		        }
		
		        return leg;
		    }
		    
		    // calculate total frequency by segment for all state.
		    var tF = ['woman','man'].map(function(d){ 
		        return {type:d, freq: d3.sum(fData.map(function(t){ return t.freq[d];}))}; 
		    });    
		    
		    // calculate total frequency by state for all segment.
		    var sF = fData.map(function(d){return [d.State,d.total];});
		
		    var hG = histoGram(sF), // create the histogram.
		        pC = pieChart(tF), // create the pie-chart.
		        leg= legend(tF);  // create the legend.
		        
		    $(id).children().eq('0').attr("class", "histoGram");
			$(id).children().eq('1').attr("class", "pieChart");
			$(id).children().eq('2').attr("class", "legend");
		}
	</script>
</body>
</html>