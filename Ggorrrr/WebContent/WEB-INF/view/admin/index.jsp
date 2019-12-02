<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<style>
#middlebox {
	width: 400px;
	min-height: 350px;
	margin-left: auto;
	margin-right: auto;
	border: 2px solid gray;
	margin-bottom: 30px;
	margin-top: 30px;
}

section #content div {
	margin-top: 30px;
	font-size: 18px;
	margin-left: 110px;
}

section>.profile {
	position: relative;
	height: 60px;
	border-bottom: 2px solid gray;
}

section>.profile div {
	position: absolute;
	left: 174px;
	top: 11px;
	font-size: 22px;
}

section>.profile img {
	position: absolute;
	left: 114px;
	top: 3px;
}
</style>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<div>
			<img src="/images/ggorrrrlogo.png" width="50" height="50">
			<section>
				<h1>관리자페이지</h1>
			</section>
		</div>
		<section>
			<h1 class="d-none">관리자</h1>
			<div class="profile">
				<img src="/images/profile.png" width="50" height="50">
				<div>
					<h1>${sessionScope.sessionuser.name }</h1>
				</div>
			</div>
			<br>
			<div id="content">
				<div>
					<a href="changePwd">ㆍ비밀번호 변경</a>
				</div>
				<div>
					<a href="./member/memberlist">ㆍ회원 관리</a>
				</div>
				<div>
					<a href="./review/listDelete">ㆍ고객의소리 관리</a>
				</div>
				<div>
					<a href="./menu/adminlist"> ㆍ관리</a>
				</div>
			</div>
		</section>
	</div>
	</main>
	<!------------------------- ㅡmain끝 ------------------------------------>
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
