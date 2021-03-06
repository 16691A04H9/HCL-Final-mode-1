<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title> customer page</title>
<head>
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
<img src="data:image/jpeg;base64,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">
<img src="https://www.shutterstock.com/image-vector/holiday-banner-merry-christmas-happy-new-1545926192">
</body>
</html>