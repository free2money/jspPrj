<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<img src="/images/ggorrrrlogo.png" width="50" height="50">
		<section>
			<h1>MY즐겨찾기관리</h1>
		</section>
	</div>

	<nav>
		<h1>사용자가 즐겨찾는 음식 리스트</h1>
		<ul>
			<li><img src="/images/KimchiSoup.jpg" width="100" height="100"><br>
				<a href="../menu/detail?">김치찌개</a>★<br>6000원<br> <input
				type="submit" name="삭제" value="삭제"></li>
		</ul>
	</nav>
	</main>
	<jsp:include page="../inc/sadari.jsp" />
	<!--  ---------------------------------------------------------------------------------------------- -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
