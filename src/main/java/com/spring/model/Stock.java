package com.spring.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "stockdb")
public @Data
class Stock {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "symbol")
    private String symbol;

    @Column(name = "name")
    private String name;

    @Column(name = "currentPrice")
    private int currentPrice;
}
