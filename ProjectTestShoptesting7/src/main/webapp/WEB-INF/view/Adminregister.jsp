<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.error {
	color: red;
}
.styling1
{
font-family: Roboto, sans-serif;
 outline: 1; background: #f2f2f2;
  width: 100%; 
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box; 
  font-size: 14px;
}
</style>
</head>
<body>
<h3 align="center">${headerMessage}</h3>
		<h3 align="center">${headerMessage}</h3>
	<form:form action="/ProjectTestShop/registerSuccess1"
		method="post" modelAttribute="admin">
		<table align="center" width="50%" bgcolor="0099CC" align="center">
		<caption align="top">Don't worry register here ...!</caption>
			<tr>
				
				<td><form:password path="password" placeholder="password" cssClass="styling1"/></td>
				<td><form:errors path="password" cssClass="error"/></td>
			</tr>

			<tr>
				
				<td><form:input path="admin_Name" placeholder="Name"  cssClass="styling1"/></td>
				<td><form:errors path="admin_Name" cssClass="error"/></td>
			</tr>

			<tr>
				<td><input type="submit" value="Register" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>