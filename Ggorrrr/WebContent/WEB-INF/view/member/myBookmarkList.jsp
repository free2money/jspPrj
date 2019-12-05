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
main {
	min-width: 1580px;
}

#bmlist .bm-del {
	display: none;
}

#bmlist .bm-btn {
	cursor: pointer;
}

#profile {
	display: flex;
	margin-left: auto;
	margin-right: auto;
	width: 400px;
	position: relative;
}

#profile img {
	position: absolute;
	left: 100px;
}

#profile section h1 {
	font-size: 27px;
	position: absolute;
	left: 161px;
	top: 4px;
}

#middlebox {
	margin-top: 80px;
	position: relative;
}

#middlebox div>img {
	width: 25px;
	height: 25px;
	position: absolute;
	left: 30px;
	top: 25px;
}

#bmlist>div>h1 {
	display: flex;
	position: absolute;
	left: 65px;
	top: 20px;
	font-size: 24px;
	font-weight: bold;
}

#middle-top {
	height: 100px;
}
#content{
	width: 1388px;
	margin-left: auto;
	margin-right: auto;
	min-height: 100px;
	display: flex;
}
#content ul li{
	display: flex;
}

#content ul li>img{
	
}
</style>
</head>
<body>
	<jsp:include page="../inc/header.jsp" />
	<!------------------------- ㅡheader끝 main시작 ------------------------------------>
	<main id="main">

	<div id="profile">
		<img src="/images/ggorrrrlogo.png" width="50" height="50">
		<section>
			<h1 id="my-title">MY즐겨찾기관리</h1>
		</section>
	</div>

	<div id="middlebox">
		<nav id="bmlist">
			<div id="middle-top">
				<img src="/images/onimages.png">
				<h1>MY 메뉴 관리</h1>
			</div>
			<div id="content">
				<c:forEach var="bm" items="${bmlist }">
					<form method="post">
						<ul>
							<li><img src="/upload/${bm.photo }" width="100" height="100">
								<a href="../menu/detail?id=${bm.id }"><br> ${bm.korname }</a><span
								class="bm-btn">★</span><input type="hidden" name="food-id"
								value="${bm.id }"> <input class="bm-del" type="submit"
								name="del" value="삭제"></li>
						</ul>
					</form>
				</c:forEach>
			</div>
		</nav>
	</div>
	</main>
	<jsp:include page="../inc/sadari.jsp" />
	<!--  ---------------------------------------------------------------------------------------------- -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
