<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Notes Page</title> <!-- Title of the page to view all notes -->
<%@include file="/WEB-INF/resources/component/all_link.jsp"%> <!-- Include external resources (CSS/JS) -->
</head>
<body>

	<!-- Navbar Inclusion -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%> <!-- Include navigation bar -->

	<div class="container-fluid p-r">
		<h4 class="text-center">View All Notes</h4>
		
		<!-- Display success message if present -->
		<c:if test="${not empty msg}">
			<p class="fs-5 fw-bold text-success text-center">${msg }</p> <!-- Success message -->
			<c:remove var="msg" /> <!-- Remove message after displaying -->
		</c:if>

		<!-- Displaying a list of notes -->
		<div class="row">
			<c:forEach items="${list }" var="n"> <!-- Loop through each note in the 'list' -->
				<div class="col-md-10 offset-md-1">
					<div class="card">
						<div class="card-body">
							<h5>${n.title }</h5> <!-- Display note title -->
							<p>${n.description }</p> <!-- Display note description -->
							<p>Publish Date: ${n.date }</p> <!-- Display publish date -->

							<!-- Edit and Delete buttons for each note -->
							<div class="text-center">
								<a href="editNotes?id=${n.id }" class="btn btn-primary btn-sm">Edit</a> <!-- Edit button -->
								<a href="deleteNotes?id=${n.id }" class="btn btn-danger btn-sm">Delete</a> <!-- Delete button -->
							</div>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>
