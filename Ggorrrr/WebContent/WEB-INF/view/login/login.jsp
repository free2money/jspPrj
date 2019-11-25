<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<style>
h1 {
	width: 0px;
	height: 0px;
	font-size: 0px;
	line-height: 0px;
	position: absolute;
	overflow: hidden;
}

header {
	height: 100px;
	background: yellow;
}

main {
	background: green;
	min-height: 500px;
	margin-left: auto;
	margin-right: auto;
	min-height: 500px;
	min-height: 500px;
}

footer {
	height: 100px;
	background: blue;
}

.headerBmain {
	height: 15px;
}

.mainBfooter {
	height: 15px;
}

.middlebox {
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	min-height: inherit;
	border-color: black;
	border: solid;
	background: white;
}
</style>

</head>
<body>
	<!-- =================HEADER================ -->
	<jsp:include page="../inc/header.jsp" />
	<!-- =================MAIN================ -->
	<div class="headerBmain"></div>

	<main>
	<div class="middlebox">
		<section>
			<h1>로그인</h1>
			<form action="" method="post">
				<img src="../images/login.png">
				<div class="idbox">ID</div>
				<input type="text" name="id">
				<div>PASSWORD</div>
				<input class="pwdbox" type="password" name="pwd"> <input
					type="submit" name="login" value="로그인">
				<c:if test="${not empty param.error }">
					<input type="hidden" name="error" value="${param.error }">
					<div
						style="color: red; font-weight: bold; font-size: 15px; text-align: center;">아이디
						또는 비밀번호가 올바르지 않습니다.</div>
				</c:if>
				<input type="hidden" name="return-url" value="${param.returnUrl}" />
			</form>
		</section>
		<nav>
			<h1>로그인 도움 메뉴</h1>
			<ul>
				<li><a href="../signUp/signUpAgree">회원가입</a></li>
				<li><a href="findID">아이디 찾기</a></li>
				<li><a href="findPwd">비밀번호 찾기</a></li>
			</ul>
		</nav>
	</div>
	</main>


	<div class="mainBfooter"></div>
	<!--=================FOOTER================ -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
