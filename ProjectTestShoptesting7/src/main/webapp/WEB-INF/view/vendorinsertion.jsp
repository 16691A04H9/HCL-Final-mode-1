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
<title>Adding products</title>
</head>
<body>
<form action="/ProjectTestShop/home">
 			<input type="submit" value="Home">
 			</form>
<form action="/ProjectTestShop/inserting" method="get">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Add Product</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="product_name"/></td>
                    </tr>
                    <tr>
                        <td><label>vendor_name</label></td>
                        <td><input type="text" name="vendor_name"/></td>
                    </tr>
                    <tr>
                        <td><label>product_description</label></td>
                        <td><input type="text" name="product_description"/></td>
                    </tr>
                    <tr>
                        <td><label>category</label></td>
                        <td><input type="text" name="category"/></td>
                    </tr>
                    <tr>
                        <td><label>price</label></td>
                        <td><input type="text" name="price"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
</body>
</html>