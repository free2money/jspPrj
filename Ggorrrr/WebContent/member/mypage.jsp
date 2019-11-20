<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
</head>
<body>
	<header>
		<h1>그래서 뭐먹어?</h1>
		<nav>
			<h1>회원메뉴</h1>
			<ul>
				<li><a href="">home</a></li>
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="">마이페이지</a></li>
				<li><a href="">고객의 소리</a></li>
			</ul>
		</nav>

		<section>
			<h1>검색창</h1>
			<form>
				<input type="text" name="검색창" value="검색어"> <input
					type="submit" value="검색">
			</form>
		</section>

		<nav>
			<h1>인기검색어</h1>
			<ul>
				<li>순위검색어확장</li>
				<li>1. &nbsp; <a href="">엽기떡볶이</a></li>
			</ul>
		</nav>

		<nav>
			<h1>메뉴</h1>
			<ul>
				<li><a href="">한식</a>
					<ul>
						<li><a href="">찌개</a></li>
						<li><a href="">국</a></li>
						<li><a href="">밥</a></li>
						<li><a href="">백반</a></li>
						<li><a href="">국수</a></li>
						<li><a href="">구이</a></li>
						<li><a href="">찜</a></li>
						<li><a href="">조림</a></li>
						<li><a href="">볶음</a></li>
						<li><a href="">부침</a></li>
					</ul></li>
				<li><a href="">양식</a>
					<ul>
						<li><a href="">치킨</a></li>
						<li><a href="">피자</a></li>
						<li><a href="">햄버거</a></li>
						<li><a href="">파스타</a></li>
						<li><a href="">스테이크</a></li>
					</ul></li>
				<li><a href="">중식</a>
					<ul>
						<li><a href="">면</a></li>
						<li><a href="">밥</a></li>
						<li><a href="">딤섬</a></li>
						<li><a href="">튀김</a></li>
						<li><a href="">탕</a></li>
						<li><a href="">볶음</a></li>
					</ul></li>
				<li><a href="">일식</a>
					<ul>
						<li><a href="">밥</a></li>
						<li><a href="">튀김</a></li>
						<li><a href="">면</a></li>
						<li><a href="">전골</a></li>
						<li><a href="">일본가정식</a></li>
					</ul></li>
				<li><a href="">분식</a>
					<ul>
						<li><a href="">김밥</a></li>
						<li><a href="">떡볶이</a></li>
						<li><a href="">순대</a></li>
						<li><a href="">튀김</a></li>
						<li><a href="">라면</a></li>
						<li><a href="">만두</a></li>
					</ul></li>
				<li><a href="">테마별</a>
					<ul>
						<li><a href="">비오는날</a></li>
						<li><a href="">매운음식땡기는날</a></li>
						<li><a href="">쌀쌀한날</a></li>
						<li><a href="">더운날</a></li>
						<li><a href="">해장</a></li>
						<li><a href="">소개팅</a></li>
						<li><a href="">가족식사</a></li>
						<li><a href="">야식</a></li>
					</ul></li>
				<li><a href="">기타</a>
					<ul>
						<li><a href="">카레</a></li>
						<li><a href="">케밥</a></li>
						<li><a href="">부리또</a></li>
						<li><a href="">쌀국수</a></li>
						<li><a href="">볶음</a></li>
						<li><a href="">볶음밥</a></li>
						<li><a href="">튀김</a></li>
					</ul></li>
				<li><a href="">채식</a>
					<ul>
						<li><a href="">샐러드</a></li>
						<li><a href="">나물</a></li>
						<li><a href="">해산물</a></li>
					</ul></li>
			</ul>
		</nav>
	</header>
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main>
	<div>
		<img src="../images/ggorrrrlogo.png" width="50" height="50">
		<section>
			<h1>MY그먹</h1>
		</section>
	</div>
	<form action="/member/mypage" method="post">
		<section>
			<!--<h1>마이페이지사용자프로필</h1>-->
			<div>
				<img src="../images/profile.png" width="50" height="50">
				<h1>${member.nickname}</h1>
			</div>
			<input type="hidden" name="id" value="${member.id}">
			<dl>
				<dt>아이디:</dt>
				<dd>${member.user_id}</dd>

				<dt>비밀번호:</dt>
				<dd>
					<input type="password" name="pwd" value="${member.pwd}"
						readonly="readonly"><input type="submit" name="cmd"
						value="이동">
				</dd>
				<dt>이름:</dt>
				<dd>${member.name}</dd>
				<dt>닉네임:</dt>

				<dd>
					<input type="text" name="닉네임수정" value="${member.nickname}">
					<input type="submit" name="cmd" value="변경">

				</dd>
				<dt>생년월일:</dt>
				<dd>${member.birthday}</dd>
				<dt>전화번호:</dt>
				<dd>${member.phone}</dd>
				<dt>위치정보:</dt>
				<dd>
					<input type="hidden" name="위치정보동의" value="${member.location_agree}">
					<c:if test="${member.location_agree!=1}">
					동의<input type="radio" name="agreement" value="동의">
					</c:if>
					<c:if test="${member.location_agree==1}">
				동의<input type="radio" name="agreement" value="동의" checked="checked">
					</c:if>

					<c:if test="${member.location_agree!=0}">
					비동의<input type="radio" name="agreement" value="비동의">
					</c:if>
					<c:if test="${member.location_agree==0}">
				비동의<input type="radio" name="agreement" value="비동의"
							checked="checked">
					</c:if>
					<input type="submit" name="cmd" value="변경">
				</dd>
				<dt>
					<a href="mybookmarklist?id=${member.id}">My메뉴관리</a>
				</dt>
				<dt>
					<a href="./r/">내가 쓴 소리 관리</a>
				</dt>
			</dl>
		</section>
	</form>
	</main>
	<!------------------------- ㅡmain끝 ------------------------------------>
	<aside>
		<h1>사다리게임</h1>
		<nav>
			<h1>사다리이미지</h1>
			<a href=""><img src="../images/sadari.png" width="100"
				height="100"></a>
		</nav>
	</aside>
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