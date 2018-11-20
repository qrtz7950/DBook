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
	
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/dbook_icon.png" />
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
												    <li class="fir-dep-cat-li">
												    	<a href="../booklist/category.do?category=100&page=1"><span>소설</span></a>
												    	<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=100010&page=1" class="">나라별 소설</a></li>
												                <li><a href="../booklist/category.do?category=100020&page=1" class="">고전/문학</a></li>
												                <li><a href="../booklist/category.do?category=100030&page=1" class="">장르소설</a></li>
												                <li><a href="../booklist/category.do?category=100040&page=1" class="">테마소설</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=110&page=1"><span>시/에세이</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=110010&page=1">한국시</a></li>
												                <li><a href="../booklist/category.do?category=110020&page=1">외국시</a></li>
												                <li><a href="../booklist/category.do?category=110080&page=1">그림/포토 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110060&page=1">독서 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110070&page=1">명상 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110050&page=1">성공 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110040&page=1">여행 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110090&page=1">연애/사랑 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110030&page=1">인물 에세이</a></li>
												                <li><a href="../booklist/category.do?category=110100&page=1">삶의 지혜/명언</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=120&page=1"><span>인문</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=120010&page=1">인문일반</a></li>
												                <li><a href="../booklist/category.do?category=120020&page=1">심리</a></li>
												                <li><a href="../booklist/category.do?category=120030&page=1">교육학</a></li>
												                <li><a href="../booklist/category.do?category=120040&page=1">철학</a></li>
												                <li><a href="../booklist/category.do?category=120050&page=1">문학론</a></li>
												                <li><a href="../booklist/category.do?category=120060&page=1">언어학/기호학</a></li>
												                <li><a href="../booklist/category.do?category=120070&page=1">종교학</a></li>
												                <li><a href="../booklist/category.do?category=120080&page=1">신화</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=130&page=1"><span>가정/생활/요리</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=130010&page=1">결혼/가족</a></li>
												                <li><a href="../booklist/category.do?category=130020&page=1">임신/출산/육아</a></li>
												                <li><a href="../booklist/category.do?category=130030&page=1">자녀교육</a></li>
												                <li><a href="../booklist/category.do?category=130040&page=1">집/살림</a></li>
												                <li><a href="../booklist/category.do?category=130050&page=1">요리</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=140&page=1"><span>건강</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=140010&page=1">건강정보/에세이</a></li>
												                <li><a href="../booklist/category.do?category=140030&page=1">다이어트/미용</a></li>
												                <li><a href="../booklist/category.do?category=140040&page=1">요가/헬스</a></li>
												                <li><a href="../booklist/category.do?category=140020&page=1">질병치료/예방</a></li>
												                <li><a href="../booklist/category.do?category=140050&page=1">건강운동 기타</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=150&page=1"><span>취미/레저</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=150050&page=1">꽃꽂이</a></li>
												                <li><a href="../booklist/category.do?category=150010&page=1">뜨개질/퀼트/십자수</a></li>
												                <li><a href="../booklist/category.do?category=150020&page=1">비즈/구슬공예</a></li>
												                <li><a href="../booklist/category.do?category=150030&page=1">선물포장/리본공예</a></li>
												                <li><a href="../booklist/category.do?category=150040&page=1">옷만들기</a></li>
												                <li><a href="../booklist/category.do?category=150110&page=1">가구/DIY</a></li>
												                <li><a href="../booklist/category.do?category=150070&page=1">바둑/장기</a></li>
												                <li><a href="../booklist/category.do?category=150090&page=1">사진/비디오</a></li>
												                <li><a href="../booklist/category.do?category=150080&page=1">애완동물</a></li>
												                <li><a href="../booklist/category.do?category=150100&page=1">원예/조경</a></li>
												                <li><a href="../booklist/category.do?category=150060&page=1">퍼즐/스도쿠</a></li>
												                <li><a href="../booklist/category.do?category=150130&page=1">골프</a></li>
												                <li><a href="../booklist/category.do?category=150150&page=1">낚시</a></li>
												                <li><a href="../booklist/category.do?category=150160&page=1">달리기/마라톤</a></li>
												                <li><a href="../booklist/category.do?category=150140&page=1">등산</a></li>
												                <li><a href="../booklist/category.do?category=150170&page=1">레저/스포츠기타</a></li>
												                <li><a href="../booklist/category.do?category=150120&page=1">취미기타</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=160&page=1"><span>경제/경영</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=160010&page=1" class="">경제</a></li>
												                <li><a href="../booklist/category.do?category=160020&page=1" class="">경영</a></li>
												                <li><a href="../booklist/category.do?category=160030&page=1" class="">마케팅/세일즈</a></li>
												                <li><a href="../booklist/category.do?category=160040&page=1" class="">재테크/투자</a></li>
												                <li><a href="../booklist/category.do?category=160050&page=1" class="">창업/취업</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=170&page=1"><span>자기계발</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=170050&page=1">대화/협상</a></li>
												                <li><a href="../booklist/category.do?category=170010&page=1">성공/처세</a></li>
												                <li><a href="../booklist/category.do?category=170020&page=1">시간관리</a></li>
												                <li><a href="../booklist/category.do?category=170040&page=1">인간관계</a></li>
												                <li><a href="../booklist/category.do?category=170030&page=1">자기능력계발</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=180&page=1"><span>사회</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=180010&page=1">정치/외교</a></li>
												                <li><a href="../booklist/category.do?category=180020&page=1">행정/정책</a></li>
												                <li><a href="../booklist/category.do?category=180030&page=1">국방/군사/경찰</a></li>
												                <li><a href="../booklist/category.do?category=180040&page=1">법</a></li>
												                <li><a href="../booklist/category.do?category=180050&page=1">사회학</a></li>
												                <li><a href="../booklist/category.do?category=180060&page=1">사회복지</a></li>
												                <li><a href="../booklist/category.do?category=180070&page=1">언론/신문/방송</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=190&page=1"><span>역사/문화</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=190010&page=1">역사/문화일반</a></li>
												                <li><a href="../booklist/category.do?category=190020&page=1">세계사</a></li>
												                <li><a href="../booklist/category.do?category=190030&page=1">서양사</a></li>
												                <li><a href="../booklist/category.do?category=190040&page=1">동양사</a></li>
												                <li><a href="../booklist/category.do?category=190050&page=1">한국사</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=200&page=1"><span>종교</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=200020&page=1">기독교(개신교)</a></li>
												                <li><a href="../booklist/category.do?category=200030&page=1">가톨릭</a></li>
												                <li><a href="../booklist/category.do?category=200040&page=1">불교</a></li>
												                <li><a href="../booklist/category.do?category=200010&page=1">종교일반</a></li>
												                <li><a href="../booklist/category.do?category=200050&page=1">기타</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=210&page=1"><span>예술/대중문화</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=210010&page=1">예술일반</a></li>
												                <li><a href="../booklist/category.do?category=210020&page=1">미술</a></li>
												                <li><a href="../booklist/category.do?category=210030&page=1">음악</a></li>
												                <li><a href="../booklist/category.do?category=210040&page=1">건축</a></li>
												                <li><a href="../booklist/category.do?category=210050&page=1">만화/애니메이션</a></li>
												                <li><a href="../booklist/category.do?category=210060&page=1">사진</a></li>
												                <li><a href="../booklist/category.do?category=210070&page=1">연극/영화</a></li>
												                <li><a href="../booklist/category.do?category=210080&page=1">TV/대중문화</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=220&page=1"><span>학습/참고서</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=220010&page=1">고등학교</a></li>
												                <li><a href="../booklist/category.do?category=220020&page=1">중학교</a></li>
												                <li><a href="../booklist/category.do?category=220030&page=1">초등학교</a></li>
												                <li><a href="../booklist/category.do?category=220040&page=1">논술/면접대비</a></li>
												                <li><a href="../booklist/category.do?category=220050&page=1">공부방법/진학</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=230&page=1"><span>국어/외국어</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=230010&page=1">국어</a></li>
												                <li><a href="../booklist/category.do?category=230020&page=1">영어</a></li>
												                <li><a href="../booklist/category.do?category=230030&page=1">일본어</a></li>
												                <li><a href="../booklist/category.do?category=230040&page=1">중국어</a></li>
												                <li><a href="../booklist/category.do?category=230050&page=1">기타 외국어</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=240&page=1"><span>사전</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=240050&page=1">국어사전</a></li>
												                <li><a href="../booklist/category.do?category=240040&page=1">한자사전</a></li>
												                <li><a href="../booklist/category.do?category=240010&page=1">한영/영한/영영사전</a></li>
												                <li><a href="../booklist/category.do?category=240020&page=1">일한/한일사전</a></li>
												                <li><a href="../booklist/category.do?category=240030&page=1">중한/한중사전</a></li>
												                <li><a href="../booklist/category.do?category=240060&page=1">기타나라어사전</a></li>
												                <li><a href="../booklist/category.do?category=240070&page=1">백과/전문사전</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=250&page=1"><span>과학/공학</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=250090&page=1">공학일반/산업공학</a></li>
												                <li><a href="../booklist/category.do?category=250020&page=1">과학기본서</a></li>
												                <li><a href="../booklist/category.do?category=250100&page=1">기계/전기/전자</a></li>
												                <li><a href="../booklist/category.do?category=250110&page=1">농수산/축산</a></li>
												                <li><a href="../booklist/category.do?category=250080&page=1">도시/토목/건설</a></li>
												                <li><a href="../booklist/category.do?category=250040&page=1">물리학</a></li>
												                <li><a href="../booklist/category.do?category=250060&page=1">생물학</a></li>
												                <li><a href="../booklist/category.do?category=250030&page=1">수학</a></li>
												                <li><a href="../booklist/category.do?category=250010&page=1">쉽게 읽는 과학</a></li>
												                <li><a href="../booklist/category.do?category=250120&page=1">의학/식품/생활과학</a></li>
												                <li><a href="../booklist/category.do?category=250070&page=1">천문/지구과학</a></li>
												                <li><a href="../booklist/category.do?category=250050&page=1">화학</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=260&page=1"><span>취업/수험서</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=260010&page=1">취업/상식/적성검사</a></li>
												                <li><a href="../booklist/category.do?category=260020&page=1">공무원</a></li>
												                <li><a href="../booklist/category.do?category=260030&page=1">고시</a></li>
												                <li><a href="../booklist/category.do?category=260040&page=1">전문직</a></li>
												                <li><a href="../booklist/category.do?category=260050&page=1">편입/검정고시</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=270&page=1"><span>여행/지도</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=270010&page=1">국내여행</a></li>
												                <li><a href="../booklist/category.do?category=270020&page=1">해외여행</a></li>
												                <li><a href="../booklist/category.do?category=270030&page=1">테마여행</a></li>
												                <li><a href="../booklist/category.do?category=270040&page=1">지도/지리</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=280&page=1"><span>컴퓨터/IT</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=280010&page=1">웹/컴퓨터입문/활용</a></li>
												                <li><a href="../booklist/category.do?category=280020&page=1">IT 전문서</a></li>
												                <li><a href="../booklist/category.do?category=280030&page=1">그래픽/멀티미디어</a></li>
												                <li><a href="../booklist/category.do?category=280040&page=1">오피스활용도서</a></li>
												                <li><a href="../booklist/category.do?category=280050&page=1">컴퓨터수험서</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=290&page=1"><span>잡지</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=290010&page=1">여성/패션/리빙</a></li>
												                <li><a href="../booklist/category.do?category=290020&page=1">인문/사회/종교</a></li>
												                <li><a href="../booklist/category.do?category=290030&page=1">문예/교양지</a></li>
												                <li><a href="../booklist/category.do?category=290040&page=1">자연/공학</a></li>
												                <li><a href="../booklist/category.do?category=290050&page=1">컴퓨터/게임/그래픽</a></li>
												                <li><a href="../booklist/category.do?category=290060&page=1">어학/교육</a></li>
												                <li><a href="../booklist/category.do?category=290070&page=1">예술/대중문화</a></li>
												                <li><a href="../booklist/category.do?category=290080&page=1">취미/여행</a></li>
												                <li><a href="../booklist/category.do?category=290090&page=1">외국잡지</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=300&page=1"><span>청소년</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												                <li><a href="../booklist/category.do?category=300020&page=1">공부방법/진학가이드</a>
												                <li><a href="../booklist/category.do?category=300010&page=1">논술대비</a></li>
                                                                <li><a href="../booklist/category.do?category=300030&page=1">진로/진학가이드</a></li>
                                                                <li><a href="../booklist/category.do?category=300040&page=1">청소년 경제/자기계발</a>
                                                                <li><a href="../booklist/category.do?category=300080&page=1">청소년 과학</a></li>
                                                                <li><a href="../booklist/category.do?category=300050&page=1">청소년 문학</a></li>
                                                                <li><a href="../booklist/category.do?category=300070&page=1">청소년 예술</a></li>
                                                                <li><a href="../booklist/category.do?category=300060&page=1">청소년 인문/사회</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=310&page=1"><span>유아</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=310010&page=1">0~3세</a></li>
												                <li><a href="../booklist/category.do?category=310020&page=1">4~7세</a></li>
												                <li><a href="../booklist/category.do?category=310030&page=1">유아놀이책</a></li>
												                <li><a href="../booklist/category.do?category=310040&page=1">유아그림책</a></li>
												                <li><a href="../booklist/category.do?category=310050&page=1">유아학습</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=320&page=1"><span>어린이</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=320010&page=1">초등1~2학년</a></li>
												                <li><a href="../booklist/category.do?category=320020&page=1">초등3~4학년</a></li>
												                <li><a href="../booklist/category.do?category=320030&page=1">초등5~6학년</a></li>
												                <li><a href="../booklist/category.do?category=320040&page=1">어린이(공통)</a></li>
												                <li><a href="../booklist/category.do?category=320050&page=1">어린이영어</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=330&page=1"><span>만화</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
																<li><a href="../booklist/category.do?category=330090&page=1">공포/추리</a></li>
												                <li><a href="../booklist/category.do?category=330010&page=1">교양만화</a></li>
												                <li><a href="../booklist/category.do?category=330020&page=1">드라마</a></li>
												                <li><a href="../booklist/category.do?category=330080&page=1">명랑/코믹만화</a></li>
												                <li><a href="../booklist/category.do?category=330030&page=1">성인만화</a></li>
												                <li><a href="../booklist/category.do?category=330040&page=1">순정만화</a></li>
												                <li><a href="../booklist/category.do?category=330050&page=1">스포츠만화</a></li>
												                <li><a href="../booklist/category.do?category=330070&page=1">액션/무협만화</a></li>
												                <li><a href="../booklist/category.do?category=330110&page=1">웹툰/카툰에세이</a></li>
												                <li><a href="../booklist/category.do?category=330100&page=1">학원만화</a></li>
												                <li><a href="../booklist/category.do?category=330130&page=1">일본어판 만화</a></li>
												                <li><a href="../booklist/category.do?category=330140&page=1">영문판 만화</a></li>
												                <li><a href="../booklist/category.do?category=330060&page=1">SF/판타지</a></li>
												                <li><a href="../booklist/category.do?category=330120&page=1">기타만화</a></li>
												    		</ul>
												    	</div>
												    </li>
													<li class="fir-dep-cat-li">
														<a href="../booklist/category.do?category=340&page=1"><span>해외도서</span></a>
														<div class="absol hidden sec-dep-cat-div">
												    		<ul>
												    			<li><a href="../booklist/category.do?category=340080&page=1">가족/생활</a></li>
												                <li><a href="../booklist/category.do?category=340040&page=1">건축/예술</a></li>
												                <li><a href="../booklist/category.do?category=340030&page=1">경영경제</a></li>
												                <li><a href="../booklist/category.do?category=340120&page=1">과학/공학/수학</a></li>
												                <li><a href="../booklist/category.do?category=340010&page=1">문학/소설</a></li>
												                <li><a href="../booklist/category.do?category=340130&page=1">사회/정치/법</a></li>
												                <li><a href="../booklist/category.do?category=340090&page=1">언어/외국어/사전</a></li>
												                <li><a href="../booklist/category.do?category=340060&page=1">요리</a></li>
												                <li><a href="../booklist/category.do?category=340020&page=1">유아청소년/교육</a></li>
												                <li><a href="../booklist/category.do?category=340110&page=1">종교/명상</a></li>
												                <li><a href="../booklist/category.do?category=340100&page=1">철학/심리/역사</a></li>
												                <li><a href="../booklist/category.do?category=340070&page=1">취미/여행</a></li>
												                <li><a href="../booklist/category.do?category=340050&page=1">컴퓨터</a></li>
												                <li><a href="../booklist/category.do?category=340140&page=1">독일</a></li>
												                <li><a href="../booklist/category.do?category=340160&page=1">스페인</a></li>
												                <li><a href="../booklist/category.do?category=340170&page=1">일본도서</a></li>
												    		</ul>
												    	</div>
												    </li>
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
				
				$('.fir-dep-cat-li').hover(
				  function() {
				    $( this ).find('.absol').removeClass( "hidden" );
				  }, function() {
					  $( this ).find('.absol').addClass( "hidden" );
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
				}
				
				if($(window).width()>480){
					$("#side-category-menu").show();
				}
			}
			
	</script>
</body>
</html>