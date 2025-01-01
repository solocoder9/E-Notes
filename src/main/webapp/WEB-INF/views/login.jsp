<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp"%> <!-- Include external CSS/JS resources -->
</head>
<body>

	<!-- Navbar inclusion -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%> <!-- Include navigation bar -->

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center ">
						<h3>Login Page</h3>
						<!-- Display error message if available -->
						<c:if test="${not empty msg}">
							<p class="fs-3 fw-bold text-danger">${msg }</p> <!-- Error message -->
							<c:remove var="msg" /> <!-- Remove message after it is displayed -->
						</c:if>
					</div>
					<div class="card-body">

						<!-- Login form -->
						<form action="loginUser" method="post">
							<div class="mb-3">
								<label for="firstname">Email</label>
								<input type="email" class="form-control" name="email"> <!-- Email input -->
							</div>
							<div class="mb-3">
								<label for="firstname">Password</label>
								<input type="password" class="form-control" name="password"> <!-- Password input -->
							</div>

							<button type="submit" class="btn btn-primary col-md-12">Login</button> <!-- Login button -->
						</form>

					</div>

					<div class="card-footer text-center">
						<p class="fs-6">
							Don't have an account? <a href="register" class="text-declaration-none">Register</a> <!-- Link to register page -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
