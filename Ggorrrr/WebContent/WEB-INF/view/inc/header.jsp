<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>

	<div id="header">
		<div id="topHeader">
			<nav id="memberMenu" class="top">
				<ul>
					<li><a href="index">Home</a></li>
					<c:if test="${empty sessionScope.username }">
						<li><a href="/login/login">로그인</a></li>
						<li><a href="/signUp/signUp">회원가입</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.username }">
						<li><a href="/member/logout">로그아웃</a></li>
					</c:if>
					<li><a href="">마이페이지</a></li>
					<li><a href="">고객의 소리</a></li>
				</ul>

			</nav>

			<!--<h1>검색창</h1>-->
			<div id="searchHeader">
				<div id="searchForm" class="top">

					<form action="">
						<div class="searchWin">
							<input id="search" type="text" name="검색창" value="검색어">


							<button id="btn_search" type="submit">
								<img src="./images/search.png">
							</button>
						</div>
					</form>

				</div>


				<nav id="popularity" class="top">

					<h1>인기검색어</h1>
					<ul>
						<li>1.&nbsp;&nbsp;<a href="">엽기떡볶이</a>
							<ul>
								<li>2.&nbsp;&nbsp;<a href="">갈비탕</a></li>
								<li>3.&nbsp;&nbsp;<a href="">김치찌개</a></li>
							</ul>
						</li>
					</ul>

				</nav>
			</div>
		</div>

		<nav id="categori">

			<!-- <h1>메뉴</h1> -->
			<div>
				<ul>

					<li><a href="">한식</a></li>
					<li><a href="">양식</a></li>
					<li><a href="">중식</a></li>
					<li><a href="">일식</a></li>
					<li><a href="">분식</a></li>
					<li><a href="">테마별</a></li>
					<li><a href="">기타</a></li>
					<li><a href="">채식</a></li>

				</ul>
			</div>
		</nav>
	</div>
</header>
