<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�׷��� ���Ծ�?</title>
</head>
<body>
	<!-- ==header=========================== -->
	<jsp:include page="../inc/header.jsp" />
	<!-- ===main====================== -->

	<nav>
		<h1>���� ������</h1>
		<ul>
			<li><a href="">����</a></li>
			<li><a href="">����</a></li>
			<li><a href="">�Ĵ���ġ</a></li>
			<li><a href="">������</a></li>
		</ul>
	</nav>

	<section>
		<h1>���Ļ���</h1>
		<img src="../images/aa.jpg">
		<p>(��� ������ �ǹ��� �ٸ� �� �ֽ��ϴ�.)</p>
	</section>

	<section>
		<h1>���ļ���</h1>
		<dl>
			<dt>�̸�</dt>
			<dd>�����</dd>
			<dt>�� ���</dt>
			<dd>��,����,����</dd>
			<dt>�Դ� ���</dt>
			<dd>�� �Դ� ����</dd>
		</dl>
	</section>

	<section>
		<h1>����</h1>
		���� api
	</section>

	<!-- =====aside======================= -->
	<jsp:include page="../inc/sadari.jsp" />
	<!-- ======footer===================== -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>
