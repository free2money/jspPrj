<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>그래서 뭐먹어?</title>

<link href="/css/default.css" type="text/css" rel="stylesheet">
<link href="/css/index_header.css" type="text/css" rel="stylesheet">
<link href="/css/index.css" type="text/css" rel="stylesheet">

</head>
<body>
	<!-- =================HEADER================ -->
	<jsp:include page="inc/index_header.jsp"/>
	
	
	<!-- =================MAIN================ -->
	<main> 
	<section id="main">

		
		<div id="best">
			<h1>BEST</h1>
		</div>
		<div id="food">
			<table>
				<c:forEach var="n" items="${list}" begin="0" end="10" step="1" >
				<tr>
					<td>${n.korname }</td>
					<td>${n.korname }</td>
					<td>${n.korname }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</section>
	</main>
	<!-- =================ASIDE================ -->
	<jsp:include page="./inc/sadari.jsp" />
	<!-- =================FOOTER================ -->
	<jsp:include page="./inc/footer.jsp" />
</body>
</html>
