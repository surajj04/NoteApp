package com.bytetech.demoProject.controller;

import com.bytetech.demoProject.model.Note;
import com.bytetech.demoProject.service.NoteService;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@Controller
public class NoteController {

    @Autowired
    private NoteService service;

    @GetMapping("/notes")
    public String notes(HttpSession session) {
        session.setAttribute("notes", service.getAllNotes());
        return "viewNotes";
    }

    @PostMapping("/note")
    public String addNote(Note note) {
        boolean result = service.addNote(note);
        return result ? "addsuccessful" : "noteerror";
    }

    @RequestMapping("/notes/{id}")
    public String deleteNote(@PathVariable int id) {
        service.deleteNote(id);
        return "deletesucessful";
    }

    @GetMapping("/note/{id}")
    public String editNote(@PathVariable int id, HttpSession session) {
        session.setAttribute("editNote", service.getNoteById(id));
        return "edit";
    }

    @RequestMapping("/note")
    public String updateNote(@ModelAttribute Note note) {
        if (service.updateNote(note) == 1) {
            return "updatesuccess";
        }
        return "error";
    }

    @GetMapping("/viewnote/{id}")
    public String viewNote(@PathVariable int id, HttpSession session) {
        Note n = service.getNoteById(id);
        session.setAttribute("note", n);
        return "note";
    }

    @GetMapping("/error")
    public String error() {
        return "error";
    }
}
