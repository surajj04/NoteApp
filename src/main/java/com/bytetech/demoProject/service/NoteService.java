package com.bytetech.demoProject.service;

import com.bytetech.demoProject.model.Note;
import com.bytetech.demoProject.repo.NoteRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoteService {

    @Autowired
    private NoteRepo repo;

    public List<Note> getAllNotes() {
        return repo.findAll();
    }

    public boolean addNote(Note note) {
        return repo.save(note) == note;
    }

    public List<Note> getRecent() {
        return repo.findLastTwoNotes();
    }

    public void deleteNote(int id) {
        repo.deleteById(id);
    }

    public Note getNoteById(int id) {
        return repo.findById(id).orElse(new Note());
    }

    public int updateNote(Note note) {
        Note n = repo.findById(note.getId()).orElse(new Note());
        System.out.println(note);
        return repo.update(note.getId(), note.getTitle(), note.getMessage(), n.getDate());
    }

}
