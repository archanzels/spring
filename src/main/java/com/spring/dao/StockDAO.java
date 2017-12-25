package com.spring.dao;

import com.spring.model.Stock;

import java.util.List;

public interface StockDAO {
    List<Stock> getAll();

    Stock getById(int theId);


}
