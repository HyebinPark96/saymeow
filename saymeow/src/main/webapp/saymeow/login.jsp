<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mBean" class="saymeow.MemberBean" />
<jsp:useBean id="mMgr" class="saymeow.MemberMgr" />                                      
<%
	//<input type="button" value="회원정보수정" onclick="location.href='memberUpdate.jsp';"><<회원정보수정 버튼
%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
</head> 
<!-- 외부 CSS -->						
<link rel="stylesheet" href="css/style.css">						
<link rel="stylesheet" href="css/styleTW.css">						
<!-- 부트스트랩 CSS -->						
<link						
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"						
rel="stylesheet"						
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"						
crossorigin="anonymous">						
<%@include file="top.jsp"%>	
<body> 

<form method="post" action="loginProc.jsp" id="item" >
<table id="level" >

<tr>  
	<td id="level2">
		<table id="level3">
		<tr> 
			<td colspan="2" align="center"><span class="loginlo">로그인</span></td>
		</tr>
		<tr  align="center"> 
			<td width="47%"><span class="loginlo">ID</span></td>
			<td width="53%"><input name="id" value="aaa"></td>
			
		</tr>
		<tr> 
			<td align="center"><span class="loginlo">Password</span></td>
			<td align="center"><input name="pwd" value="1234"></td>
			
		</tr>
		<tr>
		<td colspan="2" align="center" ><input type="submit" value="로그인" class="logbtn">
		</tr>
		<tr> 
		
			<td colspan="2" align="center">
		<input type="button" class="lbtn"value="회원가입" onclick="location.href='member.jsp';">
		<input type="button" class="lbtn" value="아이디찾기" onclick="location.href='findid.jsp'">
		<input type="button" class="lbtn" value="비밀번호찾기" onclick="location.href='findPw.jsp'">
		</td>
		</tr>
		<tr>

		
</tr>
</table>
</td>
</tr>
</table>
</form>

	<!-- 부트스트랩 JS -->					
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"					
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"					
crossorigin="anonymous">					
</script>					
<%@ include file="bottom.jsp" %>					
</body> 
</html>