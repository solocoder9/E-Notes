<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes Page</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp"%> <!-- Include external links and styles -->
</head>
<body style="background-color: #f0f0f0">

	<!-- Navbar inclusion -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header text-center m-3">
						<h3>Add Your Notes</h3>
						<!-- Display success message if available -->
						<c:if test="${not empty msg}">
							<p class="fs-3 fw-bold text-success">${msg }</p> <!-- Success message -->
							<c:remove var="msg" /> <!-- Clear message after displaying -->
						</c:if>
					</div>
					<div class="card-body">
						<!-- Form to add new note -->
						<form action="saveNotes" method="post">
							<div class="mb-3">
								<label for="firstname">Enter Title</label>
								<input type="text" class="form-control" name="title"> <!-- Title input -->
							</div>
							<div class="mb-3">
								<label for="firstname">Write Description</label>
								<textarea rows="6" cols="" class="form-control" name="description"></textarea> <!-- Description input -->
							</div>

							<!-- Save button for add the note -->
							<div class="d-flex justify-content-center">
								<button type="submit" class="btn btn-primary mt-4">Save</button> <!-- Save button -->
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
