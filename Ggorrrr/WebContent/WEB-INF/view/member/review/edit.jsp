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
	<jsp:include page="../../inc/header.jsp" />
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
					<a href="listDelete">취소</a>&nbsp;
					<!--  -->
					<input type="submit" name="commit" value="확인">
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
