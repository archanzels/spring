package com.spring.service;

import com.spring.dao.StudentDAO;
import com.spring.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDAO studentDAO;

    @Override
    @Transactional
    public List<Student> getStudents() {
        return studentDAO.getStudents();
    }

    @Override
    @Transactional
    public void addStudent(Student theStudent) {
        studentDAO.addStudent(theStudent);
    }

    @Override
    @Transactional
    public void delete(int theId) {
        studentDAO.delete(theId);
    }

    @Override
    @Transactional
    public Student getStudent(int theId) {
        return studentDAO.getStudent(theId);
    }
}
