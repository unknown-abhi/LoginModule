<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Feed</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	if (session.getAttribute("username") == null) {
		response.sendRedirect("/LoginModule");
	}
	%>

	<iframe width="560" height="315"
		src="https://www.youtube.com/embed/gQLQ0t9B5yk?si=IiTNBCMtPtc_la0H"
		title="YouTube video player" frameborder="0"
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
		allowfullscreen></iframe>

	<!-- <script>
		history.forward();
	</script> -->
</body>
</html>