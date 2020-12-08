<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>2019100991 이선아 </title>
</head>
<body>
당신이 좋아하는 아이돌 그룹은 
<%
String[] values=request.getParameterValues("idole");

for(int i=0; i<values.length; i++){
if(i<values.length-1){
%>
<%=values[i] %>,
<%
}
else if(i==values.length-1){
%>
<%=values[i] %>
<%
}
}
%>
입니다.
</body>
</html>