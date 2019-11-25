<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<c:set var="page" value="${(empty param.p)?1:param.p}" />
<c:set var="startNum" value="${page - (page-1)%5}" />
<c:set var="lastNum"
	value="${fn:substringBefore(Math.ceil(listCount / 10) , '.')}" />
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/list-main.css" type="text/css" rel="stylesheet" />
<link href="/css/default.css" type="text/css" rel="stylesheet" />


</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main id="main">
	<div>
		<section id="socategori">
			<!--<h1>소카테고리</h1>-->
			<h2>
				<img id="main-logo" src="./../images/ggorrrrlogo.png" width="50"
					height="50"> ${param.category }
			</h2>
			<form>
				<input type="hidden" name="category" value=${param.category }>
				<input type="hidden" name="p" value="${param.p}">
				 
					<select name="f">
					<option value="korname">이름</option>
					<option value="ingridients">주재료</option>
				</select> <input type="text" name="q" value="${param.q}" > <input type="submit" value="검색" />
			</form>
		</section>
		<div id="menulist">
			<!--<h1>소카테고리 음식리스트</h1>-->
			<div>
				<div>
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
			</div>

			<div class="margin-top align-center pager">
				<div>
					<c:if test="${startNum-5 < 1 }">
						<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>
					</c:if>

					<c:if test="${startNum-5 >= 1 }">
						<a class="btn btn-prev"
							href="list?category=${param.category }&p=${startNum-5}&f=${param.f}&q=${param.q}">이전</a>
					</c:if>
				</div>
				<ul class="-list- center">

					<c:forEach var="i" begin="0" end="4">
						<c:if test="${startNum+i <= lastNum }">
							<li><c:if test="${ startNum+i == page }">
									<c:set var="currentStyle" value="orange bold" />
								</c:if> <c:if test="${ startNum+i != page}">
									<c:set var="currentStyle" value="" />
								</c:if> <a class="-text- ${currentStyle }"
								href="list?category=${param.category }&p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i }</a>
							</li>
						</c:if>
					</c:forEach>

				</ul>
				<div>
					<c:if test="${startNum+5 > lastNum }">
						<span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>
					</c:if>
					<c:if test="${startNum+5 <= lastNum }">
						<a class="btn btn-next"
							href="list?category=${param.category }&p=${startNum+5}&f=${param.f}&q=${param.q}">다음</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	</main>
	<!------------------------- ㅡmain끝 ------------------------------------>
	<aside id="aside">
		<!--<h1>사다리게임</h1>-->
		<nav>
			<!--<h1>사다리이미지</h1>-->
			<a href=""><img id="sadari" src="./../images/sadari.png"
				width="60" height="60"></a>
		</nav>
	</aside>
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
