<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css"
	href="/LoginModule/Css-Files/style.css">
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>

	<div class="modal">

		<form class="modal-content animate" action="Login" method="post">
			<div class="imgcontainer">
				<img src="/LoginModule/Image-Files/user.png" alt="Avatar"
					class="avatar">
			</div>

			<div class="container">
				<label for="uname"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="psw" required>

				<div id="error"></div>
				<button type="submit">Login</button>
				<label> <input type="checkbox" name="remember">
					Remember me
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button" class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>
	<%
	String login_msg = (String) request.getAttribute("error");
	if (login_msg != null) {
		out.println("<script>document.getElementById('error').innerHTML='<b style=\"color:red;\">Invalid Username or Password</b>'; </script>");
	}
	%>


	<!-- <script>
		history.forward();
	</script> -->
</body>
</html>