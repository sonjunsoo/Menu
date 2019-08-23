<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("wUserID");
String pw = request.getParameter("wUserPW");
String pwcf = request.getParameter("wUserPWConfirm");
String name = request.getParameter("wUserName");
String gender = request.getParameter("wUserGender");
String phone = request.getParameter("wUserCellPhone");
String email = request.getParameter("wUserEmail");
String address = request.getParameter("wRestAddress");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
회원가입 정보</title>
</head>
<body>
<%-- jsp 주석 --%>
<!-- html 주석 -->
회원가입 정보
<br>

<br><br>
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
비밀번호 확인 : <%=pwcf %><br>
이름 : <%=name %><br>
성별 : <%=gender %><br>
전화번호 : <%=phone %><br>
이메일 : <%=email %><br>
주소 : <%=address %><br>

</body>
</html>