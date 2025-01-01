<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title> <!-- Title of the registration page -->
<%@include file="/WEB-INF/resources/component/all_link.jsp"%> <!-- Include external CSS/JS resources -->
</head>
<body style="background-color: #f0f0f0">

	<!-- Navbar inclusion -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%> <!-- Include navigation bar -->

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center m-3">
						<h3>Register Page</h3>
						<!-- Display success message if available -->
						<c:if test="${not empty msg}">
							<p class="fs-3 fw-bold text-success">${msg }</p> <!-- Success message -->
							<c:remove var="msg" /> <!-- Remove message after displaying -->
						</c:if>
					</div>
					<div class="card-body">

						<!-- Registration form -->
						<form action="registerUser" method="post">
							<div class="mb-3">
								<label for="firstname">Full Name</label>
								<input type="text" class="form-control" name="fullName" required="required"> <!-- Full name input -->
							</div>
							<div class="mb-3">
								<label for="firstname">Qualification</label>
								<input type="text" class="form-control" name="qualification" required="required"> <!-- Qualification input -->
							</div>
							<div class="mb-3">
								<label for="firstname">Email</label>
								<input type="email" class="form-control" name="email" required="required"> <!-- Email input -->
							</div>
							<div class="mb-3">
								<label for="firstname">Password</label>
								<input type="password" class="form-control" name="Password" required="required"> <!-- Password input -->
							</div>

							<!-- Register button -->
							<button type="submit" class="btn btn-primary col-md-12">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
