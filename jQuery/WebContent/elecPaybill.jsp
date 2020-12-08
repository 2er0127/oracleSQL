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
<title>2019100991 이선아</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(document).ready(function(){
	$('th').css('background','grey');
});
</script>
<style type="text/css">
table{text-align:center}
</style>
</head>
<body>
<center><h2>전기 요금 명세서 출력</h2></center>
<table border="1" width="800" align="center">
<tr>
<th>고객번호</th>
<th>고객성명</th>
<th>용도 구분</th>
<th>사용량</th>
<th>단가</th>
<th>사용요금</th>
</tr>
<%
int price=0;
int abc=0;
int add=0;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","2019100991","seona");
	String sql="select *from elec_code";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();


while(rs.next()){
	out.print("<tr>");
	out.print("<td>"+rs.getInt("CUSTCODE")+"</td>");
	out.print("<td>"+rs.getString("IRUM")+"</td>");
	
	switch(rs.getInt("elec_code")){
    case 1:
       out.print("<td>"+"가정용"+"</td>");
       break;
    case 2:
       out.print("<td>"+"영업용"+"</td>");
       break;
    case 3:
       out.print("<td>"+"산업용"+"</td>");
       break;
    default:
       out.print("<td>"+"공공기관용"+"</td>");
    }
	
	out.print("<td>"+rs.getInt("QTY")+"</td>");
	if(rs.getInt("ELEC_CODE")==1){
		price=800;
		out.print("<td>"+price+"</td>");
	} else if(rs.getInt("ELEC_CODE")==2){
		price=900;
		out.print("<td>"+price+"</td>");
	} else if(rs.getInt("ELEC_CODE")==3){
		price=1000;
		out.print("<td>"+price+"</td>");
	} else{
		price=600;
		out.print("<td>"+price+"</td>");
	}
	abc=rs.getInt("QTY")*price;
	out.print("<td>"+abc+"</td>");
	out.print("</tr>");
	add+=abc;
	
}
out.print("<tr>");
out.print("<td colspan=5>"+"전기 사용금액 총계"+"</td>");

out.print("<td>"+add+"</td>");
out.print("</tr>");

rs.close();
pstmt.close();
conn.close();
} catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
}
%>
</table>
</body>
</html>