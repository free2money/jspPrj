<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<!-- ==header=========================== -->

	<header>
		<h1>그래서 뭐먹어?</h1>
		<nav>
			<h1>회원메뉴</h1>
			<ul>
				<li><a href="../index.html">home</a></li>
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

	<!-- ===main====================== -->

	<nav>
		<h1>음식 디테일</h1>
		<ul>
			<li><a href="">사진</a></li>
			<li><a href="">설명</a></li>
			<li><a href="">식당위치</a></li>
			<li><a href="">레시피</a></li>
		</ul>
	</nav>

	<section>
		<h1>음식사진</h1>
		<img src="./images/aa.jpg">
		<p>(상기 사진은 실물과 다를 수 있습니다.)</p>
	</section>

	<section>
		<h1>음식설명</h1>
		<dl>
			<dt>이름</dt>
			<dd>${f.korname }</dd>
			<dt>주 재료</dt>
			<dd>${f.ingridients }</dd>
			<dt>먹는 방법</dt>
			<dd>${f.explain }</dd>
		</dl>
	</section>

	<section>
		<h1>지도</h1>
		지도 api
	</section>
	<a href="update?id=${f.id }">수정</a>
	
	<form>
	
	</form>

	<!-- =====aside======================= -->

	<aside>
		<nav>
			<h1>사다리게임</h1>
			<a href="../ladder.html"><img src="./images/sadari.png"> </a>
		</nav>
	</aside>

	<!-- ======footer===================== -->

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
