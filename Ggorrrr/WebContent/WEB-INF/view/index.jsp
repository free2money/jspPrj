<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>

<link href="/css/default.css" type="text/css" rel="stylesheet">
<link href="/css/index.css" type="text/css" rel="stylesheet">
<script src="/js/index.js"></script>
<script src="/js/header.js"></script>
<script src="/js/sadariFix.js"></script>

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
							<li><a href="/login/login">로그인</a></li>
							<li><a href="/signUp/signUpAgree">회원가입</a></li>
						</c:if>
						<c:if test="${not empty sessionScope.username }">
							<li><a href="/member/logout">로그아웃</a></li>
						</c:if>
						<c:if test="${empty sessionScope.sessionuser && empty sessionScope.sessionadmin }">
							<li><a href="/member/mypage">마이페이지</a></li>
						</c:if>
						<c:if test="${not empty sessionScope.sessionuser }">
							<li><a href="/member/mypage">마이페이지</a></li>
						</c:if>
						<c:if test="${not empty sessionScope.sessionadmin }">
							<li><a href="/admin/page">관리자페이지</a></li>
						</c:if>
						<li><a href="/review/list">고객의 소리</a></li>
					</ul>

				</nav>

				<!--<h1>검색창</h1>-->
				<div id="searchHeader">
					<div id="searchForm" class="top">

						<form action="">
							<div class="searchWin">
								<input type="text" name="q" placeholder="Search..." /> 
								<input type="button" name="검색버튼" />

								<!-- <button id="btn_search" type="submit">
									<img src="./images/search.png">
								</button> -->
							</div>
						</form>

					</div>


					<nav id="popularity" class="top">

						<h1>인기검색어&nbsp;</h1>
						<div id="ranking">
							<span id="view"></span>
							<ul>
								<li>1.&nbsp;&nbsp;<a href="">엽기떡볶이</a>	</li>							
								<li>2.&nbsp;&nbsp;<a href="">갈비탕</a></li>
								<li>3.&nbsp;&nbsp;<a href="">김치찌개</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>

			<div id="visual">
				<div>
					<span> <img src="/images/ggorrrrlogo.png">
					</span> <span id="title"> 그래서 뭐먹어? </span>
				</div>
			</div>
			<hr>
			<nav id="categori">
			<h1 class="d-none">메뉴</h1>
			<div>
				<ul>
					<li><a href="/menu/list?category=한식">한식</a>
						<ul>
							<li><a href="/menu/list?category=한식&socategory=찌개">찌개</a></li>
							<li><a href="/menu/list?category=한식&socategory=국">국</a></li>
							<li><a href="/menu/list?category=한식&socategory=밥">밥</a></li>
							<li><a href="/menu/list?category=한식&socategory=백반">백반</a></li>
							<li><a href="/menu/list?category=한식&socategory=국수">국수</a></li>
							<li><a href="/menu/list?category=한식&socategory=구이">구이</a></li>
							<li><a href="/menu/list?category=한식&socategory=찜">찜</a></li>
							<li><a href="/menu/list?category=한식&socategory=조림">조림</a></li>
							<li><a href="/menu/list?category=한식&socategory=볶음">볶음</a></li>
							<li><a href="/menu/list?category=한식&socategory=부침">부침</a></li>
						</ul></li>
					<li><a href="/menu/list?category=양식">양식</a>
						<ul>
							<li><a href="/menu/list?category=양식&socategory=치킨">치킨</a></li>
							<li><a href="/menu/list?category=양식&socategory=피자">피자</a></li>
							<li><a href="/menu/list?category=양식&socategory=햄버거">햄버거</a></li>
							<li><a href="/menu/list?category=양식&socategory=파스타">파스타</a></li>
							<li><a href="/menu/list?category=양식&socategory=스테이크">스테이크</a></li>
						</ul></li>
					<li><a href="/menu/list?category=중식">중식</a>
						<ul>
							<li><a href="/menu/list?category=중식&socategory=면">면</a></li>
							<li><a href="/menu/list?category=중식&socategory=밥">밥</a></li>
							<li><a href="/menu/list?category=중식&socategory=딤섬">딤섬</a></li>
							<li><a href="/menu/list?category=중식&socategory=튀김">튀김</a></li>
							<li><a href="/menu/list?category=중식&socategory=탕">탕</a></li>
							<li><a href="/menu/list?category=중식&socategory=볶음">볶음</a></li>
						</ul></li>
					<li><a href="/menu/list?category=일식">일식</a>
						<ul>
							<li><a href="/menu/list?category=일식&socategory=밥">밥</a></li>
							<li><a href="/menu/list?category=일식&socategory=튀김">튀김</a></li>
							<li><a href="/menu/list?category=일식&socategory=면">면</a></li>
							<li><a href="/menu/list?category=일식&socategory=전골">전골</a></li>
							<li><a href="/menu/list?category=일식&socategory=일본가정식">일본가정식</a></li>
						</ul></li>
					<li><a href="/menu/list?category=분식">분식</a>
						<ul>
							<li><a href="/menu/list?category=분식&socategory=김밥">김밥</a></li>
							<li><a href="/menu/list?category=분식&socategory=떡볶이">떡볶이</a></li>
							<li><a href="/menu/list?category=분식&socategory=순대">순대</a></li>
							<li><a href="/menu/list?category=분식&socategory=튀김">튀김</a></li>
							<li><a href="/menu/list?category=분식&socategory=라면">라면</a></li>
							<li><a href="/menu/list?category=분식&socategory=만두">만두</a></li>
						</ul></li>
					<li><a href="/menu/list?category=테마별">테마별</a>
						<ul>
							<li><a href="/menu/list?category=테마별&socategory=비오는날">비오는날</a></li>
							<li><a href="/menu/list?category=테마별&socategory=매운음식땡기는날">매운음식땡기는날</a></li>
							<li><a href="/menu/list?category=테마별&socategory=쌀쌀한날">쌀쌀한날</a></li>
							<li><a href="/menu/list?category=테마별&socategory=더운날">더운날</a></li>
							<li><a href="/menu/list?category=테마별&socategory=해장">해장</a></li>
							<li><a href="/menu/list?category=테마별&socategory=소개팅">소개팅</a></li>
							<li><a href="/menu/list?category=테마별&socategory=가족식사">가족식사</a></li>
							<li><a href="/menu/list?category=테마별&socategory=야식">야식</a></li>
						</ul></li>
					<li><a href="/menu/list?category=기타">기타</a>
						<ul>
							<li><a href="/menu/list?category=기타&socategory=카레">카레</a></li>
							<li><a href="/menu/list?category=기타&socategory=케밥">케밥</a></li>
							<li><a href="/menu/list?category=기타&socategory=부리또">부리또</a></li>
							<li><a href="/menu/list?category=기타&socategory=쌀국수">쌀국수</a></li>
							<li><a href="/menu/list?category=기타&socategory=볶음">볶음</a></li>
							<li><a href="/menu/list?category=기타&socategory=볶음밥">볶음밥</a></li>
							<li><a href="/menu/list?category=기타&socategory=튀김">튀김</a></li>
						</ul></li>
					<li><a href="/menu/list?category=채식">채식</a>
						<ul>
							<li><a href="/menu/list?category=채식&socategory=샐러드">샐러드</a></li>
							<li><a href="/menu/list?category=채식&socategory=나물">나물</a></li>
							<li><a href="/menu/list?category=채식&socategory=해산물">해산물</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
		</div>
	</header>
	<!-- =================MAIN================ -->
	<main> 
	<section id="main">

		
		<div id="best">
			<h1>BEST</h1>
		</div>
		
		<div class="slide">
			<div class="food">
				<div class="foodDiv">
				<div><img src="/images/KimchiSoup.jpg"></div>
				<div><img src="/images/tonkatsu.jpg"></div>
				<div><img src="/images/tteokbokki.jpg"></div>
				<div><img src="/images/kimchiFriedRice.jpg"></div>
				<div><img src="/images/bookmark.png"></div>
				</div>
			</div>
			
		</div>
		
		
		<button type="button" class="slideButton button"></button>
		<button type="button" class="slideButton button"></button>
		
	</section>
	</main>
	<!-- =================ASIDE================ -->
	<jsp:include page="./inc/sadari.jsp" />
	<!-- =================FOOTER================ -->
	<jsp:include page="./inc/footer.jsp" />
</body>
</html>
