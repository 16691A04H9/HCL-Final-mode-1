<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Customers List</h3>
	<c:if test="${!empty listCustomers}">
		<table class="tg">
			<tr>
				<th width="80">iD</th>
				<th width="120">customer_Name</th>
				<th width="120">gender</th>
				<th width="120">city</th>
				<th width="120">email</th>
				<th width="120">password</th>
				<th width="120">phone</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${listCustomer}" var="customer">
				<tr>
					<td>${customer.id}</td>
					<td>${customer.customer_Name}</td>
					<td>${customer.gender}</td>
					<td>${customer.city}</td>
					<td>${customer.email}</td>
					<td>${customer.password}</td>
					<td>${customer.phone}</td>
					<td><a href="<c:url value='/edit/${customer.id}' />">Edit</a></td>
					<td><a href="<c:url value='/remove/${customer.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>