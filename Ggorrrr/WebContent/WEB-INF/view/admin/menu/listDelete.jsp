<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- ====header========================= -->
	<jsp:include page="../../inc/header.jsp" />
	<!-- ======main===================== -->
	<main>
	<h1>관리자 메뉴</h1>
	<section>
		<h1>관리자</h1>
		<img src="../../images/profile.png">
	</section>

	<section>
		<h1>메뉴관리</h1>

		<form action ="adminlist" >
			<select name="category">
				<option value="한식">한식</option>
				<option value="양식">양식</option>
				<option value="중식">중식</option>
				<option value="일식">일식</option>
				<option value="분식">분식</option>
				<option value="테마별">테마별</option>
				<option value="기타">기타</option>
				<option value="채식">채식</option>
			</select> <label>이름</label> <input type="text" name="menuName"> <input
				type="submit" name="search" value="검색">
		</form>
	</section>

	<form action="adminlist" method="post">
		<table>
			<thead>
				<tr>
					<td>카테고리</td>
					<td>이름</td>
					<td>삭제</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td><a href="update?id=${list.id}">${list.korname }</a></td>
						<td>${list.explain }</td>
						<td>${list.id}</td>
						<td><input type="checkbox" name ="del" value= "${list.id }"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="submit" value="일괄삭제" name="cmd">
		<a href="reg">메뉴등록</a>
	</form>
	</main>
	<!-- ======footer===================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
