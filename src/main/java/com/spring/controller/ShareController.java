package com.spring.controller;

import com.spring.model.Share;
import com.spring.model.Stock;
import com.spring.service.ShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/share")
public class ShareController {

    @Autowired
    private ShareService shareService;

    @GetMapping("/list")
    public String showMyShare(Model theModel) {
        List<Share> theShares = shareService.getAll();
        theModel.addAttribute("shares", theShares);
        return "share/share-list";
    }

    @GetMapping("/add")
    public String showAddForm(Model theModel) {
        Share theShare = new Share();
        List<Stock> stocks = shareService.getAllStock();
        theModel.addAttribute("share", theShare);
        theModel.addAttribute("stocks", stocks);
        return "share/share-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("share") @Valid Share share, BindingResult bindingResult, Model theModel) {
        if (bindingResult.hasErrors()) {
            List<Stock> stocks = shareService.getAllStock();
            theModel.addAttribute("stocks", stocks);
            return "share/share-form";
        } else {
            shareService.addShare(share);
            return "redirect:/share/list";
        }
    }

    @GetMapping("/update")
    public String update(@RequestParam("shareId") int theId, Model theModel) {
        Share theShare = shareService.getById(theId);
        List<Stock> stocks = shareService.getAllStock();
        theModel.addAttribute("share", theShare);
        theModel.addAttribute("stocks", stocks);
        return "share/share-form";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("shareId") int theId) {
        shareService.deleteById(theId);
        return "redirect:/share/list";
    }
}
