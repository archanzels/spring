package com.spring.dao;

import com.spring.model.Share;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShareDAOImpl implements ShareDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Share> getAll() {
        Session session = sessionFactory.getCurrentSession();
        List shares = session.createQuery("from Share").list();
        return shares;
    }

    @Override
    public void addShare(Share share) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(share);
    }

    @Override
    public Share getById(int theId) {
        Session session = sessionFactory.getCurrentSession();
        Share share = (Share) session.get(Share.class, theId);
        return share;
    }

    @Override
    public void deleteById(int theId) {
        Session session = sessionFactory.getCurrentSession();
        Query theQuery = session.createQuery("delete from Share where id=:shareId");
        theQuery.setParameter("shareId", theId);
        theQuery.executeUpdate();
    }
}
