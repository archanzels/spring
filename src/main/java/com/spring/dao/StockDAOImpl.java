package com.spring.dao;

import com.spring.model.Stock;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StockDAOImpl implements StockDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Stock> getAll() {
        Session session = sessionFactory.getCurrentSession();
        List stocks = session.createQuery("from Stock").list();
        return stocks;
    }

    @Override
    public Stock getById(int theId) {
        Session session = sessionFactory.getCurrentSession();
        Stock theStock = (Stock) session.get(Stock.class, theId);
        return theStock;
    }
}
