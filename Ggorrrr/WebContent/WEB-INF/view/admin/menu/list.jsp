<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�׷��� ���Ծ�?</title>
</head>
<body>
	<!-- ====header========================= -->
	<header>
		<h1>�׷��� ���Ծ�?</h1>
		<nav>
			<h1>ȸ���޴�</h1>
			<ul>
				<li><a href="">home</a></li>
				<li><a href="">�α���</a></li>
				<li><a href="">ȸ������</a></li>

				<li><a href="">����������</a></li>
				<li><a href="">���� �Ҹ�</a></li>
			</ul>
		</nav>

		<section>
			<h1>�˻�â</h1>
			<form>
				<input type="text" name="�˻�â" value="�˻���"> <input
					type="submit" value="�˻�">
			</form>
		</section>

		<nav>
			<h1>�α�˻���</h1>
			<ul>
				<li>1.&nbsp;&nbsp;<a href="">���ⶱ����</a>
					<ul>
						<li>2.&nbsp;&nbsp;<a href="">������</a></li>
						<li>3.&nbsp;&nbsp;<a href="">��ġ�</a></li>
					</ul>
				</li>
			</ul>
		</nav>

		<nav>
			<h1>�޴�</h1>
			<ul>
				<li>�ѽ�</li>
				<li>���</li>
				<li>�߽�</li>
				<li>�Ͻ�</li>
				<li>�н�</li>
				<li>�׸���</li>
				<li>��Ÿ</li>
				<li>ä��</li>
			</ul>
		</nav>
	</header>
	<!-- ======main===================== -->
	<main>
	<h1>������ �޴�</h1>
	<section>
		<h1>������</h1>
		<img src="../../images/profile.png">
	</section>

	<section>
		<h1>�޴�����</h1>

		<form>
			<select name="category">
				<option value="ī�װ�">ī�װ�</option>
				<option value="�ѽ�">�ѽ�</option>
				<option value="���">���</option>
				<option value="�߽�">�߽�</option>
				<option value="�Ͻ�">�Ͻ�</option>
				<option value="�н�">�н�</option>
				<option value="�׸���">�׸���</option>
				<option value="��Ÿ">��Ÿ</option>
				<option value="ä��">ä��</option>
			</select> <label>�̸�</label> <input type="text" name="menuName"> <input
				type="submit" name="search" value="�˻�">
		</form>
	</section>

	<form>
		<table>
			<thead>
				<tr>
					<td>ī�װ�</td>
					<td>�̸�</td>
					<td>����</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td>${list.korname }</td>
						<td>${list.explain }</td>
						<td><input type="checkbox"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="submit" value="�ϰ�����" name="cmd"> <input
			type="submit" value="�޴����" name="cmd">
	</form>
	</main>
	<!-- ======footer===================== -->
	<footer>
		<section>
			<h1>ȸ��Ұ�</h1>
		</section>

		<section>
			<h1>�̿���</h1>
		</section>
	</footer>

</body>
</html>