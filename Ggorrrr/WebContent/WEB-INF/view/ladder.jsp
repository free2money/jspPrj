<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<link href="/css/sadari_main.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="./inc/header.jsp" />
	<!-- =========================================================================== -->
	<main id="main">
	<div>
		<section id="sadari-main">
			<h1>음식 사다리 타기 게임 페이지</h1>
			<div id="bookmark">
				<section>
					<h1>즐겨찾기한 목록</h1>
					<ul>
						<c:forEach items="${list }" var="bm">
							<li><a href="./menu/detail?id=${bm.food_id }"><img
									alt="${bm.korname }" src="/upload/${bm.photo }"></a></li>
						</c:forEach>
					</ul>
				</section>
			</div>
			<div id="sadari-game">
				<section>
					<h1>사다리 게임</h1>
				</section>
			</div>
		</section>
	</div>
	</main>
	<!-- ============================================================================== -->
	<jsp:include page="./inc/footer.jsp" />
</body>
</html>
