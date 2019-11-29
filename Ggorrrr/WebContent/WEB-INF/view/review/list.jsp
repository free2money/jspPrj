<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹지?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<script src="/js/sadariFix.js"></script>

<script src="/js/riviewList.js"></script>
</head>
<style>
/* h1 {
	font-size: 0px;
	overflow: hidden;
} */
main {
	min-width: 1600px;
	min-height: 700px;
}

main nav {
	min-height: 100%;
}

main>#sori-title {
	text-align: center;
}

main>.topvisual {
	text-align: right;
	margin-right: 50px;
	margin-bottom: 40px;
}

main>nav .topvisual {
	text-align: right;
	margin-right: 80px;
	margin-top: 30px;
}

#middlebox {
	overflow: auto;
	width: 1000px;
	min-height: 600px;
	margin-left: auto;
	margin-right: auto;
}

#ppp {
	position: relative;
	min-height: 100%;
}

div #content_main {
	float: left;
}

nav #order {
	width: 900px;
	margin-left: auto;
	margin-right: auto;
	text-align: right;
}

nav #order  a {
	margin-right: 5px;
	margin-left: 5px;
}

#middlebox #content_main {
	margin-top: 20px;
	padding: 22px;
}

#middlebox #content_main span {
	margin-top: 10px;
	display: inline-block;
	padding-left: 20px;
}

#review-title {
	padding: 19px;
	border-bottom: 1px solid #979797;
	width: 900px;
}

#review-title>span {
	font-size: 30px;
	font-weight: bold;
}

#review-content {
	padding-left: 80px;
}

main #search {
	display: inline-block;
	float: right;
	margin-right: 80px;
	border: 3px solid #D4F4FA;
	position: relative;
}

main #search input[type="text"] {
	padding: 3px;
	width: 200px;
	border: 1px solid #D4F4FA;
	outline: none;
}

main #search input[type="button"] {
	width: 25px;
	height: 26px;
	position: absolute;
	right: 0;
	background: url("../images/search1.png") no-repeat;
	outline: none;
	border: 0px;
}

#sori-title {
	border-bottom: 1px solid black;
	margin-bottom: 2px;
}

#order a:hover {
	color: #6262ff;
}

.aaa {
	content: "";
	clear: both;
	display: block;
}

#content_main::after {
	content: "";
	clear: both;
	display: table;
}
</style>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!-- =========================================================================== -->
	<main>
	<div id="sori-title">
		<h1>
			<img src="/images/sori.png" width="283" height="80">
		</h1>
	</div>

	<form id="search" action="">
		<input type="text" name="q" placeholder="search..." /> <input
			onclick="submit();" style="cursor: pointer;" type="button"
			name="검색버튼" />
	</form>
	<br>

	<nav id="review">
		<h1 class="d-none">고객의 소리 리스트</h1>
		<div class="topvisual">
			<a href="reg">글쓰기</a>
		</div>

		<div id="order">
			<a href="list?order=regdate">최신순</a> <a href="list?order=rating">평점순</a><br>
		</div>

		<div id="ppp">
			<div id="middlebox">
				<div id="content_main">
					<c:forEach var="n" items="${list}">
						<div id="review-title">
							<span>ㆍ ${n.address}</span>
						</div>
						<br>
						<div id="review-content">
							<span>${n.content}</span> <span id="content_hidden">...</span> <span
								id="content_" style="display: none;">${n.content}</span> <span
								id="content_expand" style="cursor: pointer;"><a
								onclick="parent.content_.style.display=''; parent.content_hidden.style.display='none'; parent.content_expand.style.display = 'none'; parent.content_fold.style.display = '';">
									<br> 더보기
							</a> </span> <span id="content_fold" style="display: none; cursor: pointer;"><a
								onclick="parent.content_.style.display='none'; parent.content_hidden.style.display=''; parent.content_fold.style.display = 'none'; parent.content_expand.style.display = ''; ">
									<br> 줄이기
							</a> </span><br> <span><img alt="" src="">${n.photo }사진자리입니다.<br></span>
						</div>
					</c:forEach>
				</div>
				<div class="aaa"></div>
				<div id="more-more">
					<a href="">더보기</a>
				</div>
			</div>
		</div>
	</nav>
	</main>
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
