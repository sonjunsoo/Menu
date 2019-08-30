<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String email = request.getParameter("email");
String pw = request.getParameter("password");

System.out.println(name);
System.out.println(email);
System.out.println(pw);
%>
<%
Connection conn=null;
Boolean connect = false;
String sql = "INSERT INTO ttusers (name, email, pw) VALUES (?, ?, ?)";
try{
	Context init = new InitialContext();
    DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/kndb");
    conn = ds.getConnection();
    
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, email);
    pstmt.setString(3, pw);

    pstmt.executeUpdate();
    connect = true;
    conn.close();
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}
%>
<%
if(connect==true){
System.out.println("연결되었습니다.");
}else{
	out.println("회원가입에 실패하였습니다.");
	return;
}%> 
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
이름 : <%=name %><br>
이메일 : <%=email %><br>
비밀번호 : <%=pw %><br>


</body>
</html>