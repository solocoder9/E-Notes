package com.springmvc.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.entity.Notes;
import com.springmvc.entity.User;

@Transactional
@Repository
public class NotesDaoImpl implements NotesDao {

	// Autowired HibernateTemplate for interacting with the database
	@Autowired
	private HibernateTemplate hibernateTemeplate;

	// Method to save a new note to the database
	@Override
	public int saveNotes(Notes notes) {
		// Save the note and return the generated ID
		int id = (int) hibernateTemeplate.save(notes);
		return id;
	}

	// Method to get all notes associated with a specific user
	@Override
	public List<Notes> getNotesByUser(User user) {
		// HQL query to fetch notes for a specific user
		String hql = "FROM Notes WHERE user=:us ";

		// Execute the query and set the user parameter
		List<Notes> list = hibernateTemeplate.execute(s -> {
			Query q = s.createQuery(hql);
			q.setEntity("us", user); // Setting user as a parameter
			return q.getResultList(); // Return the result list
		});

		return list;
	}

	// Method to fetch a note by its ID
	@Override
	public Notes getNoteById(int id) {
		// Fetch and return the note with the given ID
		Notes note = hibernateTemeplate.get(Notes.class, id);
		return note;
	}

	// Method to update an existing note in the database
	@Override
	public void updateNotes(Notes notes) {
		// Update the note
		hibernateTemeplate.update(notes);
	}

	// Method to delete a note by its ID
	@Override
	public void deleteNotes(int id) {
		// Fetch the note and delete it
		Notes note = hibernateTemeplate.get(Notes.class, id);
		hibernateTemeplate.delete(note);
	}
}
