<%@page import="com.org.agritadka.transfer.OrderData"%>
<%@page import="java.util.List"%>
<%@page import="com.org.agritadka.order.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="/pages/common/header.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%
Order order = new Order();
List<OrderData> orderList = order.getAllOrders();
%>
<center>
	<h1>Order Dashboard</h1>
	<table width="100%" border="1" id="orderDashboard">
	<thead>
		<tr class="headerTR">
			<td>Order No</td>
			<td>Date/Time</td>
			<td>Table No</td>
			<td>Status</td>
			<td>Cust. Name</td>
			<td>Mobile</td>
			<td>Action</td>
		</tr>
	</thead>
	<tbody>
		<%for(OrderData orderData : orderList){
			%><tr align="center">
				<td><%=orderData.getOrderId() %></td>
				<td><%=Utils.getString(orderData.getDateTime()) %></td>
				<td><%=Utils.getString(orderData.getTableName()) %></td>
				<td><%=Utils.getString(orderData.getStatusName()) %></td>
				<td><%=Utils.getString(orderData.getCustName()) %></td>
				<td><%=Utils.getString(orderData.getMobileNumber()) %></td>
				<td>
					<% if(orderData.getStatusCode().equals("INQUEUE")){
						%><input type="button" value="Edit"><%
					}else{
						%><input type="button" value="Print"><%
					}
					%></td>
			</tr><%
		}
		%>
		</tbody>
	</table>

</center>
<script src="/AgriTadka/resources/js/order.js" type="text/javascript"></script>
</body>
</html>