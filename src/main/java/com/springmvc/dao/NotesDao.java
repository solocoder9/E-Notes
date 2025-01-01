package com.springmvc.dao;

import java.util.List;

import com.springmvc.entity.Notes;
import com.springmvc.entity.User;

public interface NotesDao {

	// Method to save a new note to the database
	public int saveNotes(Notes notes);

	// Method to retrieve a list of notes for a specific user
	public List<Notes> getNotesByUser(User user);

	// Method to retrieve a note by its ID
	public Notes getNoteById(int id);

	// Method to update an existing note in the database
	public void updateNotes(Notes notes);

	// Method to delete a note by its ID
	public void deleteNotes(int id);
}
