<%@page import="saymeow.OrderBean"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="oMgr" class="saymeow.OrderMgr"/>
<%
	String msg = "주문이 완료되었습니다.";
	String id = request.getParameter("id");
	int qty = Integer.parseInt(request.getParameter("qty"));
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	String pname = request.getParameter("pname");
	int price1 = Integer.parseInt(request.getParameter("price1"));
	String address = request.getParameter("address");
	
	OrderBean order = new OrderBean();
	order.setId(id);
	order.setPnum(pnum);
	order.setQty(qty);
	order.setPname(pname);
	order.setId(id);
	order.setOaddress(address);
	
	oMgr.insertOrder(order);
	
%>
<script>
	alert("<%=msg%>");
	location.href="TESTCART.jsp";
</script>