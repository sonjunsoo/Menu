<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
폼을 만들어 보자.
<br>
<br>
<form action="submit.jsp">
텍스트 박스
<input type = "text" name = "text">
<br>
이메일
<input type = "email" name = "eamil">
<br>
패스워드
<input type = "password" name = "password">
<br>
숫자
<input type = "number">
<br>
시간
<input type = "time">
<br>
색상
<input type = "color">
<br>
전화번호
<input type = "tel">
<br>
날짜
<input type = "date">
<br>
전송버튼
<input type = "submit" name = "전송">
</form>

</body>
</html>