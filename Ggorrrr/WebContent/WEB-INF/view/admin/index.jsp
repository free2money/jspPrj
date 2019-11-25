<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
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
			<div>
				<img src="/images/profile.png" width="50" height="50">
				<h1>${sessionScope.sessionuser.name }</h1>
			</div>
			<div>
				<div>
					<a href="changePwd">비밀번호 변경</a>
				</div>
				<div>
					<a href="./member/memberlist">회원 관리</a>
				</div>
				<div>
					<a href="./review/listDelete">고객의소리 관리</a>
				</div>
				<div>
					<a href="./menu/adminlist">메뉴 관리</a>
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
