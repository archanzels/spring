package com.spring.dao;

import com.spring.model.Student;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentDAOImpl implements StudentDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Student> getStudents() {
        Session session = sessionFactory.getCurrentSession();
        List students = session.createQuery("from Student").list();
        return students;
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query theQuery = session.createQuery("delete from Student where id=:studentId");
        theQuery.setParameter("studentId", id);
        theQuery.executeUpdate();
    }

    @Override
    public void addStudent(Student theStudent) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(theStudent);
    }

    @Override
    public Student getStudent(int theId) {
        Session session = sessionFactory.getCurrentSession();
        Student theStudent = (Student) session.get(Student.class, theId);
        return theStudent;
    }

}
