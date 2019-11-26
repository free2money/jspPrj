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
	<!-- =================HEADER================ -->
	<jsp:include page="../../inc/header.jsp" />
	<!-- =================MAIN================ -->
	<main>

	<section>
		<h1>전체회원관리</h1>
		<div>

			<table border="1">
				<thead>
					<tr>
						<td>아이디</td>
						<td>비밀번호</td>
						<td>이름</td>
						<td>성별</td>
						<td>생년월일</td>
						<td>이메일</td>
					</tr>
				</thead>

				<c:forEach var="m" items="${list }">
					<form method="post">
						<input type="hidden" name="id" value="${m.id }" />
						<tbody>
							<tr>
								<td><input type="text" name="user_id" value="${m.user_id }" /></td>
								<td><input type="password" value="${m.pwd }" /></td>
								<td>${m.name }</td>
								<td>${m.gender }</td>
								<td>${m.birthday }</td>
								<td>${m.email }</td>
								<td><input type="submit" name="del" value="삭제" /></td>
							</tr>
						</tbody>
					</form>
				</c:forEach>
			</table>
		</div>
		<a href="../page">뒤로</a>
	</section>

	</main>
	<!-- ======footer===================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
