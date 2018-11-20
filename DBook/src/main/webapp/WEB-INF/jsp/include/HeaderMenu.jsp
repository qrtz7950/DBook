<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.logo a, .icons a { border: none; }
	.icons img {
		-webkit-filter: grayscale(100%);
		filter: gray;
		width: 20px;
		height: 20px;
	}
	.icons img:hover {
		-webkit-filter: grayscale(0%);
		filter: none;
	}
</style>

<header id="header">
	<div class="logo"><a href="${pageContext.request.contextPath}/main/home.do"><img src="${pageContext.request.contextPath}/resources/images/Main_Logo.png" style="width: 100px; height: auto;" /></a></div>
	<ul class="icons">
		<li><a href="http://www.yes24.com"><img src="http://image.yes24.com/sysimage/renew/gnb/yes24.ico" title="yes24"></a></li>
		<li><a href="http://www.kyobobook.co.kr"><img src="http://image.kyobobook.co.kr/newimages/apps/b2c/kyobo.ICO" title="교보문고"></a></li>
		<li><a href="https://www.aladin.co.kr"><img src="https://image.aladin.co.kr/img/home/aladin.ico" title="알라딘"></a></li>
		<li><a href="http://book.interpark.com"><img src="http://bimage.interpark.com/interpark.ico" title="인터파크"></a></li>
		<li><a href="http://www.bandinlunis.com"><img src="http://image.bandinlunis.com/favicon.ico" title="반디앤루니스"></a></li>
		<li><a href="http://www.ypbooks.co.kr"><img src="http://pub.ypbooks.co.kr/ypbooks/images/ylogo.ico" title="영풍문고"></a></li>
		<li><a href="http://books.11st.co.kr"><img src="http://s.011st.com/img/common/icon/favicon.ico" title="11번가"></a></li>
	</ul>
</header>

