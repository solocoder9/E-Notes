package com.springmvc.dao;

import com.springmvc.entity.User;

public interface UserDao {

	// Method to save a new user to the database
	public int saveUser(User user);

	// Method for user login authentication based on email and password
	public User login(String email, String password);
}
