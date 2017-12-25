package com.spring.service;

import com.spring.model.Stock;

import java.util.List;

public interface StockService {
    List<Stock> getAll();

    Stock getById(int theId);
}
