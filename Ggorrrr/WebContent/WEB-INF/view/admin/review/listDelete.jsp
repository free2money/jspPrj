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
	<jsp:include page="../../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<img src="../../images/ggorrrrlogo.png" width="50" height="50">
		<section>
			<h1>고객이 쓴 소리 관리</h1>
		</section>
	</div>


	<!-- 삭제를 처리하는 서블릿으로 이동. -->
	<section>
		<div style="width: 960px;">
			<h1>고객이 쓴 소리 리스트</h1>
			<table>
				<thead>
					<tr>
						<th>목록</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="review" items="${list }">
						<form action="listDelete" method="post">
						<tr>
							<th>${review.address }</th>
							<th>
								<input type="hidden" name="del_id" value="${review.id }">
								<input type="submit" name="del" value="삭제">
							</th>
						</tr>
						<tr>
							<td>${review.content }</td>
						</tr>
						<tr>
							<td>${review.photo }</td>
						</tr>
						</form>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>
	<a href="../page">뒤로</a> </main>
	<!-- ======================footer========================================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
