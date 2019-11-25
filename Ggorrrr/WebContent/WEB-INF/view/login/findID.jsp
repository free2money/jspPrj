<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<!-- =================HEADER================ -->
	<header>
		<h1>그래서 뭐먹어? </h1>
		<nav>
			<h1>회원메뉴</h1>
			<ul>
				<li><a href="">home</a></li>
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="">마이페이지</a></li>
				<li><a href="">고객의 소리</a></li>
			</ul>
		</nav>

		<section>
			<h1>검색창</h1>
			<form action="">
				<input type="text" name="검색창" value="검색어"> <input
					type="submit" value="검색">
			</form>
		</section>

		<nav>
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

		<nav>
			<h1>메뉴</h1>
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
		</nav>
	</header>

	<!-- =================MAIN================ -->
	<main>
	<section>
		<h1>아이디 찾기</h1>
		<c:if test="${empty findId }">
		<div>
			회원가입 시,입력하신 이메일로 <br>아이디를 확인할 수 있습니다.
		</div>

		<form action="findID" method="post">
			<div>NAME</div>
			<input type="text" name="name">
			<div>E-MAIL</div>
			<input type="text" name="email"> <br>
			<c:if test="${not empty param.error}">
				<div style="color: red; font-weight: bold;">아이디 또는 이메일이 올바르지
					않습니다.</div>
			</c:if>
				<div style="color: red; font-weight: bold;"></div>
			<input type="button" onclick='submit();' value="아이디찾기">
		</form>
		</c:if>
		<c:if test="${not empty findId }">
		<p>귀하의 아이디는</p>
			<div style="color: blue; font-weight: bold;">${findId.user_id }</div>
		<p>입니다.</p>
		</c:if>
		<a href="/login/login">로그인</a>

	</section>
	</main>

	<!-- =================FOOTER================ -->

	<footer>
		<section>
			<h1>회사소개</h1>
		</section>

		<section>
			<h1>이용약관</h1>
		</section>
	</footer>
</body>
</html>