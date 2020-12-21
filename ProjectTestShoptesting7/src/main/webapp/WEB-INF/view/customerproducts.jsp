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
<title>products list</title>
<style type="text/css">
nav {
	margin: 27px auto 0;
	position: relative;
	width: 590px;
	height: 50px;
	background-color: #34495e;
	border-radius: 8px;
	font-size: 0;
}
nav a {
	line-height: 50px;
	height: 10%;
	font-size: 15px;
	display: inline-block;
	position: relative;
	z-index: 1;
	text-decoration: none;
	text-transform: uppercase;
	text-align: center;
	color: white;
	cursor: pointer;
}
nav .animation {
	position: absolute;
	height: 100%;
	top: 0;
	z-index: 0;
	transition: all .5s ease 0s;
	border-radius: 8px;
}
a:nth-child(1) {
	width: 100px;
}
a:nth-child(2) {
	width: 110px;
}
a:nth-child(3) {
	width: 100px;
}
a:nth-child(4) {
	width: 160px;
}
a:nth-child(5) {
	width: 120px;
}
nav .start-home, a:nth-child(1):hover~.animation {
	width: 100px;
	left: 0;
	background-color: #1abc9c;
}
nav .start-about, a:nth-child(2):hover~.animation {
	width: 110px;
	left: 100px;
	background-color: #e74c3c;
}
nav .start-blog, a:nth-child(3):hover~.animation {
	width: 100px;
	left: 210px;
	background-color: #3498db;
}
nav .start-portefolio, a:nth-child(4):hover~.animation {
	width: 160px;
	left: 310px;
	background-color: #9b59b6;
}
nav .start-contact, a:nth-child(5):hover~.animation {
	width: 120px;
	left: 470px;
	background-color: #e67e22;
}

body {
	font-size: 12px;
	font-family: sans-serif;
	background: #2c3e50;
}
h1 {
	text-align: center;
	margin: 40px 0 40px;
	text-align: center;
	font-size: 30px;
	color: #ecf0f1;
	text-shadow: 2px 2px 4px #000000;
	font-family: 'Cherry Swash', cursive;
}

p {
    position: absolute;
    bottom: 20px;
    width: 100%;
    text-align: center;
    color: #ecf0f1;
    font-family: 'Cherry Swash',cursive;
    font-size: 16px;
}

span {
    color: #2BD6B4;
}
</style>
</head>
<body>
<nav>
	<a href="/ProjectTestShop/welcome">Home</a>
	<a href="/ProjectTestShop/list">Products</a>
	<a href="/ProjectTestShop/about">About us</a>
	<a href="/ProjectTestShop/Contact us">Contact</a>
	<a href="/ProjectTestShop">Log Out </a>
	<div class="animation start-home"></div>
</nav>

	<h1 style="color:violet"><marquee WIDTH=400 HEIGHT=50 BEHAVIOR=ALTERNATE>${headerMessage} </marquee> </h1>
		<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/project" user="root"
			password="Akshi@123" />
		<sql:query dataSource="${dbsource}" var="result">
  SELECT product_name,vendor_name,product_description,category,price from product_table;
        </sql:query>
		<form>
			<table width="60%" bgcolor="White" align="center">
				<caption><h3 style="color:red">Product List</h3></caption>
				<tr>
					<td><b>Product Name</b></td>
					<td><b>Vendor Name</b></td>
					<td><b>Product Description</b></td>
					<td><b>Category</b></td>
					<td><b>Price</b></td>
<!-- 					<td><b>Options</b></td> -->
					<th colspan="2">Action</th>
				</tr>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.product_name}" /></td>
						<td><c:out value="${row.vendor_name}" /></td>
						<td><c:out value="${row.product_description}"></c:out></td>
						<td><c:out value="${row.category}"></c:out></td>
						<td><c:out value="${row.price}"></c:out></td>
						<td><a href="Buy?id=<c:out value="${row.price}"/>">Buy now..!</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
		<br>
</body>
</html>