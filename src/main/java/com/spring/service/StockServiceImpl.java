package com.spring.service;

import com.spring.dao.StockDAO;
import com.spring.model.Stock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StockServiceImpl implements StockService {

    @Autowired
    private StockDAO stockDAO;

    @Override

    public List<Stock> getAll() {
        return stockDAO.getAll();
    }

    @Override
    public Stock getById(int theId) {
        return stockDAO.getById(theId);
    }
}
