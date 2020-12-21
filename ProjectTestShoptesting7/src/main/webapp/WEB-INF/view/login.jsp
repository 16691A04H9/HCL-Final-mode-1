<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer login</title>
<style type="text/css">
.error{
color:red;
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
<h3 align="center">${headerMessage}</h3>
<h3 align="center">welcome customer</h3>
	<form:form action="/ProjectTestShop/loginSuccess" method="post" modelAttribute="customerCredential">

		<table width="50%" bgcolor="0099CC" align="center">
			<tr>
				
				<td><form:input path="email" placeholder="Username" cssClass="styling1"/></td>
				<td><form:errors path="email" cssClass="error" placeholder="UserName"/></td>
			</tr>
			<tr>
	
				<td><form:password path="password" placeholder="password" cssClass="styling1"/></td>
				<td><form:errors path="password" cssClass="error"/></td>
			</tr>

			<tr>
				<td><input type="submit" value="Login" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
			</tr>
			<tr>
        <td><input type="reset" value="Reset" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        
        </tr>
        
		</table>
	</form:form>
	        <form action="/ProjectTestShop/register">
		<table width="50%" bgcolor="0099CC" align="center">

        <tr>
        <td><input type="submit" value="signup" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        </tr>
</table>
</form>
	
</body>
</html>