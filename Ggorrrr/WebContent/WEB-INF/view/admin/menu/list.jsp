<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<!-- ====header========================= -->
	<header>
		<h1>그래서 뭐먹어?</h1>
		<nav>
			<h1>회원메뉴</h1>
			<ul>
				<li><a href="">home</a></li>
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>

				<li><a href="">마이페이지</a></li>
				<li><a href="">고객의 소리</a></li>
			</ul>
		</nav>

		<section>
			<h1>검색창</h1>
			<form>
				<input type="text" name="검색창" value="검색어"> <input
					type="submit" value="검색">
			</form>
		</section>

		<nav>
			<h1>인기검색어</h1>
			<ul>
				<li>1.&nbsp;&nbsp;<a href="">엽기떡볶이</a>
					<ul>
						<li>2.&nbsp;&nbsp;<a href="">갈비탕</a></li>
						<li>3.&nbsp;&nbsp;<a href="">김치찌개</a></li>
					</ul>
				</li>
			</ul>
		</nav>

		<nav>
			<h1>메뉴</h1>
			<ul>
				<li>한식</li>
				<li>양식</li>
				<li>중식</li>
				<li>일식</li>
				<li>분식</li>
				<li>테마별</li>
				<li>기타</li>
				<li>채식</li>
			</ul>
		</nav>
	</header>
	<!-- ======main===================== -->
	<main>
	<h1>관리자 메뉴</h1>
	<section>
		<h1>관리자</h1>
		<img src="../../images/profile.png">
	</section>

	<section>
		<h1>메뉴관리</h1>

		<form>
			<select name="category">
				<option value="카테고리">카테고리</option>
				<option value="한식">한식</option>
				<option value="양식">양식</option>
				<option value="중식">중식</option>
				<option value="일식">일식</option>
				<option value="분식">분식</option>
				<option value="테마별">테마별</option>
				<option value="기타">기타</option>
				<option value="채식">채식</option>
			</select> <label>이름</label> <input type="text" name="menuName"> <input
				type="submit" name="search" value="검색">
		</form>
	</section>

	<form action="list" method="post">
		<table>
			<thead>
				<tr>
					<td>카테고리</td>
					<td>이름</td>
					<td>삭제</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td><a href="detail?id=${list.id}">${list.korname }</a></td>
						<td>${list.explain }</td>
						<td>${list.id}</td>
						<td><input type="checkbox" name ="del" value= "${list.id }"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="submit" value="일괄삭제" name="cmd">
		<a href="reg">메뉴등록</a>
	</form>
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
