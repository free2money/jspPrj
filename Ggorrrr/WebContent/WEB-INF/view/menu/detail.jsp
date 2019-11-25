<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<!-- ==header=========================== -->
	<jsp:include page="../inc/header.jsp" />
	<!-- ===main====================== -->

	<nav>
		<h1>음식 디테일</h1>
		<ul>
			<li><a href="">사진</a></li>
			<li><a href="">설명</a></li>
			<li><a href="">식당위치</a></li>
			<li><a href="">레시피</a></li>
		</ul>
	</nav>

	<section>
		<h1>음식사진</h1>
		<img src="../images/aa.jpg">
		<p>(상기 사진은 실물과 다를 수 있습니다.)</p>
	</section>

	<section>
		<h1>음식설명</h1>
		<dl>
			<dt>이름</dt>
			<dd>비빔밥</dd>
			<dt>주 재료</dt>
			<dd>밥,나물,쇠고기</dd>
			<dt>먹는 방법</dt>
			<dd>비벼 먹는 음식</dd>
		</dl>
	</section>

	<section>
		<h1>지도</h1>
		지도 api
	</section>

	<!-- =====aside======================= -->
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ======footer===================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
