package com.spring.service;

import com.spring.dao.ShareDAO;
import com.spring.dao.StockDAO;
import com.spring.model.Share;
import com.spring.model.Stock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ShareServiceImpl implements ShareService {

    @Autowired
    private ShareDAO shareDAO;

    @Autowired
    private StockDAO stockDAO;

    @Override
    @Transactional
    public List<Share> getAll() {
        return shareDAO.getAll();
    }

    @Override
    @Transactional
    public List<Stock> getAllStock() {
        return stockDAO.getAll();
    }

    @Override
    @Transactional
    public void addShare(Share share) {
        shareDAO.addShare(share);
    }

    @Override
    @Transactional
    public Share getById(int theId) {
        return shareDAO.getById(theId);
    }

    @Override
    @Transactional
    public void deleteById(int theId) {
        shareDAO.deleteById(theId);
    }
}
