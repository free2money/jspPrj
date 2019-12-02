<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹지?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<link href="/css/reviewList.css" type="text/css" rel="stylesheet" />
<script src="/js/sadariFix.js"></script>
<script>
	window.addEventListener("load", function() {
		// 검색 폼 이벤트
		var searchSection = document.querySelector("#search");
		var eventBtn = searchSection.querySelector('input[name="search-img"]');
		var searchBtn = searchSection.querySelector('input[name="cmd"]');

		eventBtn.onclick = function(e) {
			e.preventDefault();
			var event = new MouseEvent("click", {
				view : window,
				bubbles : true,
				cancelable : true
			});
			searchBtn.dispatchEvent(event);
		};

		// 리스트 삭제 이벤트
		var listSection = document.querySelector("#content_main");
		var delBtn = listSection.querySelector('input[name="cmd"]');

		listSection.onclick = function(e) {
			if (e.target.nodeName != 'input[name="cmd"]')
				return;
			e.preventDefault();
			var event = new MouseEvent("click", {
				view : window,
				bubbles : true,
				cancelable : true
			});
			delBtn.dispatchEvent(event);
		};
	});
</script>
</head>
<body>
	<jsp:include page="../../inc/header.jsp" />
	<!-- =========================================================================== -->
	<main>
	<div id="sori-title">
		<h1>
			<img src="/images/sori.png" width="283" height="80">
		</h1>
	</div>

	<form id="search" action="" method="post">
		<input type="text" name="q" placeholder="search..." /> <input
			style="cursor: pointer; background: url('../../images/search3.png') no-repeat center;"
			type="button" name="search-img"> <input type="submit"
			name="cmd" value="search" style="display: none;" />
	</form>
	<br>

	<nav id="review">
		<h1 class="d-none">고객의 소리 리스트</h1>
		<div class="topvisual">
			<a href="reg">글쓰기</a>
		</div>

		<div id="ppp">
			<div id="middlebox">
				<div id="content_main">
					<c:forEach var="n" items="${list}">
						<form method="post">
							<div id="review-title">
								<span>ㆍ ${n.address}</span>
							</div>
							<br>
							<div id="review-content">
								<span>${n.content}</span> <span id="content_hidden">...</span> <span
									id="content_" style="display: none;">${n.content}</span> <span
									id="content_expand" style="cursor: pointer;"><a
									onclick="parent.content_.style.display=''; parent.content_hidden.style.display='none'; parent.content_expand.style.display = 'none'; parent.content_fold.style.display = '';">
										<br> 더보기
								</a> </span> <span id="content_fold"
									style="display: none; cursor: pointer;"><a
									onclick="parent.content_.style.display='none'; parent.content_hidden.style.display=''; parent.content_fold.style.display = 'none'; parent.content_expand.style.display = ''; ">
										<br> 줄이기
								</a> </span><br> <span><img alt="" src="">${n.photo }사진자리입니다.<br></span>
								<a href="edit?review_id=${n.id }">수정</a> <input type="hidden"
									name="del-id" value="${n.id }"><a class="del-text">삭제</a><input
									type="submit" name="cmd" value="del" />
							</div>
						</form>
					</c:forEach>
				</div>
				<div class="aaa"></div>
				<div id="more-more">
					<a href="">더보기</a>
				</div>
			</div>
		</div>
	</nav>
	</main>
	<jsp:include page="../../inc/sadari.jsp" />
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
