<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sinsang 테이블 업데이트 </title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String hakkwa=request.getParameter("hakkwa");
String kor=request.getParameter("kor");
String eng=request.getParameter("eng");
String com=request.getParameter("com");

String sabun=request.getParameter("sabun");

Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "seona", "seona");
	
	String sql="update sinsang set hakkwa=?, kor=?, eng=?, com=? where sabun=?";
	
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, hakkwa);
	pstmt.setInt(2, Integer.parseInt(kor));
	pstmt.setInt(3, Integer.parseInt(eng));
	pstmt.setInt(4, Integer.parseInt(com));
	pstmt.setString(5, sabun);
	pstmt.executeUpdate();
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}

%>
<h3>수정이 완료되었습니다. </h3><br>
<a href="selectSinsang.jsp">확인하기 </a>

</body>
</html>