<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
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

System.out.println(id);
System.out.println(pw);
System.out.println(name);
System.out.println(gender);
System.out.println(phone);
System.out.println(email);
System.out.println(address);
	if (!pw.equals(pwcf)){
		out.println("<script> alert('패스워드 재확인!'); location.href= './register.jsp';</script>");
		return;
	}
%>
<%
Connection conn=null;
Boolean connect = false;
String sql = "INSERT INTO tusers (id, pw, name, gender, phone, email, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
try{
	Context init = new InitialContext();
    DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/kndb");
    conn = ds.getConnection();
    
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, pw);
    pstmt.setString(3, name);
    pstmt.setString(4, gender);
    pstmt.setString(5, phone);
    pstmt.setString(6, email);
    pstmt.setString(7, address);

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
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
이름 : <%=name %><br>
성별 : <%=gender %><br>
전화번호 : <%=phone %><br>
이메일 : <%=email %><br>
주소 : <%=address %><br>

</body>
</html>