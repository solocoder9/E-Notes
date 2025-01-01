<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!-- Navbar starts here -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<!-- E-Notes brand with a book icon -->
		<a class="navbar-brand" href="home"><i class="fa-solid fa-book"></i> E-Notes</a>
		
		<!-- Toggler button for responsive navigation (collapses navbar on smaller screens) -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar content (links) -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<!-- Home link always visible -->
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="${pageContext.request.contextPath}/home">Home</a></li>

				<!-- Add and View Notes links visible only when a user is logged in -->
				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/addNotes">Add Notes</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/viewNotes">View Notes</a></li>
				</c:if>
			</ul>

			<!-- Conditional Login/Register or Profile/Logout buttons -->
			<form class="d-flex">
				<!-- Login and Register buttons appear when no user is logged in -->
				<c:if test="${empty userObj }">
					<a href="${pageContext.request.contextPath}/login" class="btn btn-light me-2" type="submit">Login</a>
					<a href="${pageContext.request.contextPath}/register" class="btn btn-light" type="submit">Register</a>
				</c:if>
				
				<!-- Profile and Logout buttons appear when a user is logged in -->
				<c:if test="${not empty userObj }">
					<a href="#" class="btn btn-light me-2" type="submit"><i class="fa-solid fa-user"></i> ${userObj.fullName }</a>
					<a href="${pageContext.request.contextPath}/user/logout" class="btn btn-light" type="submit">Logout</a>
				</c:if>
			</form>

		</div>
	</div>
</nav>
