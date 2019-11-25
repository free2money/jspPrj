<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- =================HEADER================ -->
	<jsp:include page="../inc/header.jsp" />
	<!-- =================MAIN================ -->
	<main>
	<section>
		<h1>임시 비밀번호 발급</h1>
		<c:if test="${empty requestScope.messege }">
			<div>
				가입하신 이메일로 임시 비밀번호를 보내드립니다.<br> 로그인 후 반드시 비밀번호를 변경하시기 바랍니다.
			</div>

			<div>
				<form action="findPwd" method="post">
					<div>ID</div>
					<div>
						<input type="text" name="user-id" value="">
					</div>
					<div>E-MAIL</div>
					<div>
						<div>
							<input type="text" name="user-email" value="">
						</div>
					</div>
					<c:if test="${not empty requestScope.errorMsg }">
						<div>${requestScope.errorMsg }</div>
					</c:if>
					<div>
						<input type="submit" name="z" value="임시 비밀번호 발급">
					</div>
					<div>
						<a href="/login/login">로그인</a>
					</div>
				</form>
			</div>
		</c:if>
		<c:if test="${not empty requestScope.messege }">
			<div>
				<div>${requestScope.messege }</div>
			</div>
			<div>
				<a href="login">로그인</a>
			</div>
		</c:if>
	</section>

	</main>

	<!-- =================FOOTER================ -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
