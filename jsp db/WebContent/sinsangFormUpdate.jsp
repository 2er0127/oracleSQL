<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신상 정보 업데이트 폼 </title>
</head>
<body>
<h2>신상 정보 업데이트 폼 </h2>
<form action="updateSinsang.jsp" method="POST" name="frm">
<table>
<tr>
<td>사번</td>
<td><input type="text" name="sabun" size="20"></td>
</tr>
<tr>
<td>학과 </td>
<td><input type="text" name="hakkwa" size="20"></td>
</tr>
<tr>
<td>국어 </td>
<td><input type="text" name="kor" size="12"></td>
</tr>
<tr>
<td>영어 </td>
<td><input type="text" name="eng" size="12"></td>
</tr>
<tr>
<td>전산 </td>
<td><input type="text" name="com" size="12"></td>
</tr>
<tr>
<td><input type="submit" value="갱신 전송(send)"></td>
<td><input type="reset" value="갱신 취소(cancel)"></td>
</tr>

</table>

</form>

</body>
</html>