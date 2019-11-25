<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>

<style>
.star-rating { width:205px; }
.star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(../images/star.png)no-repeat; }
.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
</style>

</head>
<body>
	<header>
		<h1>그래서 뭐먹어?</h1>
		<nav>
			<h1>회원메뉴</h1>
			<ul>
				<li><a href="">home</a></li>
				<li><a href="">로그아웃</a></li>
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
			<form action="reg" method="post">
				<table>
					<tbody>
						<tr>
							<th>카테고리 선택</th>
							<td><select name="food_type">
									<option value="한식">한식</option>
									<option value="증식">중식</option>
									<option value="일식">일식</option>
									<option value="분식">분식</option>
									<option value="테마별">테마별</option>
									<option value="기타">기타</option>
									<option value="채식">채식</option>

							</select></td>
							<th>음식 이름</th>
							
							<td><input type="text" name="food_name" value="음식이름"></td>
						</tr>
						<tr>
							<th>먹은 날짜</th>
							<td><input type="date" name="eating_date"
								 value="먹은 날짜"></td>

							<th>먹은 장소</th>
							<td><input type="text" name="address" value="먹은 장소"></td>
						</tr>
						<tr>
							<th>상세 내용</th>
							<td colspan="3"><textarea name="content"></textarea></td>
						</tr>
						<tr>
							<th>첨부 사진</th>
							<td colspan="3"><input type="image" name="images"
								value="첨부사진" size="50px"></td>
						</tr>
						<tr>
							<th>별점</th>
							<td colspan="3"><div class='star-rating'> <span
									style="width: 50%"></span></div></td>
						</tr>
						
					</tbody>
				</table>
				<div>
					<input type="submit" name="commit" value="취소">
					<!--  -->
					<input type="submit" name="commit" value="확인">
				</div>
			</form>
		</section>
	</section>
	</main>
	<hr>
	<!-- =========================================================================== -->
	<footer> </footer>
</body>
</html>
