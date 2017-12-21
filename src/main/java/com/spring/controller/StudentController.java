package com.spring.controller;

import com.spring.model.Student;
import com.spring.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        return "student/student-list";
    }

    @GetMapping("/showAddForm")
    public String addStudent(Model theModel) {
        Student student = new Student();
        theModel.addAttribute("student", student);
        return "student/student-form";
    }

    @PostMapping("/save")
    public String saveStudent(@ModelAttribute("student") Student theStudent) {
        studentService.addStudent(theStudent);
        return "redirect:/student/list";
    }

    @GetMapping("/delete")
    public String deleteStudent(@RequestParam("studentId") int theId, Model theModel) {
        studentService.delete(theId);
        return "redirect:/student/list";
    }

    @GetMapping("/update")
    public String updateStudent(@RequestParam("studentId") int theId, Model theModel) {
        Student theStudent = studentService.getStudent(theId);
        theModel.addAttribute("student", theStudent);
        return "student/student-form";

    }
}
