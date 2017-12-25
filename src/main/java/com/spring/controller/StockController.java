package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class StockController {
    @GetMapping("/stock")
    public String showStock() {
        return "stock/stock-list";
    }
}
