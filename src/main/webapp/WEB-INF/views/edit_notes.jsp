<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp"%> <!-- Include external resources (CSS, JS, etc.) -->
</head>
<body>

	<!-- Navbar inclusion -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header text-center m-3">
						<h3>Edit Your Notes</h3>
						<!-- Display success message if available -->
						<c:if test="${not empty msg}">
							<p class="fs-3 fw-bold text-success">${msg }</p> <!-- Display message -->
							<c:remove var="msg" /> <!-- Remove the message after it is displayed -->
						</c:if>
					</div>
					<div class="card-body">

						<!-- Form for editing an existing note -->
						<form action="updateNotes" method="post">
							<div class="mb-3">
								<label for="title">Enter Title</label>
								<input type="text" class="form-control" name="title" value="${notes.title }"> <!-- Pre-fill title -->
							</div>
							<div class="mb-3">
								<label for="firstname">Write Description</label>
								<textarea rows="6" cols="" class="form-control" name="description">${notes.description}</textarea> <!-- Pre-fill description -->
							</div>

							<!-- Hidden input to pass note id for updating -->
							<input type="hidden" name="id" value="${notes.id }">

							<!-- Submit button for updating the note -->
							<div class="d-flex justify-content-center">
								<button type="submit" class="btn btn-primary mt-4">Update</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
