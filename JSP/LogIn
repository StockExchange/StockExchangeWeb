<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<input type="submit" value="About" align="left" id="about"
	onclick="inf(this.value)" />
<center>
	<h1>StockExchange</h1>
</center>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<script>
		function inf(val) {

			if (val == "About") {
				var loginpage = document.getElementById("loginpage");
				loginpage.style.display = "none";
				var btnValue = document.getElementById("about");
				btnValue.value = "Home";
				var information = document.getElementById("info");
				information.style.display = "block";
			} else {
				var loginpage = document.getElementById("loginpage");
				loginpage.style.display = "block";
				var btnValue = document.getElementById("about");
				btnValue.value = "About";
				var information = document.getElementById("info");
				information.style.display = "none";

			}

		}
	</script>
	<div id="info" style="display: none;">
		<center>
			StockExchange is a lovley application! <br> <br> Such an
			application! <br> WOW!
		</center>
	</div>
	<div id="loginpage" style="border: 2px solid black";>
		<form action="login" method="post">
			<center>
				<br>User ID: <input type="text" name="userId" /> <br>Password:
				<input type="password" name="password" /> <br>
			</center>
			<center>
				<br> <input type="submit" value="Log in" /></br>
			</center>
		</form>
		<br>
	</div>
	<jsp:useBean id="feedbackLogin" class="java.lang.String"
		scope="session" />
	<br>
	<%=feedbackLogin%>

	<style type="text/css">
		#footer {
			/*background-color:black;
		    color:white;
		    text-align:center;
		  	padding:5px;
		  	bottom:0;
		  	left:0;*/
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
