package com.spring.dao;

import com.spring.model.Student;

import java.util.List;

public interface StudentDAO {

    public List<Student> getStudents();

    public void delete(int id);
}
