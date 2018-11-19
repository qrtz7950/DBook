<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul id="topMenu">
			<li><a class="topMenu-left-1" href="${pageContext.request.contextPath}/main/home.do">DBook</a></li>

			<li><a class="topMenu-left" href="${pageContext.request.contextPath}/ranking/rankingHome.do">Ranking</a></li>
			<li><a id = "new-rating" class="topMenu-left" href="${pageContext.request.contextPath}/mypage/userRating.do">New Rating</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="showLeft">Menu</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="showTop">Menu</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="btn-login" href="${pageContext.request.contextPath}/user/login.do">Login</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="btn-logout" href="${pageContext.request.contextPath}/user/logout.do">Logout</a></li>
			<li class="topMenu-right" style="cursor: pointer;"><a id="user-nickname" href="${pageContext.request.contextPath}/mypage/library.do">${sessionScope.user.nickname} 님</a></li>
			<li class="topMenu-right" id="topMenu-search">
				<div id="search" class="alt">
					<form method="get" style="margin: 0; padding-top: 5px;" action="${pageContext.request.contextPath}/book/bookSearch/searchResult.do">
							<input type="text" id="noAutoText" name="keyword" maxlength="20" />
					</form>
				</div>
			</li>
		</ul>