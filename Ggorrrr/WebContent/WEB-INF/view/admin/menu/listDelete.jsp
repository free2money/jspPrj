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
<style>
main {
	min-width: 1580px;
}

#page-top {
	height: 70px;
	width: 100%;
	display: flex;
	border-bottom: 1px solid #808080a6;
	position: relative;
	border-top: 1px solid gray;
	margin-top: 20px;
}

#page-top img {
	width: 50px;
	height: 50px;
	position: absolute;
	top: 11px;
	left: 20px;
}

#page-top h1 {
	position: absolute;
	font-size: 25px;
	left: 87px;
	top: 15px;
}

#page-middle>h1 {
	font-size: 20px;
	font-weight: normal;
	position: relative;
	left: -103px;
	top: -19px;
}

#middle-box {
	width: 800px;
	min-height: 300px;
	margin-right: auto;
	margin-left: auto;
	padding: 46px;
}

#middle-box #select-category {
	width: 100px;
	height: 24px;
	padding-left: 20px;
}

#page-middle form * {
	margin-left: 10px;
}

#page-middle form {
	float: right;
}

#page-middle2 {
	margin-top: 60px;
	margin-left: 50px;
	float: right;
	position: relative;
}

#page-middle2 table tr .table-category {
	border: 1px solid #85f4ff;
	width: 150px;
	text-align: center;
	height: 30px;
}

#page-middle2 table tr .table-name {
	border: 1px solid #85f4ff;
	text-align: center;
	width: 500px;
	height: 30px;
}

#page-middle2 table tr .table-delete {
	border: 1px solid #85f4ff;
	text-align: center;
	width: 150px;
	height: 30px;
}

#page-middle2 .button {
	float: right;
}
#page-middle2 .button *{
	margin-left: 10px;
	margin-top: 20px;
}


</style>
<body>
	<!-- ====header========================= -->
	<jsp:include page="../../inc/header.jsp" />
	<!-- ======main===================== -->
	<main>
	<h1 class="d-none">관리자 메뉴</h1>
	<section id="page-top">
		<img src="../../images/profile.png">
		<h1>관리자</h1>
	</section>


	<div id="middle-box">
		<section id="page-middle">
			<h1>메뉴관리</h1>
			<form action="adminlist">
				<select id="select-category" name="category">
					<option value="한식">한식</option>
					<option value="양식">양식</option>
					<option value="중식">중식</option>
					<option value="일식">일식</option>
					<option value="분식">분식</option>
					<option value="테마별">테마별</option>
					<option value="기타">기타</option>
					<option value="채식">채식</option>
				</select> <label>음식이름</label> <input type="text" name="menuName"> <input
					type="submit" name="search" value="검색">
			</form>
		</section>

		<form id="page-middle2" action="adminlist" method="post">
			<table>
				<thead>
					<tr>
						<td class="table-category">카테고리</td>
						<td class="table-name">이름</td>
						<td class="table-delete">삭제</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="list">
						<tr>
							<td class="table-category">${list.category }</td>
							<td class="table-name"><a href="update?id=${list.id}">${list.korname }</a></td>
							<td class="table-delete"><input type="checkbox" name="del"
								value="${list.id }"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="button">
				<input type="submit" value="일괄삭제" name="cmd"> <a href="reg">메뉴등록</a>
			</div>
		</form>

	</div>
	</main>
	<!-- ======footer===================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
