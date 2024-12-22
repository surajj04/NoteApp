package com.bytetech.demoProject.repo;

import com.bytetech.demoProject.model.Note;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface NoteRepo extends JpaRepository<Note, Integer> {
    @Query(value = "SELECT * FROM note ORDER BY id DESC LIMIT 2",nativeQuery = true)
    List<Note> findLastTwoNotes();

    @Modifying
    @Transactional
    @Query("UPDATE Note n SET n.title = :title, n.message = :message, n.date = :date WHERE n.id = :id")
    int update(int id, String title, String message, Date date);


}
