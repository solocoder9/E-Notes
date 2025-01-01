package com.springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.User;

@Controller
public class HomeController {

	// Inject the UserDao bean into this controller
	@Autowired
	private UserDao userDao;

	// Mapping for home page
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	// Mapping for login page
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	// Mapping for registration page
	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	// Handling user registration
	@RequestMapping(path = "/registerUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, HttpSession session) {

		// Save user to the database
		userDao.saveUser(user);

		// Set success message in session
		session.setAttribute("msg", "Registration successful. Please log in to continue.");

		// Redirect back to register page
		return "redirect:/register";
	}

	// Handling user login
	@RequestMapping(path = "/loginUser", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {

		// Check if the user credentials are valid
		User user = userDao.login(email, password);

		if (user != null) {
			// If valid, store user object in session and redirect to home page
			session.setAttribute("userObj", user);
			return "home";
		} else {
			// If invalid, set error message in session and redirect to login page
			session.setAttribute("msg", "Invalid email or password. Please try again.");
			return "redirect:/login";
		}
	}
}
