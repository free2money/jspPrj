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

	<header>
		<h1>�׷��� ���Ծ�?</h1>
		<nav>
			<h1>ȸ���޴�</h1>
			<ul>
				${f.recipe }
				<li><a href="../index.html">home</a></li>
				<li><a href="">�α���</a></li>
				<li><a href="">ȸ������</a></li>
				<li><a href="">����������</a></li>
				<li><a href="">���� �Ҹ�</a></li>
			</ul>
		</nav>

		<section>
			<h1>�˻�â</h1>
			<form>
				<input type="text" name="�˻�â" value="�˻���">
				<!--  -->
				<input type="submit" value="�˻�">
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
		<img src="./images/aa.jpg">
		<p>(��� ������ �ǹ��� �ٸ� �� �ֽ��ϴ�.)</p>
	</section>

	<section>
		<h1>���ļ���</h1>
		<dl>
			<dt>�̸� </dt>
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

	<aside>
		<nav>
			<h1>��ٸ�����</h1>
			<a href="../ladder.html"><img src="./images/sadari.png"> </a>
		</nav>
	</aside>

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