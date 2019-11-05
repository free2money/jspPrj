<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<!-- ====header====================== -->
	<header>
		<h1>회원가입페이지</h1>
		<nav>
			<h1>
				<a href="">그래서 뭐먹어?<img src="images/ggorrrrlogo.png"></a>
			</h1>
		</nav>
	</header>

	<!-- ====main====================== -->
	<main>
	<section>
	<h1>입력</h1>
		<form method="post">
			아이디<br> <input type="text" name="signupId"><br>
			비밀번호<br> <input type="password" name="signupPw"><br>
			비밀번호확인<br> <input type="password" name="signupPwCf"><br>
			이름<br> <input type="text" name="signupname"><br> 성별<br>
			<select name="gender">
				<option value="gender">성별</option>
				<option value="male">남성</option>
				<option value="female">여성</option>
			</select> <select name="year">
				<%
					for (int i = 0; i < 70; i++) {
				%>
				<option value="year"><%=(i + 1950)%></option>
				<%
					}
				%>
			</select> <select name="month">
				<%
					for (int i = 0; i < 12; i++) {
				%>
				<option value="year"><%=(i + 1)%></option>
				<%
					}
				%>
			</select> <select name="day">
				<%
					for (int i = 0; i < 31; i++) {
				%>
				<option value="year"><%=(i + 1)%></option>
				<%
					}
				%>
			</select><br> 이메일<br> <input size="10" type="text" name="email">@
			<select>
				<option value="naver">naver.com
				<option value="daum">daum.net
				<option value="google">gmail.com
			</select> <input type="submit" value="확인" name="signUp"> <input
				type="submit" value="취소" name="signUpExit">
		</form>
	</section>

	</main>

	<!-- ======footer===================== -->
	<footer>
		<section>
			<h1>회사소개</h1>
		</section>

		<section>
			<h1>이용약관</h1>
		</section>
	</footer>
</body>
</html>