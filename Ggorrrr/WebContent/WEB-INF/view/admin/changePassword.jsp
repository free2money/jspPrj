<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<script src="/js/adminPwd.js"></script>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<div>
			<img src="/images/ggorrrrlogo.png" width="50" height="50">
			<section>
				<h1>관리자 페이지</h1>
			</section>
		</div>

		<form action="" method="post">
			<section>
				<h1>관리자 비밀번호 변경페이지</h1>
				<div>
					<img src="/images/profile.png" width="50" height="50">
					<h1>${sessionScope.sessionuser.name}</h1>
				</div>
				<!-- 현재비밀번호는 자바스크립트로 -->
				<dl id="change-pwd">
					<dt>현재비밀번호:</dt>
					<dd>
						<input class="now-pwd" type="text" name="nowPwd" value="">
						<input class="now-pwd" type="hidden" name="nowPwd_"
							value="${sessionScope.sessionuser.pwd }">
					</dd>
				</dl>
				<label class="now-check-text"></label>
				<!--<dd>${nows}</dd>-->
				<dl>
					<dt>새 비밀번호:</dt>
					<dd>
						<input class="new-pwd" type="text" name="newPwd" value="">
					</dd>

					<dt>새 비밀번호 확인:</dt>
					<dd>
						<input class="new-pwd-check" type="text" name="newPwd2" value="">
						<input class="new-check-button" type="submit" name="cmd"
							value="확인">
					</dd>
					<dd>${news}</dd>
				</dl>

				<div>
					<a href="index">취소</a> <input type="submit" name="commit"
						value="저장">
				</div>
			</section>
		</form>
	</div>
	</main>
	<!------------------------- ㅡmain끝 ------------------------------------>
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>