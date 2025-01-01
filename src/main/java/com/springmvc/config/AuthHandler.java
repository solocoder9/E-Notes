package com.springmvc.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.springmvc.entity.User;

public class AuthHandler implements HandlerInterceptor {

	// This method is called before the handler method is invoked
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		// Retrieve the user object from the session
		User user = (User) request.getSession().getAttribute("userObj");

		// If the user is logged in, allow the request to proceed
		if (user != null) {
			return true;
		} else {
			// If the user is not logged in, show a message and block the request
			// response.sendRedirect("login"); // Uncomment to redirect to login page
			response.getWriter().print("<h1>Please Login</h1>");
			return false;
		}
	}

}
