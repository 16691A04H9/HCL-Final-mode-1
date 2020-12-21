<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
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
<h3 align="center">${headerMessage}</h3>
        <form action="/ProjectTestShop/login">
<table width="20%" bgcolor="0099CC" align="center">

        <tr>
        <td><input type="submit" value="Customer" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        </tr>
        
</table>
</form>
        <form action="/ProjectTestShop/login1">
<table width="20%" bgcolor="0099CC" align="center">

        <tr>
        <td><input type="submit" value="Vendor" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        </tr>
        
</table>
</form>
        <form action="/ProjectTestShop/login2">
<table width="20%" bgcolor="0099CC" align="center">

        <tr>
        <td><input type="submit" value="Admin" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        </tr>
        
</table>
</form>

</body>
</html>