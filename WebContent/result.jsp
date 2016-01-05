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
      String allqt = request.getParameter("allqt");
      int intAllqt = Integer.valueOf(allqt);
      int score = 0;

      String qtAnswer = null;
      String userAnswer = null;
      for(int i=0; i<intAllqt; i++){
         qtAnswer = request.getParameter("answer"+i);
         userAnswer = request.getParameter(""+i);
         if(qtAnswer.equals(userAnswer)){
            score++;
            
         }
      }
   %>
점수 : <%=score %><br>
   <%
      if(score>=7){
         %>
         축하합니다 합격입니다
         <%
      }else{
         %>
         불합격입니다
         <%
         
      }
   %>
</body>
</html>