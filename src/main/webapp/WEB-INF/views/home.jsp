<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <%@include file="/WEB-INF/resources/component/all_link.jsp"%> <!-- Include external CSS/JS resources -->
    
    <%@include file="/WEB-INF/resources/component/home_style.jsp"%> <!-- Include external CSS resources -->
</head>

<body>

    <!-- Navbar inclusion -->
    <%@include file="/WEB-INF/resources/component/navbar.jsp"%> <!-- Include navigation bar -->

    <!-- Hero Section -->
    <section class="hero">
        <div>
            <h1>Welcome to the Home Page</h1>
            <p>Your journey to better notes starts here. Explore and manage your notes effortlessly!</p>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Solo Coder. All rights reserved.</p>
    </footer>

</body>

</html>
