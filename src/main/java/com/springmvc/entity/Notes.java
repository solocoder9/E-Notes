package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Notes {

	// Unique identifier for each note, auto-generated
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	// Title of the note
	private String title;

	// Description of the note, with a max length of 2000 characters
	@Column(length = 2000)
	private String description;

	// Date when the note was created or last updated
	private String date;

	// The user who created the note, establishing a many-to-one relationship with the User entity
	@ManyToOne
	private User user;

	// Getter and setter methods for each field
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
