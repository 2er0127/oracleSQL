<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String emailAddress=request.getParameter("emailAddress");
%>
<h2>회원정보 출력 </h2>
firstName:<%=firstName %><br>
lastName:<%=lastName %><br>
eMail:<%=emailAddress %>
</body>
</html>