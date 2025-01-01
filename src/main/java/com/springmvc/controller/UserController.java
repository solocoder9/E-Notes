package com.springmvc.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.dao.NotesDao;
import com.springmvc.entity.Notes;
import com.springmvc.entity.User;

@Controller
@RequestMapping("/user")
public class UserController {

	// Inject the NotesDao bean into this controller
	@Autowired
	private NotesDao notesDao;

	// Mapping for adding notes page
	@RequestMapping("/addNotes")
	public String addNotes() {
		return "add_notes";
	}

	// Mapping to view user's notes
	@RequestMapping("/viewNotes")
	public String viewNotes(HttpSession session, Model model) {
		// Get the logged-in user from session
		User user = (User) session.getAttribute("userObj");

		// Retrieve notes associated with the user
		List<Notes> notes = notesDao.getNotesByUser(user);
		model.addAttribute("list", notes);

		return "view_notes";
	}

	// Mapping to edit a specific note
	@RequestMapping("/editNotes")
	public String editNotes(@RequestParam("id") int id, Model model) {
		// Retrieve note by id
		Notes note = notesDao.getNoteById(id);
		model.addAttribute("notes", note);
		return "edit_notes";
	}

	// Handle note update after editing
	@RequestMapping(path = "/updateNotes", method = RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes notes, HttpSession session) {
		// Get the logged-in user from session
		User user = (User) session.getAttribute("userObj");

		// Set the user and updated date for the note
		notes.setUser(user);
		notes.setDate(LocalDateTime.now().toString());

		// Update note in the database
		notesDao.updateNotes(notes);

		// Set success message in session
		session.setAttribute("msg", "Your note has been successfully updated.");

		return "redirect:/user/viewNotes";
	}

	// Handle user logout
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// Remove user object from session
		session.removeAttribute("userObj");

		// Set success message for logout
		session.setAttribute("msg", "You have successfully logged out.");

		return "redirect:/login";
	}

	// Handle saving new notes
	@RequestMapping(path = "/saveNotes", method = RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes note, HttpSession session) {
		// Get the logged-in user from session
		User user = (User) session.getAttribute("userObj");

		// Set user and date for the new note
		note.setUser(user);
		note.setDate(LocalDateTime.now().toString());

		// Save the new note in the database
		notesDao.saveNotes(note);

		// Set success message in session
		session.setAttribute("msg", "Your note has been added successfully.");

		return "redirect:/user/addNotes";
	}

	// Handle deleting a note
	@RequestMapping("/deleteNotes")
	public String deleteNotes(@RequestParam("id") int id, HttpSession session) {
		// Delete note by id
		notesDao.deleteNotes(id);

		// Set success message in session
		session.setAttribute("msg", "The note has been successfully deleted.");

		return "redirect:/user/viewNotes";
	}
}
