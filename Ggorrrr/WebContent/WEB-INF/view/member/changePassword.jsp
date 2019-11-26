<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/changePassword.css" rel="stylesheet" type="text/css">
<script src="/js/pwd.js"></script>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<img src="/images/ggorrrrlogo.png" width="50" height="50">
		<section>
			<h1>MY그먹</h1>
		</section>
	</div>

	<form action="" method="post">
		<section>
			<h1>마이페이지비밀번호변경프로필</h1>
			<div>
			 <input type="hidden" name="id" value="${member.id}">
			 <input type="hidden" name="agreement" value="${member.location_agree}">
			<input type="hidden" name="nickname" value="${member.nickname}">
				<img src="/images/profile.png" width="50" height="50">
				 <h1>${member.nickname}</h1>
			</div>
			<dl id="change-pwd">
				<dt>현재비밀번호:</dt>
				<dd>
					<input class="now-pwd" type="hidden" name="pwd" value="${pwd}">
				</dd>
				<dd>
					<input class="now-pwd2" type="text" name="nowPwd" value="">
					<input class="now-check-button" type="button" name="nowPwdbutton"
						value="확인">
				</dd>
				<dd>
				<input class="now-check-text" type="text" name="nowPwdText" value="">
				</dd>

			<!--<dd>${nows}</dd>-->
			
				<dt>새 비밀번호:</dt>
				<dd>
					<input class="new-pwd" type="text" name="newPwd" value="">
				</dd>

				<dt>새 비밀번호 확인:</dt>
				<dd>
					<input class="new-pwd2" type="text" name="newPwd2" value="">
					<input class="new-check-button" type="button" name="newPwdsubmit"
						value="확인">
				</dd>
				<dd><input class="new-check-text" type="text" name="newPwdText" value=""></dd>
			</dl>

			<div>
				<a href="mypage"><input type="button" name="취소"
					value="취소"></a> <a href="./categori.html"><input
					type="submit" name="save" value="저장"></a>
			</div>
		</section>
	</form>
	</main>
	<!------------------------- ㅡmain끝 ------------------------------------>
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
