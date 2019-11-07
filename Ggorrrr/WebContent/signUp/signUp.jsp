<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>

<style>
main {
	width: 1600px;
	min-height: 300px;
}

h1 {
	width: 0px;
	height: 0px;
	font-size: 0px;
	line-height: 0px;
	position: absolute;
	overflow: hidden;
}

#header {
	width: 1600px;
	height: 100px;
	text-align: center;
	font-size: 40px;
	margin-top: 40px;
}

#footer {
	width: 1600px;
	height: 100px;
}

.middlebox {
	width: 450px;
	margin-right: auto;
	margin-left: auto;
}

label {
	font-size: 20px;
	font-weight: bold;
	ma: 10px;
}

div [type="text"] {
	width: 100%;
	height: 40px;
	font-size: 20px;
}

form div {
	padding-top: 10px;
	left: 100px;
	padding-bottom: 10px;
}

div [type="password"] {
	width: 100%;
	height: 40px;
	font-size: 20px;
}

div .email {
	width: 274px;
}

div select {
	width: 146px;
	height: 47px;
	font-size: 20px;
}

div input[type="submit"] {
	background-color: #bdd7ee;
	width: 22%;
	height: 70px;
	font-size: 22px;
	color: white;
}
</style>
</head>
<body bgcolor="#f5f6f7">
	<!-- ====header====================== -->
	<header id="header">
		<h1>회원가입페이지</h1>
		<nav>
			<a href=""><img width="50px" height="50px"
				src="../images/ggorrrrlogo.png">그래서 뭐먹어?</a>
		</nav>
	</header>

	<!-- ====main====================== -->
	<main>
	<div class="middlebox">
		<section>
			<h1>입력</h1>
			<form method="post">
				<div>
					<label>아이디</label><br> <input class="id" type="text"
						name="signupId"><br>
				</div>
				<div>
					<label>비밀번호 </label><br> <input class="pw" type="password"
						name="signupPw">
				</div>
				<div>
					<label>비밀번호확인 </label><br> <input class="pwcf" type="password"
						name="signupPwCf">
				</div>
				<div>
					<label>이름</label><br> <input class="name" type="text"
						name="signupname">
				</div>
				<div>
					<label>성별</label><br> <select class="gender" name="gender">
						<option value="gender">성별</option>
						<option value="male">남성</option>
						<option value="female">여성</option>
					</select>
				</div>
				<div>
					<label>생년월일</label><br> <select class="year" name="year">
						<%
							for (int i = 0; i < 70; i++) {
						%>
						<option value="year"><%=(i + 1950)%></option>
						<%
							}
						%>

					</select> <select class="month" name="month">
						<%
							for (int i = 0; i < 12; i++) {
						%>
						<option value="year"><%=(i + 1)%></option>
						<%
							}
						%>
					</select> <select class="day" name="day">
						<%
							for (int i = 0; i < 31; i++) {
						%>
						<option value="year"><%=(i + 1)%></option>
						<%
							}
						%>
					</select>
				</div>
				<div>
					<label>이메일</label> <br> <input class="email" size="10"
						type="text" name="email"><label>@</label> <select>
						<option value="naver">naver.com
						<option value="daum">daum.net
						<option value="google">gmail.com
					</select>
				</div>
				<div class="singup">
					<a href=""><img width="450px" src="../images/aa.png"></a>
				</div>
			</form>
		</section>
	</div>

	</main>

	<!-- ======footer===================== -->
	<footer id="footer">
		<section>
			<h1>회사소개</h1>
		</section>

		<section>
			<h1>이용약관</h1>
		</section>
	</footer>
</body>
</html>