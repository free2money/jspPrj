<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>
<link href="/css/default.css" type="text/css" rel="stylesheet" />
<link href="/css/sadari_main.css" type="text/css" rel="stylesheet" />
<script src="/js/ladder.js"></script>

#bookmark section ul {
	display: flex;
}

</head>
<body>
	<jsp:include page="./inc/header.jsp" />
	<!-- =========================================================================== -->
	<main id="main">
	<div>
		<section id="sadari-main">
			<h1>음식 사다리 타기 게임 페이지</h1>
			<div id="bookmark">
				<section>
					<h1>즐겨찾기한 목록</h1>
					<ul>
						<c:forEach items="${list }" var="bm">
							<li><a href="./menu/detail?id=${bm.id }"><img
									alt="${bm.korname }" src="/upload/${bm.photo }"></a></li>
						</c:forEach>
					</ul>
				</section>
			</div>
			<div id="sadari-game">
				<section>
					<h1>사다리 게임</h1>
					<div id="div_step1" style="font-size: 12px;">
						갯수 선택 <select id="sel_num">
							<option value="2" selected>2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
						</select> 개 <input type="button" value="만들기" onclick="Yl.init();">
					</div>

					<div id="div_step2" style="font-size: 12px; display: none;">
						입력후 게임 시작 <input type="button" value="시작" onclick="Yl.create();">
					</div>

					<div id="div_body"
						style="width: inherit; height: 500px; border: 1px solid #CCCCCC; position: relative;"></div>
				</section>
			</div>
		</section>
	</div>
	</main>
	<!-- ============================================================================== -->
	<jsp:include page="./inc/footer.jsp" />
</body>
</html>
