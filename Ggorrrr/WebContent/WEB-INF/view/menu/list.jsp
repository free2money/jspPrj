<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="page" value="${(empty param.p) ? 1 : param.p}" />
<c:set var="startNum" value="${page - (page-1)%5}" />
<c:set var="lastNum"
	value="${fn:substringBefore(Math.ceil(listCount / 10) , '.')}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<style>
main {
	min-width: 1580px;
}

main>div {
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

#menulist img {
	width: 150px;
	height: 150px;
}

#socategori {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

.socategori {
	width: 300px;
	position: relative;
}

#socategori span {
	position: absolute;
	font-size: 30px;
	top: 2px;
	left: 170px;
	padding-top: 20px;
}

#socategori form>div {
	width: 869px;
}

#menulist ul {
	display: flex;
	flex-wrap: wrap;
	padding-bottom: 40px;
}

#menulist ul li {
	margin-left: 30px;
	margin-top: 60px;
	text-align: center;
}

.pager {
	text-align: center;
}

#socategori h2 {
	padding-top: 20px;
}

#main-logo {
	padding-right: 30px;
}

#pre, #next {
	display: inline-block;
}

.pager ul {
	display: -webkit-inline-box;
	padding-left: 10px;
	padding-right: 10px;
}

.pager ul li {
	padding-left: 5px;
	padding-right: 5px;
	color: black;
}

.pager ul li:hover {
	color: red;
}

.-text-.orange {
	color: #ff6a00;
}

#socategori form .search select {
	width: 70px;
	border: 3px solid #D4F4FA;
}

#socategori form .search input[type="text"] {
	border: 3px solid #D4F4FA;
	height: 18px;
	padding-left: 4px;
	outline: none;
}

#socategori form .search .searchhap {
	display: contents;
	width: 300px;
}

#socategori form .search input[type="submit"] {
	position: absolute;
	left: 521px;
	background: url("../images/search3.png") no-repeat;
	width: 20px;
	height: 20px;
	outline: none;
	border: 0px;
	top: 74px;
}

#menulist ul li input[type="submit"] {
	background: url("../images/bookmark.png") no-repeat;
	width: 30px;
	height: 30px;
	outline: none;
	border: 0px;
	display: inline-block;
}

#menulist ul li span:nth-child(3) {
	font-size: 17px;
	font-weight: bold;
}

#menulist ul li span:last-child {
	font-size: 12px;
	font-weight: normal;
}
</style>

</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main id="main">
	<div class="socategori">
		<section id="socategori">
			<h2>
				<img id="main-logo" src="./../images/ggorrrrlogo.png" width="50"
					height="50"> <span>${param.category }</span>
			</h2>
			<form>
				<div class="search">
					<input type="hidden" name="category" value=${param.category }>
					<input type="hidden" name="p" value="${param.p}"> <select
						name="f">
						<option value="korname">이름</option>
						<option value="ingridients">주재료</option>
					</select>
					<div class=searchhap>
						<input type="text" placeholder="search.. " name="q"
							value="${param.q}"> <input type="submit" value="" />
					</div>
				</div>
			</form>
			<!-- 여기 까지 검색 폼이야~ -->
		</section>
	</div>

	<div id="menulist">
		<ul>
			<c:forEach items="${list }" var="list">
				<li><a href="detail?id=${list.id }"> <img
						src="./../images/KimchiSoup.jpg"><br> <span>${list.korname }</span>
						<input id="star" type="submit" name="bookmark" value=""><br>
						<span>${list.korname }</span>
				</a></li>
			</c:forEach>
		</ul>
	</div>

	<div class="margin-top align-center pager">
		<div id="pre">
			<c:if test="${startNum-5 < 1 }">
				<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>
			</c:if>
			<c:if test="${startNum-5 >= 1 }">
				<a class="btn btn-prev"
					href="list?category=${param.category }&p=${startNum-5}&f=${param.f}&q=${param.q}">이전</a>
			</c:if>
		</div>
		<ul>
			<c:forEach var="i" begin="0" end="4">
				<c:if test="${startNum+i <= lastNum }">
					<li><c:if test="${ startNum+i == page }">
							<c:set var="currentStyle" value="orange bold" />
						</c:if> <c:if test="${ startNum+i != page}">
							<c:set var="currentStyle" value="" />
						</c:if> <a class="-text- ${currentStyle}"
						href="list?category=${param.category }&p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i }</a>
					</li>
				</c:if>
			</c:forEach>
		</ul>
		<div id="next">
			<c:if test="${startNum+5 > lastNum }">
				<span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>
			</c:if>
			<c:if test="${startNum+5 <= lastNum }">
				<a class="btn btn-next"
					href="list?category=${param.category }&p=${startNum+5}&f=${param.f}&q=${param.q}">다음</a>
			</c:if>
		</div>
	</div>
	</main>
	<!------------------------- ㅡmain끝 ------------------------------------>
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
