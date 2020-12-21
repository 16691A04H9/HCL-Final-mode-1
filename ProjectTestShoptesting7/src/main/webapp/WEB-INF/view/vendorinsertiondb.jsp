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
<title>product added or not verification</title>
</head>
        <sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/project"
                           user="root"  password="Akshi@123"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO product_table(product_name,vendor_name,product_description,category,price) VALUES (?,?,?,?,?);
            <sql:param value="${param.product_name}" />
            <sql:param value="${param.vendor_name}" />
            <sql:param value="${param.product_description}" />
            <sql:param value="${param.category}" />
            <sql:param value="${param.price}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Item Added
            successfully.</font>
 			<form action="/ProjectTestShop/vendorproduct">
 			<input type="submit" value="want to enter more items..!">
 			</form>
 			<form action="/ProjectTestShop/home">
 			<input type="submit" value="Home">
 			</form>
       </c:if>  
</body>
</html>