<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.dao.*"%>
<%
	//한글변환
	request.setCharacterEncoding("EUC-KR");
	String latlng=request.getParameter("latlng");
	String title =request.getParameter("title");
	String content = request.getParameter("content");
	out.print(latlng);
	reviewVO vo= new reviewVO();
	vo.setLatlng(latlng);
	vo.setTitle(title);
	vo.setContent(content);
	
	//Database 전송
	reviewDAO dao=reviewDAO.newInstance();
	dao.reviewUpdate(vo);
	%>
	<script type="text/javascript">
	alert("");

	</script>
	<%
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>