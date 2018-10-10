<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul id="topMenu">
			<li><a class="topMenu-left-1" href="${pageContext.request.contextPath}/main/home.do">DBook</a></li>
			<li><a class="topMenu-left" href="#news">News</a></li>
			<li><a class="topMenu-left" href="#contact">Contact</a></li>
			<li><a class="topMenu-left" href="#about">About</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="showLeft">Menu</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="showTop">Menu</a></li>
			<li class="topMenu-right" id="topMenu-search">
			<section id="search" class="alt">
				<form method="get" style="margin: 0; padding-top: 5px;" action="${pageContext.request.contextPath}/book/bookSearch/searchResult.do">
						<input type="text" id="noAutoText" name="keyword" maxlength="20" />
				</form>
			</section>
			</li>
		</ul>