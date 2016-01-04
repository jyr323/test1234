<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	   <%
      response.setCharacterEncoding("EUC-KR");
      String result1 = request.getParameter("0");
      String result2 = request.getParameter("1");
   %>
   
   <%=result1 %><br>
   <%=result2 %>
</body>
</html>