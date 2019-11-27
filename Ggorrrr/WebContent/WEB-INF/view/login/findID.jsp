<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>

<link href="/css/default.css" type="text/css" rel="stylesheet" />

<style>
#middlebox {
	width: 400px;
	min-height: inherit;
	border: 2px solid black;
	margin: 20px auto 20px auto;
	min-height: 300px;
	text-align: center;
}

#middlebox * {
	margin-top: 15px;
}

#middlebox>h1 {
	font-size: 32px;
}

#middlebox>#div {
	color: #a8a8a8;
	margin-top: 25px;
}

#middlebox span {
	display: inline;
	font-size: 17px;
	font-weight: normal;
}

#middlebox form {
	margin-top: 30px;
	height: 200px;
}

#button {
	width: 100px;
	height: 32px;
}

#middlebox>#findId{
	color: #a8a8a8;
	margin-top: 61px;
}
</style>
</head>
<body>
	<!-- =================HEADER================ -->
	<jsp:include page="../inc/header.jsp" />
	<!-- =================MAIN================ -->
	<main>
	<section id="middlebox">
		<h1>아이디 찾기</h1>
		<c:if test="${empty findId }">
			<div id="div">
				회원가입 시,입력하신 이메일로 <br>아이디를 확인할 수 있습니다.
			</div>

			<form action="findID" method="post">
				<span>NAME</span> <input type="text" name="name"><br> <span>E-MAIL</span>
				<input type="text" name="email"> <br>
				<c:if test="${not empty param.error}">
					<div style="color: red; font-weight: bold;">아이디 또는 이메일이 올바르지
						않습니다.</div>
				</c:if>
				<div style="color: red; font-weight: bold;"></div>
				<a href="login">로그인</a><br> <input id="button" type="button"
					onclick='submit();' value="아이디찾기">
			</form>
		</c:if>

		<div id="findId">
			<c:if test="${not empty findId }">
				<p>귀하의 아이디는</p>
				<div style="color: black; font-weight: bold;">${findId.user_id }</div>
				<p>입니다.</p>
			</c:if>
		</div>
	</section>
	</main>

	<!-- =================FOOTER================ -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
