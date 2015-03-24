<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<input type="submit" value="Home" align="left" onclick="home()" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<jsp:useBean id="feedbackCreateAcc" class="java.lang.String"
		scope="session" />
	<br>
	<%=feedbackCreateAcc%>
	<br>
	<br>
	<form action="CreateAccount" method="post">
		User ID : <input type="text" name="userId" /> <br> <br> First Name :<input
			type="text" name="userFName" /> <br> <br> Last Name :<input
			type="text" name="userLName" /> <br> <br> Adress :<input
			type="text" name="userAddress" /> <br> <br> Ni Number :<input
			type="text" name="userNinr" /> <br> <br> Password <input
			type="password" name="userPassword" /> <br> <br>
			Repeat Password
			<input
			type="password" name="repeatPassword"> <br> <input
			type="submit" value="Create Account" />



	</form>








	<script type="text/javascript">
	
		function home() {
	<%request.getSession().setAttribute("feedbackLogin", " ");%>
		top.location = "login.jsp";
		}
		
	</script>


</body>
</html>
