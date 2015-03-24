<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="StockExchange.ejb.ics.Stockportfolio"
	import="java.util.ArrayList" import="StockExchange.ejb.ics.Stock"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StockExchange- UserInformation</title>
<div id="header">StockExchange</div>
<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<!-- Javascript -->

</head>
<body>
	<jsp:useBean id="user" class="StockExchange.ejb.ics.Users"
		scope="session" />
	<div style="display: inline-block;">
		<input type="submit" value="Logout" onclick="logOut()" /> <input
			type="submit" id="userInfo" value="Stock Market"
			onclick="stockMarket()" />
	</div>
	<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<jsp:useBean id="feedbackUserInfo" class="java.lang.String"
		scope="session" />
	<br>
	<%=feedbackUserInfo%>
	<br>
	<br>
	<center><form id="tableUserInfo" action="UpdateUser" method="post">
		User ID : <input type="text" name="userId"
			value="<jsp:getProperty property="userId" name="user"/>" readonly />
		<br> First Name :<input type="text" name="userFName"
			value="<jsp:getProperty property="userFName" name="user" />" /> <br>
		Last Name :<input type="text" name="userLName"
			value="<jsp:getProperty property="userLName" name="user" />" /> <br>
		Adress :<input type="text" name="userAddress"
			value="<jsp:getProperty property="address" name="user" />" /> <br>
		Ni Number :<input type="text" name="userNinr"
			value="<jsp:getProperty property="niNr" name="user" />" /> <br>
		Account :<input type="text" name="userAccount"
			value="<jsp:getProperty property="account" name="user" />" readonly />
		<br> <input id="currentPassword" type="hidden"
			name="userPassword"
			value="<jsp:getProperty property="password" name="user"/>" /> <input
			type="submit" value="Update" />
	</form></center>
	<br>
	<center><input type="submit" value="Change Password"
		onclick="changePasswordShow()" /></center>
	<div id="passwordUpdate" style="display: none;">
		<center>
			Old Password <input type="password" id="wirteOldPassword" /> <br>
			New Password <input type="password" id="wirteNewPassword" /> <br>
			Repeat Password <input type="password" id="wirteRepeatPassword" /> <br>
			<input type="submit" value="Change Password"
				onclick="changePassword()" /> <input type="submit" value="Cancel"
				onclick="cancelPasswordChange()" />
		</center>
	</div>
	<script type="text/javascript">
		function changePasswordShow() {
			var passwordChange = document.getElementById("passwordUpdate");
			passwordChange.style.display = "block";
		}
		function changePassword() {
			var currentPassword = document.getElementById("currentPassword");
			var oldPassword = document.getElementById("wirteOldPassword").value;
			var newPassword = document.getElementById("wirteNewPassword").value;
			var repeatPassword = document.getElementById("wirteRepeatPassword").value;
			if (currentPassword.value == oldPassword) {
				if (newPassword == repeatPassword) {
					currentPassword.value = newPassword;
					var passwordChange = document
							.getElementById("passwordUpdate");
					passwordChange.style.display = "none";
					var form = document.getElementById("tableUserInfo");
					form.submit();
				}
			}
		}
		function logOut() {
			top.location = "login.jsp";
		}
		function stockMarket() {
			top.location = "test.jsp";
		}
		function cancelPasswordChange() {
			var passwordChange = document.getElementById("passwordUpdate");
			passwordChange.style.display = "none";
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
