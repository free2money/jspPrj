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
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!-- =========================================================================== -->
	<main>
	<div>
		<section>
			<h1>
				<img src="../images/ggorrrrlogo.png" width="50" height="50">고객의
				소리
			</h1>
		</section>
	</div>

	<div>
		<section>
			<h1>
				<img src="../images/sori.png" width="50" height="50">고객의 소리
			</h1>
		</section>
	</div>
	<div>
		<form action="list" method="post">
			<input type="text" name="q" value="검색어"> <input type="submit"
				name="cmd" value="검색">
		</form>
	</div>
	<nav>
		<h1>고객의 소리 리스트</h1>
		<form action="list" method="post">
			<input type="submit" name="cmd" value="글쓰기" >
			<a href="list?order=0">최신순</a>
			<a href="list?order=1">평점순</a>
		</form>
		<ul>
			<c:forEach var="n" items="${list}">
				<li>
					<table>
						<tbody>


							<tr>
								<th>${n.address}</th>
							</tr>
							<tr>
								<td>
									<!-- id를 번호로 부여해서 style을 건들이면 되겟다. -->
									<div id="content_main">
										${n.content}<span id="content_hidden">...</span><span
											id="content_" style="display: none;">${n.content}</span><span
											id="content_expand" style="cursor: pointer;"><a
											onclick="parent.content_.style.display=''; parent.content_hidden.style.display='none'; parent.content_expand.style.display = 'none'; parent.content_fold.style.display = '';">
												<br> 더보기
										</a> </span> <span id="content_fold"
											style="display: none; cursor: pointer;"><a
											onclick="parent.content_.style.display='none'; parent.content_hidden.style.display=''; parent.content_fold.style.display = 'none'; parent.content_expand.style.display = ''; ">
												<br> 줄이기
										</a> </span>
									</div>
								</td>
							</tr>
							<tr>
								<td><img alt="" src="">${n.photo }</td>
							</tr>

						</tbody>
					</table>
				</li>
			</c:forEach>
		</ul>
	</nav>
	</main>
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ================================footer시작=============================== -->
	<jsp:include page="../inc/footer.jsp"/>
</body>
</html>
