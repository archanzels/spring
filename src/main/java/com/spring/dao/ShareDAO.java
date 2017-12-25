package com.spring.dao;

import com.spring.model.Share;

import java.util.List;

public interface ShareDAO {
    List<Share> getAll();

    void addShare(Share share);

    Share getById(int theId);

    void deleteById(int theId);
}
