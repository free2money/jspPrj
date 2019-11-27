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
}

main {
	min-height: 500px;
	margin-left: auto;
	margin-right: auto;
	min-height: 500px;
	min-height: 500px;
}

footer {
	height: 100px;
}

.headerBmain {
	height: 15px;
}

.mainBfooter {
	height: 15px;
}

.middlebox {
	width: 400px;
	margin-left: auto;
	margin-right: auto;
	min-height: inherit;
	border: 2px solid black;
}

.img {
	width: inherit;
	height: 100px;
	text-align: center;
}

.img img {
	margin-top: 20px;
}
section #smallbox{
	width: 280px;
	margin-left: auto;
	margin-right: auto;
}
form input{
	width: 270px;
	height: 28px;
}
form input[type="submit"]{
	width: 274px;
}

section #smallbox *{
	margin-top: 20px;
	font-size: 15px;
}
#smallbox ul{
	text-align: center;
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
						<div class="img">
							<img src="../images/login.png">
						</div>

				<div id="smallbox">
					<form action="" method="post">
						<div>ID</div>
						<input type="text" name="id">
						<div>PASSWORD</div>
						<input type="password" name="pwd"> <input type="submit"
							name="login" value="로그인">
						<c:if test="${not empty param.error }">
							<input type="hidden" name="error" value="${param.error }">
							<div
								style="color: red; font-weight: bold; font-size: 15px; text-align: center;">아이디
								또는 비밀번호가 올바르지 않습니다.</div>
						</c:if>
						<input type="hidden" name="return-url" value="${param.returnUrl}" />
					</form>

					<h1>로그인 도움 메뉴</h1>
					<ul>
						<li><a href="/signUp/signUp">회원가입</a></li>
						<li><a href="/login/findId">아이디 찾기</a></li>
						<li><a href="">비밀번호 찾기</a></li>
					</ul>
				</div>
			</section>
		</div>
	</main>


	<div class="mainBfooter"></div>
	<!--=================FOOTER================ -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
