<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<script src="/js/sadariFix.js"></script>
<style>
h1 {
	width: 0px;
	height: 0px;
	font-size: 0px;
	line-height: 0px;
	position: absolute;
	overflow: hidden;
}

#middleBox {
	position: relative;
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	padding-top: 70px;
}

nav>#nav {
	display: flex;
	position: absolute;
	top: 20px;
	left: 125px;
}

nav>#nav li {
	margin-left: 70px;
	list-style: circle;
}

nav>#nav li a {
	font-size: 20px;
}

main #img {
	width: inherit;
	text-align: center;
}

section dt, dd {
	display: inline-block;
	margin-top: 20px;
}

section dl, dt, dd {
	font-size: 14px;
	margin-left: 30px;
	margin-left: 47px;
}

section dl {
	padding-top: 20px;
	padding-left: 160px;
}

#food-img {
	width: 300px;
}

main {
	min-width: 1580px;
	min-height: 500px;
}

#explain .food-name {
	margin-right: 48px;
}

#explain .food-ingridients {
	margin-right: 28px;
}

#explain .food-explain {
	margin-right: 14px;
}
</style>
</head>
<body>
	<!-- ==header=========================== -->
	<jsp:include page="../inc/header.jsp" />
	<!-- ===main====================== -->
	<main>
	<div id="middleBox">
		<nav>
			<h1>음식 디테일</h1>
			<ul id="nav">
				<li><a href="#img">사진</a></li>
				<li><a href="#explain">설명</a></li>
				<li><a href="#map">식당위치</a></li>
				<li><a href="#recipe">레시피</a></li>
			</ul>
		</nav>

		<div id="img">
			<h1>음식사진</h1>
			<img id="food-img" src="/upload/${f.photo }">
			<p>(상기 사진은 실물과 다를 수 있습니다.)</p>
		</div>

		<section id="explain">
			<h1>음식설명</h1>
			<dl>
				<dt class="food-name">이름</dt>
				<dd>${f.korname }</dd>
				<br>
				<dt class="food-ingridients">주 재료</dt>
				<dd>${f.ingridients }</dd>
				<br>
				<dt class="food-explain">먹는 방법</dt>
				<dd>${f.explain }</dd>
				<br>
			</dl>
		</section>

		<section id="map">
			<h1>지도</h1>
		</section>
	</div>
	</main>

	<!-- =====aside======================= -->
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ======footer===================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
