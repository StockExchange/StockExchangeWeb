<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<input type="submit" value="Home" align="left" onclick="home()" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StockExchange- Create Account</title>
<div id="header">StockExchange</div>
</head>
<body>
	<br>
	<jsp:useBean id="feedbackCreateAcc" class="java.lang.String"
		scope="session" />
	<br>
	<%=feedbackCreateAcc%>
	<br>
	<br>
	<center><form action="CreateAccount" method="post">
		User ID : <input type="text" name="userId"/> <br> 
		First Name :<input type="text" name="userFName" /> <br> 
		Last Name :<input type="text" name="userLName" /> <br> 
		Adress :<input type="text" name="userAddress" /> <br> 
		Ni Number :<input type="text" name="userNinr" /> <br>
		Password <input type="password" name="userPassword" /> <br>
		Repeat Password <input type="password" name="repeatPassword"> <br>
		<br> <input type="submit" value="Create Account" />
	</form></center>
	<script type="text/javascript">
		function home() {
	<%request.getSession().setAttribute("feedbackLogin", " ");%>
		top.location = "login.jsp";
		}
	</script>
		<style type="text/css">
#header {
	background-color: black;
	color: white;
	text-align: center;
	padding: 20px;
	text-align: center;
	font-size: 40px;
}

#footer {
	padding: 5px;
	position: absolute;
	bottom: 0;
	left: 0;
	background-color: black;
	color: white;
	text-align: center;
}
</style>
	<div id="footer">Copyright© Ucan code</div>
</body>
</html>
