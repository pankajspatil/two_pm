<%@page import="java.util.ArrayList"%>
<%@page import="com.org.agritadka.transfer.MenuMapper"%>
<%@page import="java.util.List"%>
<%@page import="com.org.agritadka.transfer.MainMenu"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.org.agritadka.order.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/pages/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Order order = new Order();
LinkedHashMap<MainMenu, List<MenuMapper>> menuMap = order.getMenus();

%>


<table width="99.5%" border="0" align="center">
	<tr>
		<td>
			<table width="100%">
				<tr>
					<td><h1>Order No : 0000000001</h1></td>
					<td width="20%"><b>Table : Table 3</b></td>
					<td width="30%">
						<b>Waiter :</b>
						<input type="text"> 
					</td>
				</tr>
			</table>
			
		</td>	
	</tr>
	<tr align="left">
		<td width="50%" align="left" valign="top">
			<div class="bwl_acc_container" id="accordion_1" style="width: 98%; 
			height:80%;/* border:1px solid black; */">
    			<div class="accordion_search_container">
        				<input type="text" class="accordion_search_input_box search_icon" value="" placeholder="Search ..."/>
        		</div>

			<div class="search_result_container"></div>
		<%
			//out.println(menuMap.size());
			if(menuMap.size() > 0){
				List<MenuMapper> mappers = new ArrayList();
				for(MainMenu mainMenu : menuMap.keySet()){
					mappers = menuMap.get(mainMenu);
					
					
					%>
					<section>
					<h2 class="acc_title_bar">
						<a href="#"><%=mainMenu.getMainMenuName() %></a>
					</h2>
					<div class="acc_container">
						<div class="block" style="overflow: auto;">
						<%if(mappers.size() > 0){
							%><table width="100%" border="1">
							<%for(MenuMapper mapper : mappers){ %>
								<tr>
									<td width="80%"><%=mapper.getSubMenu().getSubMenuName() %></td>
									<td width="20%">&nbsp;</td>
									<td width="10%"><input type="button" value="ADD"></td>
								</tr>
								<%} %>
							</table><%
						}%>
							
						</div>
					</div>
					</section>
					<%
						}
						}
					%>

			
		</div>
			
		</td>
		<td width="50%" valign="top">
			<table width="98%;" height="100%" border="0" align="center">
				<tr class="headerTR">
					<td>Menu</td>
					<td width="10%" style="border-right: thin;">Quantity</td>
					<td width="10%">Unit Price</td>
					<td width="10%">Total Price</td>
					<td width="5%">Del</td>
				</tr>
				<tr>
					<td><input type="text" style="background:rgba(0,0,0,0); border: none;" readonly="readonly"></td>
				</tr>
				<tr>
					<td>Sub total</td>
					<td>29</td>
				</tr>
				<tr>
					<td><input type="button" value="Save"> </td>
					<td><input type="button" value="Cancel"> </td>
					<td><input type="button" value="Checkout"> </td>
				</tr>
			</table>		
		</td>
	</tr>
</table>


<script>
$("#accordion_1").bwlAccordion({
	theme:'theme-blue',
	pagination: true,
	limit: 6,
	toggle: true
});
</script>
<!-- <div style="border: 1px solid black; width: 50%; height: 200px;display: inline-block;">Div1</div>
<div style="border: 1px solid black;;margin-left: 52%; height: 200px;display: inline-block;">Div2</div> -->

</body>
</html>