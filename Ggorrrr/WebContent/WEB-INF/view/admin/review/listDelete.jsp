<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<link href="/css/admin_reviewManage.css" type="text/css"
	rel="stylesheet" />
</head>
<body>
	<jsp:include page="../../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main id="main">
	<div id="title">
		<img src="../../images/soriManage.png">
	</div>
	<hr>
	<form id="search" action="">
		<input type="text" name="q" placeholder="search..." /> <input
			onclick="submit();" style="cursor: pointer;" type="button"
			name="검색버튼" />
	</form>
	<br>

	<section class="reviewList">
		<div>
			<h1>고객이 쓴 소리 리스트</h1>

			<div class="topvisual">
				<a href="reg">글쓰기</a>
			</div>

			<div id="order">
				<a href="list?order=regdate">최신순</a> <a href="list?order=rating">평점순</a><br>
			</div>
						<hr>
			<div id="ppp">
			<div id="middlebox">
				<div id="content_main">
					<c:forEach var="n" items="${list}" begin="0" end="3">
						<div id="review-title"> 
							<span>ㆍ ${n.address}</span>
							<input type="hidden" name="del_id"
										value="${review.id }"> <input type="submit" name="del"
										value="삭제">
						</div>
						<br>
						<div id="review-content">
							<!-- id를 번호로 부여해서 style을 건들이면 되겟다. -->
							<span>${n.content}</span> <span id="content_hidden">...</span> <span
								id="content_" style="display: none;">${n.content}</span> <span
								id="content_expand" style="cursor: pointer;"><a
								onclick="parent.content_.style.display=''; parent.content_hidden.style.display='none'; parent.content_expand.style.display = 'none'; parent.content_fold.style.display = '';">
									<br> 더보기
							</a> </span> <span id="content_fold" style="display: none; cursor: pointer;"><a
								onclick="parent.content_.style.display='none'; parent.content_hidden.style.display=''; parent.content_fold.style.display = 'none'; parent.content_expand.style.display = ''; ">
									<br> 줄이기
							</a> </span><br> <span><img alt="" src="">${n.photo }사진자리입니다.<br></span>
						</div>
						<br>
					</c:forEach>

				</div>
				<div class="aaa"></div>
			</div>
		</div>
		</div>
	</section>
	<a href="../page">뒤로</a> </main>
	<!-- ======================footer========================================== -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
</html>
