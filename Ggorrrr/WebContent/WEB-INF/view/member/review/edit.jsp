<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
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
		<hr>
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
	<hr>
	<!-- =========================================================================== -->
	<main>
	<section>
		<img src="/images/ggorrrrlogo.png">
		<h1>고객의 소리 등록</h1>
		<section>
			<form action="edit" method="post">
				<table>
					<tbody>
						<tr>
							<th>카테고리 선택</th>
							<td><ul>
									<!-- 목록 펼치기. -->
									
									<select id="foodType">
									<c:choose>
										<c:when test="${edit.foodType eq '한식'}">
										<option value="한식">한식</option>
										</c:when>
										<c:when test="${edit.foodType eq '양식'}">
										<option value="양식">양식</option>
										</c:when>
										<c:when test="${edit.foodType eq '중식'}">
										<option value="중식">중식</option>
										</c:when>
										<c:when test="${edit.foodType eq '일식'}">
										<option value="일식">일식</option>
										</c:when>
										<c:when test="${edit.foodType eq '분식'}">
										<option value="분식">분식</option>
										</c:when>
										<c:when test="${edit.foodType eq '테마별'}">
										<option value="테마별">테마별</option>
										</c:when>
										<c:when test="${edit.foodType eq '기타'}">
										<option value="기타">기타</option>
										</c:when>
										<c:otherwise>
										<option value="채식">채식</option>
										</c:otherwise>
									</c:choose>	
									</select>

								</ul></td>
							<th>음식 이름</th>
							<td><input type="text" name="food_name"
								value="${edit.foodName }"></td>
						</tr>
						<tr>
							<th>먹은 날짜</th>
							<td><input type="text" name="eating_date"
								value="${edit.eating_date }"></td>

							<th>먹은 장소</th>
							<td><input type="text" name="address"
								value="${edit.address }"></td>
						</tr>
						<tr>
							<th>상세 내용</th>
							<td colspan="3"><textarea name="content"
									value="${edit.content }"></textarea></td>
						</tr>
						<tr>
							<th>첨부 사진</th>
							<td colspan="3"><input type="text" name="images"
								value="${edit.photo }" size="50px"></td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="review" value="${edit.id}">
				<div>
					<a href="">취소</a>&nbsp;
					<!--  -->
					<input type="submit" name="commit" value="확인">
				</div>
			</form>
		</section>
	</section>
	</main>
	<hr>
	<!-- =========================================================================== -->
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
