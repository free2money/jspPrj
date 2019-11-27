<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<script>
	window.addEventListener("load", function() {
		var section = document.querySelector("#bmlist");
		var bmBtn = section.querySelector(".bm-btn");
		var delBtn = section.querySelector(".bm-del");

		bmBtn.onclick = function() {
			var event = new MouseEvent("click", {
				view : window,
				bubbles : true,
				cancelable : true
			});
			delBtn.dispatchEvent(event);
		};
	});
</script>
<style>
#bmlist .bm-del {
	display: none;
}

#bmlist .bm-btn {
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main id="main">
	<div>
		<div>
			<img src="/images/ggorrrrlogo.png" width="50" height="50">
			<section>
				<h1>MY즐겨찾기관리</h1>
			</section>
		</div>

		<nav id="bmlist">
			<h1>사용자가 즐겨찾는 음식 리스트</h1>
			<c:forEach var="bm" items="${bmlist }">
				<form method="post">
					<ul>
						<li><img src="/images/KimchiSoup.jpg" width="100"
							height="100"> <a href="../menu/detail?id=${bm.id }">
								${bm.korname }</a> <span>${bm.price }</span> <span class="bm-btn">★</span><input
							type="hidden" name="food-id" value="${bm.id }"> <input
							class="bm-del" type="submit" name="del" value="삭제"></li>
					</ul>
				</form>
			</c:forEach>
		</nav>
	</div>
	</main>
	<jsp:include page="../inc/sadari.jsp" />
	<!--  ---------------------------------------------------------------------------------------------- -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
