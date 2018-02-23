package com.spring.model;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.util.Date;

@Entity
@Table(name = "myshare")
public @Data
class Share {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToOne
    @JoinColumn(name = "stock_id")
    @NotNull
    private Stock stock;

    @Column(name = "quantity")
    @Min(1)
    private int quantity;

    @Column(name = "purchasedPrice")
    @NotNull
    private float purchasePrice;

    @Column(name = "purchasedDate")
    @Past
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private Date purchaseDate;
}
