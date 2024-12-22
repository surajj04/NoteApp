package com.bytetech.demoProject.controller;

import com.bytetech.demoProject.service.NoteService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    private NoteService service;

    @GetMapping("/")
    public String home(HttpSession session) {
        session.setAttribute("recent",service.getRecent());
        return "home";
    }


}
