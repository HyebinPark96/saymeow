<%@page import="saymeow.CartBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="cMgr" class="saymeow.CartMgr"/>
<%
	

	int allTotal=0;
%>
<!DOCTYPE html>
<html>
<head>
<title>Cart List</title>
<script src="saymeowScript.js">

</script>
</head>
<body>
<form method="post" name="cfrm" action="cartProc.jsp">
<input type="hidden" name="cch" value="0">
<h1>�� ��ٱ���</h1>
	<table>
		<tr>
		<td><input type="checkbox" name="allCh" onclick="javascript:allChk()"></td>
		<td>NO</td>
		<td>��ǰ��</td>
		<td>�ǸŰ�</td>
		<td>����</td>
		<td>�ݾ�</td>
		</tr>
<!-- Is Empty Start -->
		<%
			Vector<CartBean> vlist = cMgr.getCartList("1");
			if(vlist.isEmpty()){
		%>
			<tr>
				<td colspan="6">��ٱ��Ͽ� �߰��� ��ǰ�� �����ϴ�.</td>
			</tr>
<!-- Is Empty End -->
<!-- Vector List Start -->
		<%}else{
			for(int i=0;i<vlist.size();i++){
			CartBean cart = vlist.get(i);
			int price = cart.getPrice1();
			int quantity = cart.getQty();
			int total = price*quantity;
			allTotal += total;
		%>
		<tr>
			<td><input type="checkbox" name="cch" value="<%=cart.getCnum()%>" onclick="javascript:chk()"></td>
			<td><%=i+1%></td>
			<td><%=cart.getPname()%></td>
			<td><%=price%></td>
			<td><%=quantity%></td>
			<td><%=total%></td>
		</tr>
		
			<%}
		}%>
	</table>
	<!-- Vector List End -->
	<table>
	<h1>��ٱ����� �� �ݾ��� <%=allTotal%>�� �Դϴ�</h1>
	</table>
	<input type="button" value="����" onclick="javascript:cartDelete(this.form)">
	<input type="button" value="�ֹ��ϱ�" onclick="javascript:cartOrder(this.form)">
	<input type="hidden" name="flag">
	</form>
	
</body>
</html>

