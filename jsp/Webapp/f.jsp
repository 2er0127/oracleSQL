<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center> <h3>표현식으로 팩토리얼 구하기</h3>
<%
int num=5;
int sum=1;
for(int i=num; i>1; i--){
    sum=sum*i;
}
%>
원하는 숫자:
<%=num %>!=<%=sum %>
</center>
</body>
</html>