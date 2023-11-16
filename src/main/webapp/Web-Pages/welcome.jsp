<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	if (session.getAttribute("username") == null) {
		response.sendRedirect("/LoginModule");
	}
	%>

	<!-- Using JSTL to print username -->
	Welcome ${username}
	<a href="newsFeed.jsp" target="_blank">News Feed</a>
	<br>
	<form action="/LoginModule/Logout" method="post">
		<button type="submit">Logout</button>
	</form>

<!-- 	<script>
		history.forward();
	</script> -->
</body>
</html>