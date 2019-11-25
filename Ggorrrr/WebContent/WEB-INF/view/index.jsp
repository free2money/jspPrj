<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/index_header.css" type="text/css" rel="stylesheet">

</head>
<body>
	<!-- =================HEADER================ -->
	<header>

		<div id="header">
			<div id="topHeader">
				<nav id="memberMenu" class="top">

					<ul>
						<li><a href="index">Home</a></li>
						<c:if test="${empty sessionScope.username }">
							<li><a href="./login/login">로그인</a></li>
							<li><a href="./signUp/signUp">회원가입</a></li>
						</c:if>
						<c:if test="${not empty sessionScope.username }">
							<li><a href="./member/logout">로그아웃</a></li>
						</c:if>
						<li><a href="./member/mypage">마이페이지</a></li>
						<li><a href="./review/list">고객의 소리</a></li>
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
							<li>1.&nbsp;&nbsp;<a href="/menu/detail?">엽기떡볶이</a>
								<ul>
									<li>2.&nbsp;&nbsp;<a href="/menu/detail?">갈비탕</a></li>
									<li>3.&nbsp;&nbsp;<a href="/menu/detail?">김치찌개</a></li>
								</ul>
							</li>
						</ul>

					</nav>
				</div>
			</div>

			<div id="visual">
				<div>
					<span> <img src="./images/ggorrrrlogo.png">
					</span> <span id="title"> 그래서 뭐먹어? </span>
				</div>
			</div>

			<nav id="categori">
				<h1 class="d-none">메뉴</h1>
				<ul>
					<li><a href="/menu/list?category=한식">한식</a>
						<ul>
							<li><a href="">찌개</a></li>
							<li><a href="">국</a></li>
							<li><a href="">밥</a></li>
							<li><a href="">백반</a></li>
							<li><a href="">국수</a></li>
							<li><a href="">구이</a></li>
							<li><a href="">찜</a></li>
							<li><a href="">조림</a></li>
							<li><a href="">볶음</a></li>
							<li><a href="">부침</a></li>
						</ul></li>
					<li><a href="/menu/list?category=양식">양식</a>
						<ul>
							<li><a href="">치킨</a></li>
							<li><a href="">피자</a></li>
							<li><a href="">햄버거</a></li>
							<li><a href="">파스타</a></li>
							<li><a href="">스테이크</a></li>
						</ul></li>
					<li><a href="/menu/list?category=중식">중식</a>
						<ul>
							<li><a href="">면</a></li>
							<li><a href="">밥</a></li>
							<li><a href="">딤섬</a></li>
							<li><a href="">튀김</a></li>
							<li><a href="">탕</a></li>
							<li><a href="">볶음</a></li>
						</ul></li>
					<li><a href="/menu/list?category=일식">일식</a>
						<ul>
							<li><a href="">밥</a></li>
							<li><a href="">튀김</a></li>
							<li><a href="">면</a></li>
							<li><a href="">전골</a></li>
							<li><a href="">일본가정식</a></li>
						</ul></li>
					<li><a href="/menu/list?category=분식">분식</a>
						<ul>
							<li><a href="">김밥</a></li>
							<li><a href="">떡볶이</a></li>
							<li><a href="">순대</a></li>
							<li><a href="">튀김</a></li>
							<li><a href="">라면</a></li>
							<li><a href="">만두</a></li>
						</ul></li>
					<li><a href="/menu/list?category=테마별">테마별</a>
						<ul>
							<li><a href="">비오는날</a></li>
							<li><a href="">매운음식땡기는날</a></li>
							<li><a href="">쌀쌀한날</a></li>
							<li><a href="">더운날</a></li>
							<li><a href="">해장</a></li>
							<li><a href="">소개팅</a></li>
							<li><a href="">가족식사</a></li>
							<li><a href="">야식</a></li>
						</ul></li>
					<li><a href="/menu/list?category=기타">기타</a>
						<ul>
							<li><a href="">카레</a></li>
							<li><a href="">케밥</a></li>
							<li><a href="">부리또</a></li>
							<li><a href="">쌀국수</a></li>
							<li><a href="">볶음</a></li>
							<li><a href="">볶음밥</a></li>
							<li><a href="">튀김</a></li>
						</ul></li>
					<li><a href="/menu/list?category=채식">채식</a>
						<ul>
							<li><a href="">샐러드</a></li>
							<li><a href="">나물</a></li>
							<li><a href="">해산물</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- =================MAIN================ -->
	<main> <!-- 
	<section id="main">

		
		<div id="best">
			<h1>BEST</h1>
		</div>
		<div id="food">
			<table>

				<tr>
					<td>엽기떡볶이</td>
					<td>김치볶음밥</td>
					<td>돈가스</td>
				</tr>

			</table>
		</div>
	</section>
	 --> </main>
	<!-- =================ASIDE================ -->
	<jsp:include page="./inc/sadari.jsp" />
	<!-- =================FOOTER================ -->
	<jsp:include page="./inc/footer.jsp" />
</body>
</html>
