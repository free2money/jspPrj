<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<!-- =================HEADER================ -->
	<jsp:include page="../inc/header.jsp" />
	<!-- =================MAIN================ -->
	<main>
	<section>
		<h1>아이디 찾기</h1>
		<c:if test="${empty findId }">
			<div>
				회원가입 시,입력하신 이메일로 <br>아이디를 확인할 수 있습니다.
			</div>

			<form action="findID" method="post">
				<div>NAME</div>
				<input type="text" name="name">
				<div>E-MAIL</div>
				<input type="text" name="email"> <br>
				<c:if test="${not empty param.error}">
					<div style="color: red; font-weight: bold;">아이디 또는 이메일이 올바르지
						않습니다.</div>
				</c:if>
				<div style="color: red; font-weight: bold;"></div>
				<input type="button" onclick='submit();' value="아이디찾기">
			</form>
		</c:if>
		<c:if test="${not empty findId }">
			<p>귀하의 아이디는</p>
			<div style="color: blue; font-weight: bold;">${findId.user_id }</div>
			<p>입니다.</p>
		</c:if>
		<a href="login">로그인</a>
	</section>
	</main>

	<!-- =================FOOTER================ -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
