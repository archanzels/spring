package com.spring.service;

import com.spring.model.Student;

import java.util.List;

public interface StudentService {
    List<Student> getStudents();

    void addStudent(Student theStudent);

    void delete(int theId);

    Student getStudent(int theId);

    void uploadFromExcel(List<Student> studentList);
}
