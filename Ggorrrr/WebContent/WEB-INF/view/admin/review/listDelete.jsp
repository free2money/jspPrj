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
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<img src="../../images/ggorrrrlogo.png" width="50" height="50">
		<section>
			<h1>고객이 쓴 소리 관리</h1>
		</section>
	</div>

	<form action="delete">
		<!-- 삭제를 처리하는 서블릿으로 이동. -->
		<section>
			<div style="width: 960px;">
				<h1>고객이 쓴 소리 리스트</h1>
				<table>
					<thead>
						<tr>
							<th>목록</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>홍콩반점 명동점</th>
							<th>
								<!-- 아이디를 value로 전달 --> <input style="vertical-align: middle;"
								type="checkbox" value="" name="delete_Id">

							</th>
						</tr>
						<tr>
							<!-- 사진과 내용 -->
							<td></td>
						</tr>
						<tr>
						<tr>
							<th>유가네닭갈비 부평점</th>
							<th><input style="vertical-align: middle;" type="checkbox"
								value="" name="delete_Id"></th>
						</tr>
						<tr>
							<!-- 사진과 내용 -->
							<td></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" name="삭제" value="삭제" style="float: right;">
			</div>
		</section>
		<a href="../page">뒤로</a>
	</form>
	</main>
	<!-- ======================footer========================================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
