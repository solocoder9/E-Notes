<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title> <!-- Title of the profile page -->
</head>
<body>
	<!-- Displaying a personalized message with the user's full name after successful login -->
	<h2>Login Successful, ${userObj.fullName }</h2> <!-- Output full name from the user object -->
</body>
</html>
