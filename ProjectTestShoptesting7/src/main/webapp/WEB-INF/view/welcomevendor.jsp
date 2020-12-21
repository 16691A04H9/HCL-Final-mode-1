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
<title>vendor home</title>
<style type="text/css">
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
hello vendor..!
<h2 align="right"> Welcome ${vendor.vendor_Name}</h2>
<form action="/ProjectTestShop">
	<input type="submit" value="log out">
	</form>
<form action="/ProjectTestShop/vendorproduct">
<input type="submit" value="Add products">
</form>
<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/project" user="root"
		password="Akshi@123" />
	<sql:query dataSource="${dbsource}" var="result">
  SELECT id,product_name,product_description,category,price from product_table where vendor_name="${vendor.vendor_Name}";
        </sql:query>
	<form>
		<table border="1" width="40%">
			<caption>Product List</caption>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Category</th>
				<th>price</th>
				<th colspan="2">Action</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.id}" /></td>
					<td><c:out value="${row.product_name}" /></td>
					<td><c:out value="${row.product_description}" /></td>
					<td><c:out value="${row.category}"></c:out></td>
					<td><c:out value="${row.price}"></c:out></td>
					<td><a href="deleteprod?id=<c:out value="${row.id}"/>">delete</a>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>