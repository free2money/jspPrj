<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹지?</title>
</head>
<body>
	<header>
		<h1>그래서 뭐먹어?</h1>
		<nav>
			<h1>회원메뉴</h1>
			<ul>
				<li><a href="index.html">home</a></li>
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="">마이페이지</a></li>
				<li><a href="">고객의 소리</a></li>
			</ul>
		</nav>

		<section>
			<h1>검색창</h1>
			<form>
				<input type="text" name="검색창" value="검색어">
				<!--  -->
				<input type="submit" value="검색">
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
	<!-- =========================================================================== -->
	<main>
	<div>
		<section>
			<h1>
				<img src="./../images/ggorrrrlogo.png" width="50" height="50">고객의
				소리
			</h1>
		</section>
	</div>

	<div>
		<section>
			<h1>
				<img src="./../images/sori.png" width="50" height="50">고객의 소리
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
	<!-- ================================footer시작=============================== -->
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
