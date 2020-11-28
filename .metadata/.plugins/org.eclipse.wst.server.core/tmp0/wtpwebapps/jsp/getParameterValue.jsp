<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>회원 정보 </h2>
<form method="post" action="JSP_out01.jsp">
<table border=1>
<tr><td>firstName<td align=center size=20><input type=text name="firstName"></td></tr>
<tr><td>lastName<td align=center size=20><input type=text name="lastName"></td></tr>
<tr><td>Email<td align=center size=20><input type=text name="emailAddress"></td></tr>
<tr><td colspan=2 align=center><input type=submit value="전송 "></td></tr>
</table>
</form>

</body>
</html>