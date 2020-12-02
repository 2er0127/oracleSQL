<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>삼육 동아리 회원 가입 </h3>
<form action="JSPViewTest01.jsp" method="POST">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pwd"><br>
<br>
이름:<input type="text" name="name"><br>
학번:<input type="text" name="hakbun"><br>
<br>
성별:<input type="radio" name="gender" value="남" checked>남 <input type="radio" name="gender" value="여">여 
<br><br>
희망 동아리:복수 선택 가능
<br>
<input type="checkbox" name="dongahri" value="축구">축구 
<input type="checkbox" name="dongahri" value="농구">농구 
<input type="checkbox" name="dongahri" value="배구">배구 
<input type="checkbox" name="dongahri" value="탁구">탁구 
<br>
<input type="checkbox" name="dongahri" value="배드민턴">배드민턴 
<input type="checkbox" name="dongahri" value="테니스">테니스  
<input type="checkbox" name="dongahri" value="밸리댄스">밸리댄스 <br>
<br>

<input type="submit" value="전송"><input type="reset" value="취소">


</form>
</body>
</html>