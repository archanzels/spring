package com.spring.service;

import com.spring.model.Share;
import com.spring.model.Stock;

import java.util.List;

public interface ShareService {
    List<Share> getAll();

    List<Stock> getAllStock();

    void addShare(Share share);

    Share getById(int theId);

    void deleteById(int theId);
}
