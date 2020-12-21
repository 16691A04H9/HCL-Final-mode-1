<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome admin</title>
<style>
body{
    background-image: url('http://getwallpapers.com/wallpaper/small-retina/3/3/7/1519321-most-popular-neon-yellow-wallpaper-1242x2208.jpg');
    background-size: cover;
    height: 100vh;
    padding:0;
    margin:0;
}
</style>
</head>
<body>
<h1 style="color:violet"><marquee WIDTH=400 HEIGHT=50 BEHAVIOR=ALTERNATE>${headerMessage} </marquee> </h1>
	<h1>hello admin</h1>
	<form action="/ProjectTestShop">
	<input type="submit" value="log out">
	</form>
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/project" user="root"
		password="Akshi@123" />
	<sql:query dataSource="${dbsource}" var="result">
  SELECT * from customer_table;
        </sql:query>
	<form>
		<table border="1" width="40%">
			<caption>Customer List</caption>
			<tr>
				<th>Customer ID</th>
				<th>Customer Name</th>
				<th>Gender</th>
				<th>city</th>
				<th>email</th>
				<th>password</th>
				<th>phone</th>
				<th colspan="2">Action</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.id}" /></td>
					<td><c:out value="${row.customer_name}" /></td>
					<td><c:out value="${row.gender}" /></td>
					<td><c:out value="${row.city}"></c:out></td>
					<td><c:out value="${row.email}"></c:out></td>
					<td><c:out value="${row.password}"></c:out></td>
					<td><c:out value="${row.phone }"></c:out></td>
					<td><a href="deletecust?id=<c:out value="${row.id}"/>">delete</a>
					<td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<br>
	<sql:query dataSource="${dbsource}" var="result">
  SELECT * from vendor_table;
        </sql:query>
	<form>
		<table border="1" width="60%">
			<caption>vendor List</caption>
			<tr>
				<th>vendor ID</th>
				<th>vendor Name</th>
				<th>Gender</th>
				<th>city</th>
				<th>email</th>
				<th>password</th>
				<th>phone</th>
				<th colspan="2">Action</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.id}" /></td>
					<td><c:out value="${row.vendor_name}" /></td>
					<td><c:out value="${row.gender}" /></td>
					<td><c:out value="${row.city}"></c:out></td>
					<td><c:out value="${row.email}"></c:out></td>
					<td><c:out value="${row.password}"></c:out></td>
					<td><c:out value="${row.phone }"></c:out></td>
					<td><a href="deletevendor?id=<c:out value="${row.id}"/>">delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<br>
</body>
</html>