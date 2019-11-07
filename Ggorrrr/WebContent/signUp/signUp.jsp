<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>

<style>
header nav {
	display: inline-block;
	font-size: 30px;
	height: 70px;
	left: 50%;
}

/* body {
	
} */
h1 {
	width: 0px;
	height: 0px;
	font-size: 0px;
	line-height: 0px;
	position: absolute;
	overflow: hidden;
}

#header {
	height: 100px;
	font-size: 30px;
	padding-top: 60px;
	text-align: center;
}

#main {
	padding-top: 10px;
}

form div {
	padding-top: 10px;
	left: 100px;
	padding-bottom: 10px;
}

.box {
	/* width: 700px; */
	width: 38%;
	height: 800px;
	float: left;
}

label {
	font-size: 20px;
	font-weight: bold;
	padding-bottom: 3px;
}

div [type="text"] {
	width: 20%;
	height: 40px;
	font-size: 20px;
}

div [type="password"] {
	width: 20%;
	height: 40px;
	font-size: 20px;
}

div .email{
	width: 219px;
}

div select {
	width: 120px;
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
			<a href="">그래서 뭐먹어?<img width="50px" height="50px"
				src="../images/ggorrrrlogo.png"></a>
		</nav>
	</header>

	<!-- ====main====================== -->
	<main id="main">
	<div class="box">
		<label> </label>
	</div>
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
				<label >이메일</label> <br> <input class="email" size="10"
					type="text" name="email"><label>@</label> <select>
					<option value="naver">naver.com
					<option value="daum">daum.net
					<option value="google">gmail.com
				</select>
			</div>
			<div>
				<a href=""><img src="../images/aa.png"></a>
			</div>
		</form>
	</section>

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