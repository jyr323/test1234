<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
</head>
<body>

   <%@ page import="java.sql.*"%>
   <%@ page import="java.util.*"%>
   <%
      response.setCharacterEncoding("EUC-KR");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String type = request.getParameter("type");

      HashMap<String, String> data = new HashMap<String, String>();
      ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
      
      Connection conn = null; // null�� �ʱ�ȭ �Ѵ�.
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
         String url = "jdbc:oracle:thin:@localhost:1521:orcl"; // ����Ϸ��� �����ͺ��̽����� ������ URL ���
         String id = "scott"; // ����� ����
         String pw = "tiger"; // ����� ������ �н�����

         Class.forName("oracle.jdbc.driver.OracleDriver"); // �����ͺ��̽��� �����ϱ� ���� DriverManager�� ����Ѵ�.
         conn = DriverManager.getConnection(url, id, pw); // DriverManager ��ü�κ��� Connection ��ü�� ���´�.

         String sql = "select * from qtinfo where info_type='" + type + "'"; // sql ����

         pstmt = conn.prepareStatement(sql); // prepareStatement���� �ش� sql�� �̸� �������Ѵ�.

         rs = pstmt.executeQuery(); // ������ �����ϰ� ����� ResultSet ��ü�� ��´�.

         while (rs.next()) { // ����� �� �྿ ���ư��鼭 �����´�.
            data.put("info_qt",rs.getString("info_qt"));
             data.put("info_ex1",rs.getString("info_ex1"));
             data.put("info_ex2",rs.getString("info_ex2"));
             data.put("info_ex3",rs.getString("info_ex3"));
             data.put("info_ex4",rs.getString("info_ex4"));
             data.put("info_answer",rs.getString("info_answer"));
             data.put("info_type",rs.getString("info_type"));
             list.add(data);
   %>

   <%
      }
      } catch (Exception e) { // ���ܰ� �߻��ϸ� ���� ��Ȳ�� ó���Ѵ�.
         e.printStackTrace();
         out.println("member ���̺� ȣ�⿡ �����߽��ϴ�.");
      } finally { // ������ ���� �Ǵ� ���п� ������� ����� �ڿ��� ���� �Ѵ�.  (�����߿�)
         if (rs != null)
            try {
               rs.close();
            } catch (SQLException sqle) {
            } // Resultset ��ü ����
         if (pstmt != null)
            try {
               pstmt.close();
            } catch (SQLException sqle) {
            } // PreparedStatement ��ü ����
         if (conn != null)
            try {
               conn.close();
            } catch (SQLException sqle) {
            } // Connection ����
      }
   %>
   <form action="result.jsp">
      <table width="550" border="1">
      <input type="hidden" name="allqt" value=<%=list.size()%> />
         <%
            for (int i = 0, j = 0; i < list.size(); i++) {
         %>
         <tr width="100">
            <td><%=list.get(i).get("info_qt")%></td>
            <input type="hidden" name="answer<%=i %>" value=<%=list.get(i).get("info_answer")%> />
            <td><input type = "radio" name = <%=i %> value = 1></td>
            <td><input type = "radio" name = <%=i %> value = 2></td>
            <td><input type = "radio" name = <%=i %> value = 3></td>
            <td><input type = "radio" name = <%=i %> value = 4></td>
         </tr>
         <tr>   
            <td><%=list.get(i).get("info_ex1")%></td>
         </tr>
         <tr>   
            <td><%=list.get(i).get("info_ex2")%></td>
         </tr>
         <tr>   
            <td><%=list.get(i).get("info_ex3")%></td>
         </tr>
         <tr>   
            <td><%=list.get(i).get("info_ex4")%></td>
         </tr>
         
         
         <%
            }
         %>
<%--          <tr>
            <c:forEach var="vo" items="${list}">
               <td>${vo.info_qt}test</td>
            </c:forEach>
         </tr> --%>
      </table>
      </br>
      <input type="submit" value="����Ϸ�"/>
   </form>
</body>
</html>