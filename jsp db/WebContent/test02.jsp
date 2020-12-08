<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<table width="500" border="1">
<tr>
<th>ELEC_CODE</th>
<th>ELEC_NAME</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "2019100991", "seona");
	String sql="select *from elec_bill";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
while(rs.next()){
	out.print("<tr>");
	out.print("<td>"+rs.getInt("ELEC_CODE")+"</td>");
	out.print("<td>"+rs.getString("ELEC_NAME")+"</td>");
	out.print("</tr>");
}
rs.close();
pstmt.close();
conn.close();

}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null)conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
</table>
</body>
</html>