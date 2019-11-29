<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹지?</title>
<script src="/js/sadariFix.js"></script>
<style>
#list li {
	list-style:;
}
</style>
</head>
<body>
	<jsp:include page="../../inc/header.jsp" />
	<!-- =========================================================================== -->
	<main>
	<div>
		<section>
			<h1>
				<img src="../../images/ggorrrrlogo.png" width="50" height="50">고객의
				소리
			</h1>
		</section>
	</div>

	<div>
		<section>
			<h1>
				<img src="../../images/sori.png" width="50" height="50">고객의 소리
			</h1>
		</section>
	</div>
	<div>
		<form>
			<input type="text" name="q" value="검색어"> <input type="submit"
				name="cmd" value="검색">
		</form>
	</div>
	<nav>
		<h1>고객의 소리 리스트</h1>
		<ul id="list">
			<c:forEach var="n" items="${listDelete}">
				<form action="listDelete" method="post">
					<li>주소:${n.address}</li>
					<li>음식종류:${n.foodType}</li>
					<li>음식이름:${n.foodName}</li>
					<li>
						<div id="content_main">
							내용: ${n.content}<span id="content_hidden">...</span><span
								id="content_" style="display: none;">${n.content}</span><span
								id="content_expand" style="cursor: pointer;"><a
								onclick="parent.content_.style.display=''; parent.content_hidden.style.display='none'; parent.content_expand.style.display = 'none'; parent.content_fold.style.display = '';">
									<br> 더보기
							</a> </span> <span id="content_fold" style="display: none; cursor: pointer;"><a
								onclick="parent.content_.style.display='none'; parent.content_hidden.style.display=''; parent.content_fold.style.display = 'none'; parent.content_expand.style.display = ''; ">
									<br> 줄이기
							</a> </span>
						</div>
					</li>
					<li>먹은날짜:${n.eating_date}</li>
					<li>등록일:${n.regdate}</li>
					<li>사진:${n.photo}</li> <a href="edit?review_id=${n.id }"><input
						type="button" name="cmd" value="수정" /></a> <input type="button"
						name="cmd" value="삭제" />
				</form>
				<hr>
			</c:forEach>
		</ul>
	</nav>
	</main>
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
