<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
</head>
<style>
main {
	min-width: 1580px;
}

#page-top {
	height: 70px;
	width: 100%;
	display: flex;
	border-bottom: 1px solid #808080a6;
	position: relative;
	border-top: 1px solid gray;
	margin-top: 20px;
}

#page-top img {
	width: 50px;
	height: 50px;
	position: absolute;
	top: 11px;
	left: 20px;
}

#page-top h1 {
	position: absolute;
	font-size: 25px;
	left: 87px;
	top: 15px;
}

#middle-box {
	width: 800px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 40px;
	margin-bottom: 80px;
	position: relative;
}

#middle-box>h1 {
	font-size: 20px;
	font-weight: normal;
	margin-top: 10px;
}

#middle-box table {
	margin-top: 40px;
}

#section1:first-child {
	margin-left: 20px;
}

#middle-box * {
	margin-top: 10px;
	font-size: 15px;
}

#foodtxt {
	width: 200px;
}

#content-first * {
	margin-right: 10px;
	font-size: 15px;
}

#content-last {
	bottom: -40px;
	position: absolute;
	left: 395px;
}

#food-price {
	margin-right: 56px;
}

#food-ingridients {
	margin-right: 35px;
}

#food-eat {
	margin-right: 20px;
}

#food-thema {
	margin-right: 61px;
}

#food-recipe {
	margin-right: 41px;
}

#food-img {
	margin-right: 20px;
}
#won{
	margin-left: 20px;
}

section input[type="text"]{
	border: 2px solid #d4f4fa;
	font-weight: normal;
	text-align: center;
}
</style>
<body>
	<jsp:include page="../../inc/header.jsp" />
	<!-- =========================================================================== -->
	<main>
	<section>
		<h1 class="d-none">관리자 메뉴</h1>
		<section id="page-top">
			<img src="../../images/profile.png">
			<h1>관리자</h1>
		</section>

		<section id="middle-box">
			<h1>메뉴 등록</h1>
			<form action="reg" method="post" enctype="multipart/form-data">
				<!-- 목록 펼치기. -->
				<div id="content-first">
					<select name="category">
						<option value="1">한식</option>
						<option value="2">양식</option>
						<option value="3">중식</option>
						<option value="4">일식</option>
						<option value="5">분식</option>
						<option>테마별</option>
						<option value="6">기타</option>
						<option>채식</option>
					</select> <select name="vegetarian">
						<option value="0">채식아님</option>
						<option value="1">채식임</option>
					</select><span>음식 이름</span> <input id="foodtxt" type="text" name="food_name"
						value="음식이름">
				</div>
				<div>
					<span id="food-price">가격</span> <input type="text" name="price"
						value="가격"><span id="won">원</span>
				</div>
				<div>
					<span id="food-ingridients">주 재료</span> <input type="text"
						name="main_ingridients" value="주재료">
				</div>
				<div>
					<span id="food-eat">먹는 방법</span> <input type="text"
						name="how_to_eat" value="먹는 방법">
				</div>
				<div>
					<span id="food-thema">테마</span><input type="text" name="thema"
						value="테마">
				</div>
				<div>
					<span id="food-recipe">레시피</span> <input type="text" name="recipe"
						value="레시피">
				</div>
				<div>
					<span id="food-img">첨부 사진</span>
					<!--  -->
					<input type="file" name="files" value="내PC" multiple="multiple">
				</div>
				<!--  -->
				<div id="content-last">
					<input type="submit" name="commit" value="확인">
					<!--  -->
					<a href="adminlist">취소</a>
				</div>
			</form>
		</section>
	</section>
	</main>
	<hr>
	<!-- =========================================================================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
