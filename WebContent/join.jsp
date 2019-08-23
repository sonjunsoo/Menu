<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
회원가입ㅎㅎ<br>

<a href="http://localhost:8080/Menu/register.jsp?wUserID=qwerty&wUserPW=asd&wUserPWConfirm=asd&wUserName=%EC%A0%95%EC%84%9D%EC%98%81&wUserGender=%EB%82%A8%EC%84%B1&wUserCellPhone=010-4444-4444&wUserEmail=wjdtjrdud%40naver.com&wRestAddress=%EC%86%8C%EA%B3%84%EB%8F%99&x=54&y=48">get으로 보냄</a>
<center>
    <form action="register.jsp" method="post" name="twin">
        <table width="800">
            <tr height="40">
                <td align="center"><b>[회원가입]</b></td>
            </tr>
        </table>    
        <table width="700" height="600" cellpadding="0" style="border-collapse:collapse; font-size:9pt;">
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">회원 ID</td>
                <td><input type="text" name="wUserID" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호</td>
                <td><input type="password" name="wUserPW" id="pw" onchange="isSame()" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">비밀번호 확인</td>
                <td><input type="password" name="wUserPWConfirm" id="pwCheck" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이 름</td>
                <td><input type="text" name="wUserName" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">성 별</td>
                <td>
                    남 성<input type="radio" name="wUserGender" value="남성" checked />&nbsp;여 성<input type="radio" name="wUserGender" value="여성"/>
                </td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
                
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">휴대전화</td>
                <td><input type="tel" name="wUserCellPhone" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">이메일</td>
                <td><input type="email" name="wUserEmail" /></td>
            </tr>
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            <tr class="register" height="30">
                <td width="5%" align="center">*</td>
                <td width="15%">주 소</td>
                <td>             
                    <br /><br /><input type="text" name="wRestAddress" placeholder="주소" size="70" />
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr height="100">
                <td><input width="120" type="image" src="img/b1.png" />&nbsp;<a href="index.jsp"><img src="img/b2.png" width="120" /></a></td>
            </tr>
        </table>
    </form>
</center>
 
</body>
</html>