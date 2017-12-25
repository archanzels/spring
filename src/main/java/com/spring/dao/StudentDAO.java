package com.spring.dao;

import com.spring.model.Student;

import java.util.List;

public interface StudentDAO {

    List<Student> getStudents();

    void delete(int id);

    void addStudent(Student theStudent);

    Student getStudent(int theId);

    void uploadFromExcel(List<Student> students);
}
