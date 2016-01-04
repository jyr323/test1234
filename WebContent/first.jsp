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

		ArrayList list = new ArrayList();
		Connection conn = null; // null로 초기화 한다.
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:orcl"; // 사용하려는 데이터베이스명을 포함한 URL 기술
			String id = "scott"; // 사용자 계정
			String pw = "tiger"; // 사용자 계정의 패스워드

			Class.forName("oracle.jdbc.driver.OracleDriver"); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.
			conn = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.

			String sql = "select * from test where test_type='" + type + "'"; // sql 쿼리

			pstmt = conn.prepareStatement(sql); // prepareStatement에서 해당 sql을 미리 컴파일한다.

			rs = pstmt.executeQuery(); // 쿼리를 실행하고 결과를 ResultSet 객체에 담는다.

			while (rs.next()) { // 결과를 한 행씩 돌아가면서 가져온다.
				list.add(rs.getString("test_type") + "  " + rs.getString("test_question") + "  "
						+ rs.getString("test_answer1") + "  " + rs.getString("test_answer2") + "  "
						+ rs.getString("test_answer3") + "  " + rs.getString("test_answer4") + "  "
						+ rs.getString("test_answer"));
	%>


	<%
		}
		} catch (Exception e) { // 예외가 발생하면 예외 상황을 처리한다.
			e.printStackTrace();
			out.println("member 테이블 호출에 실패했습니다.");
		} finally { // 쿼리가 성공 또는 실패에 상관없이 사용한 자원을 해제 한다.  (순서중요)
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException sqle) {
				} // Resultset 객체 해제
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException sqle) {
				} // PreparedStatement 객체 해제
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException sqle) {
				} // Connection 해제
		}
	%>
	
	<form action="result.jsp">
	
		<table width="550" border="1">
			<%
				for (int i = 0, j = 0; i < list.size(); i++) {
			%>
			<tr width="100">
				<td><%=list.get(i)%></td>
				<td><input type="radio" name="<%=i%>" value="1" />
				 <input type="radio" name="<%=i%>" value="2" /> 
					<input type="radio" name="<%=i%>" value="3" /> 
					<input type="radio" name="<%=i%>" value="4" />
			</tr>
			<%
				}
			%>
		</table>
		</br>
		<input type="submit" value="시험완료"/>
	</form>
</body>
</html>