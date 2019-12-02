<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<link href="/css/memberListDelete.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- =================HEADER================ -->
	<jsp:include page="../../inc/header.jsp" />
	<!-- =================MAIN================ -->
	<main id="main">

	<section>
		<div id="div">

			<h2 id="h2">
				<img id="img" src="/images/ggorrrrlogo.png" width="50" height="50"> 전체회원관리
			</h2>
		</div>
		<div>
			<div  id="tableDiv">
				<table id="table" border="1">
					<thead>
						<tr>
							<td id="topTd">아이디</td>
							<td id="topTd">비밀번호</td>
							<td id="topTd">이름</td>
							<td id="topTd">성별</td>
							<td id="topTd">생년월일</td>
							<td id="topTd">이메일</td>
							<td></td>
						</tr>
					</thead>

					<c:forEach var="m" items="${list }">
						<form method="post">
							<input type="hidden" name="id" value="${m.id }" />
							<tbody>
								<tr>
									<td id="td"><input type="text" name="user_id"
										value="${m.user_id }" /></td>
									<td id="td"><input type="password" value="${m.pwd }" /></td>
									<td id="td">${m.name }</td>
									<td id="td">${m.gender }</td>
									<td id="td">${m.birthday }</td>
									<td id="td">${m.email }</td>
									<td id="td"><input type="submit" name="del" value="삭제" /></td>
								</tr>
							</tbody>
						</form>
					</c:forEach>
				</table>
			</div>

		</div>
		<a href="../page">뒤로</a>
	</section>

	</main>
	<!-- ======footer===================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
