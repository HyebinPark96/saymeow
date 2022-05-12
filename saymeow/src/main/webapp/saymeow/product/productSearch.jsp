<%@page import="saymeow.UtilMgr"%>
<%@page import="saymeow.ProductBean"%>
<%@page import="java.util.Vector"%>
<%@page import="saymeow.ProductMgr"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%
request.setCharacterEncoding("EUC-KR");
String mClass = request.getParameter("mClass");
String sClass = request.getParameter("sClass");
String keyWord = request.getParameter("keyWord"); // �˻��� ��ǰ�̸�

ProductMgr mgr = new ProductMgr();
Vector<ProductBean> pvlist = mgr.getPList(keyWord);
	
%>
ml>
<html>
<head>
<meta charset="EUC-KR">
<title>productSearch</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' type='text/css' media='screen'href='../css/plist.css'>
<jsp:include page = "../top2.jsp"/>
</head>
<script>
function send_form(frmId) { // form ����
	document.getElementById(frmId).submit();
}


function sel(){ 
	var langSelect = document.getElementById("sort"); 
	// select element���� ���õ� option�� value�� ����ȴ�. 
	var selectValue = langSelect.options[langSelect.selectedIndex].value; 
	// select element���� ���õ� option�� text�� ����ȴ�. 
	var selectText = langSelect.options[langSelect.selectedIndex].text; 
}

</script>
<body>
	<div id="container">
		<!-- ī�װ���(sidebar) -->
		<section class="category">
			<h3>ī�װ���</h3>
			<ul>
				<li><a href="#" onclick="return send_form('frmFo')">������ ���</a>
					<form method="post" id="frmFo" action="productProc.jsp">
						<input type=hidden name="mClass" value="food">
					</form>
					<ol>
						<li><a href="#" onclick="return send_form('frmDr')">�ǽĻ��</a>
							<form method="post" id="frmDr" action="productProc.jsp">
								<input type=hidden name="mClass" value="food"> <input
									type=hidden name="sClass" value="dry">
							</form></li>
						<li><a href="#" onclick="return send_form('frmWe')">���Ļ��</a>
							<form method="post" id="frmWe" action="productProc.jsp">
								<input type=hidden name="mClass" value="food"> <input
									type=hidden name="sClass" value="wet">
							</form></li>
					</ol></li>
				<li><a href="#" onclick="return send_form('frmTr')">������ ����</a>
					<form method="post" id="frmTr" action="productProc.jsp">
						<input type=hidden name="mClass" value="treat">
					</form>
					<ol>
						<li><a href="#" onclick="return send_form('frmSn')">����</a>
							<form method="post" id="frmSn" action="productProc.jsp">
								<input type=hidden name="mClass" value="treat"> <input
									type=hidden name="sClass" value="snack">
							</form></li>
						<li><a href="#" onclick="return send_form('frmSt')">��ƽ</a>
							<form method="post" id="frmSt" action="productProc.jsp">
								<input type=hidden name="mClass" value="treat"> <input
									type=hidden name="sClass" value="stick">
							</form></li>
					</ol></li>
				<li><a href="#" onclick="return send_form('frmTo')">������ �峭��</a>
					<form method="post" id="frmTo" action="productProc.jsp">
						<input type=hidden name="mClass" value="toy">
					</form>
					<ol>
						<li><a href="#" onclick="return send_form('frmPo')">����/���˴�</a>
							<form method="post" id="frmPo" action="productProc.jsp">
								<input type=hidden name="mClass" value="toy"> <input
									type=hidden name="sClass" value="pole">
							</form></li>
						<li><a href="#" onclick="return send_form('frmPl')">����</a>
							<form method="post" id="frmPl" action="productProc.jsp">
								<input type=hidden name="mClass" value="toy"> <input
									type=hidden name="sClass" value="plush">
							</form></li>
					</ol></li>
				<li><a href="#" onclick="return send_form('frmLi')">������
						�躯��ǰ</a>
					<form method="post" id="frmLi" action="productProc.jsp">
						<input type=hidden name="mClass" value="litter">
					</form>
					<ol>
						<li><a href="#" onclick="return send_form('frmSa')">��</a>
							<form method="post" id="frmSa" action="productProc.jsp">
								<input type=hidden name="mClass" value="litter"> <input
									type=hidden name="sClass" value="sand">
							</form></li>
						<li><a href="#" onclick="return send_form('frmBo')">ȭ���</a>
							<form method="post" id="frmBo" action="productProc.jsp">
								<input type=hidden name="mClass" value="litter"> <input
									type=hidden name="sClass" value="box">
							</form></li>
					</ol></li>
			</ul>
		</section>
		<section class="plist">
			<div class="ptop">
			
				�˻���: <%=keyWord%>
				<div class="array">n���� ��ǰ�� �ֽ��ϴ�. 
				</div>
				
			</div>
			<div class="product_list" id="product_list">
				���⼭���� ��ǰ����<br>
				<ul class="product_row">
					<%
							for (int i=0; i<pvlist.size(); i++) {
								ProductBean pbean = pvlist.get(i);
						%>
					<li><img src="../image/<%=pbean.getImage()%>" height="200"
						width="200"><br> <%=pbean.getPname()%><br> <%=UtilMgr.monFormat(pbean.getPrice1())%>��<br>
					</li>
					<%} //--for%>
				</ul>	
			</div>
		</section>
	</div>
</body>
</html>