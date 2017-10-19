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
			<li><a href="#">소개</a></li>
			<li><a href="#">리뷰게시판</a>
			
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
			<li ><a href = "homepage.jsp">로그아웃</a>
			<li ><a href = "#">마이페이지</a>
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
					<!-- onsubmit은 이벤트 핸들러다 결국 자바스크립트에 대한 이벤트의 처리는 body에있는 form에서 하게된다.
					따라서 이벤트 핸들러인 onsubmit을 이용해서 이벤트의 처리를 하며 onsubmit이 true값을 받으면 이벤트가
					동작되고 false인 경우에는 이벤트가 작동하지 않는다.만약 전달되는 데이터가 없으면 true라고  간주해서
					자동으로 동작하게 된다. 하지만 check()에서의 조건문에는 if문에 boolean값을 호출하도록 작성해야 한다. -->
	 <table width="200" border="0" align="center">
	  <tr>
	   <td>
	    <input type="text" size="16" name="keyWord"> 
	   </td>
	   <td>
	    <input type="submit" value="검색">
	   </td>  
	  </tr>
	 </table>
	</form>
	<table id = "category">
		<tr>
			<td><a href = # class="button">중식</a></td>
			<td><a href = # class="button">양식</a></td>
			<td><a href = # class="button">일식</a></td>
		</tr>
		<tr>
			<td><a href = # class="button">한식</a></td>
			<td><a href = # class="button">카페</a></td>
			<td><a href = # class="button">내밥</a></td>
		</tr>
		<tr>
			<td><a href = # class="button">집밥</a></td>
			<td><a href = # class="button">양식</a></td>
			<td><a href = # class="button">일식</a></td>
		</tr>
	</table>
	<br>
	<footer> 
		<address align="center"> 
		연락처 : <a href="mailto:webmaster@somedomain.com">help@example.com</a>.
		<br> 
		서울시 마포구 백범로18 미화빌딩 쌍용강북센터 FoodPlace
	
		</address> 
		<small >Copyright &copy; 2017 FoodPlace
		</small> 
	</footer>
</body>
</html>