package com.spring.controller;

import com.spring.dao.StudentDAO;
import com.spring.model.Student;
import com.spring.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/list")
    public String showStudent(Model theModel) {
        List<Student> theStudents = studentService.getStudents();
        theModel.addAttribute("students", theStudents);
        return "student-list";
    }
}
