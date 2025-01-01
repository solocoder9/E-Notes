package com.springmvc.dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.entity.User;

@Transactional
@Repository
public class UserDaoImpl implements UserDao {

	// Autowired HibernateTemplate for interacting with the database
	@Autowired
	private HibernateTemplate hibernateTemplate;

	// Method to save a new user to the database
	@Override
	public int saveUser(User user) {
		// Save the user and return the generated ID
		int id = (Integer) hibernateTemplate.save(user);
		return id;
	}

	// Method for user login based on email and password
	@Override
	public User login(String email, String password) {
		// Define the HQL query to search for the user by email and password
		String query = "FROM User WHERE email=:em AND password=:pwd";

		// Execute the query and return the user if a match is found
		User user = (User) hibernateTemplate.execute(s -> {
			Query q = s.createQuery(query);
			q.setString("em", email); // Set the email parameter
			q.setString("pwd", password); // Set the password parameter
			return q.uniqueResult(); // Return the unique user result
		});

		return user;
	}
}
