<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<link rel = "stylesheet" type = "text/css" href = "table.css">
</head>
<body>
	<div id="blogMenu">
		<ul>
			<li><a href="#">�Ұ�</a></li>
			<li><a href="#">����Խ���</a>
			
				<ul>
					<li><a href="#">Sub Menu 1</a></li>
					<li><a href="#">Sub Menu 2</a></li>
					<li><a href="#">Sub Menu 3</a></li>
				</ul>
			
			</li>
			
			<li><a href="#">Q&A</a>
			
				<ul>
					<li><a href="#">Sub Menu 1</a></li>
					<li><a href="#">Sub Menu 2</a></li>
					<li><a href="#">Sub Menu 3</a></li>
				</ul>
			
			</li>
			
			<li><a href="#">Menu 4</a></li>
			<li><a href="#">Menu 5</a></li>
		</ul>
	</div>
		<ul id = "loginbar">
			<li ><a href = "homepage.jsp">�α׾ƿ�</a>
			<li ><a href = "#">����������</a>
		</ul>
	<br/>

	<div>
		<!--  <figure >
			<img id = "mainBackground" 
				 src = "../image/chicken.gif"
				 />
		</figure> -->
		<article >
			<img id = "logo" 
				src = "../image/FoodPlace-logo (2).png"/>
		</article>	
	</div>
	<form name = "search" method = "get" action ="#" onsubmit="return check()">
					<!-- onsubmit�� �̺�Ʈ �ڵ鷯�� �ᱹ �ڹٽ�ũ��Ʈ�� ���� �̺�Ʈ�� ó���� body���ִ� form���� �ϰԵȴ�.
					���� �̺�Ʈ �ڵ鷯�� onsubmit�� �̿��ؼ� �̺�Ʈ�� ó���� �ϸ� onsubmit�� true���� ������ �̺�Ʈ��
					���۵ǰ� false�� ��쿡�� �̺�Ʈ�� �۵����� �ʴ´�.���� ���޵Ǵ� �����Ͱ� ������ true���  �����ؼ�
					�ڵ����� �����ϰ� �ȴ�. ������ check()������ ���ǹ����� if���� boolean���� ȣ���ϵ��� �ۼ��ؾ� �Ѵ�. -->
	 <table width="200" border="0" align="center">
	  <tr>
	   <td>
	    <input type="text" size="16" name="keyWord"> 
	   </td>
	   <td>
	    <input type="submit" value="�˻�">
	   </td>  
	  </tr>
	 </table>
	</form>
	<table id = "category">
		<tr>
			<td><a href = # class="button">�߽�</a></td>
			<td><a href = # class="button">���</a></td>
			<td><a href = # class="button">�Ͻ�</a></td>
		</tr>
		<tr>
			<td><a href = # class="button">�ѽ�</a></td>
			<td><a href = # class="button">ī��</a></td>
			<td><a href = # class="button">����</a></td>
		</tr>
		<tr>
			<td><a href = # class="button">����</a></td>
			<td><a href = # class="button">���</a></td>
			<td><a href = # class="button">�Ͻ�</a></td>
		</tr>
	</table>
	<br>
	<footer> 
		<address align="center"> 
		����ó : <a href="mailto:webmaster@somedomain.com">help@example.com</a>.
		<br> 
		����� ������ �����18 ��ȭ���� �ֿ밭�ϼ��� FoodPlace
	
		</address> 
		<small >Copyright &copy; 2017 FoodPlace
		</small> 
	</footer>
</body>
</html>