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
	<jsp:include page="../../inc/header.jsp" />
	<!-- =========================================================================== -->
	<main>
	<section>
		<img src="../../images/profile.png">
		<h1>관리자</h1>
		<hr>
		<section>
			<h1>메뉴 수정</h1>
			<form action="update" method="post" enctype="multipart/form-data">
				<table>
					<tbody>
						<tr>
							<th>카테고리</th>
							<td>
								<!-- 목록 펼치기. --> <select name="category">
									<option value="1">한식</option>
									<option value="2">양식</option>
									<option value="3">중식</option>
									<option value="4">일식</option>
									<option value="5">분식</option>
									<option>테마별</option>
									<option value="6">기타</option>
									<option>채식</option>
							</select> <select name="vegetarian">
									<option value = "0">채식아님</option>
									<option value = "1">채식임</option>
							</select> 
							</td>
							<th>음식 이름</th>
							 <td><input hidden="" type="text" name="detail_id" value="${f.id }"></td>
							<td><input type="text" name="food_name" value="${f.korname }"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price" value="${f.price }"><span>원</span></td>
						</tr>
						<tr>
							<th>주 재료</th>
							<td><input type="text" name="main_ingridients" value="${f.ingridients }"></td>
						</tr>
						<tr>
							<th>먹는 방법</th>
							<td><input type="text" name="how_to_eat" value="${f.explain }"></td>
						</tr>
						<tr>
							<th>테마</th>
							<td><input type="text" name="thema" value="${f.thema }"></td>
						</tr>
						<tr>
							<th>레시피</th>
							<td><input type="text" name="recipe" value="${f.recipe }"></td>
						</tr>
						<tr>
							<th>첨부 사진</th>
							<td colspan="3"><input type="file" name="files" value="내PC"
								multiple="multiple"></td>

						</tr>
					</tbody>
				</table>
				<div>
					<a href="adminlist">취소</a>&nbsp;
					<input type="submit" name="sss" value="확인">
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
