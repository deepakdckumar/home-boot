package com.tech.home.controller;

import com.tech.home.service.Home;
import com.tech.home.service.HomeDb;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private HomeDb homeDb;

    @RequestMapping("/addHome")
    public ModelAndView addHome(Home home) {
        homeDb.save(home);
        String homeAdded = "Succesfully";
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("homeAdded", homeAdded);
        modelAndView.setViewName("./messages/successMessage");
        return modelAndView;
    }

    @RequestMapping("/findHome")
    public ModelAndView findHome(@RequestParam("zipCode") Integer zipCode) {
        ModelAndView modelAndView = new ModelAndView();
        Home home = homeDb.findById(zipCode).orElse(null);
        if(home != null) {
            modelAndView.addObject("homeFound", home);
        } else {
            modelAndView.addObject("homeFound", "Home Not Found");
        }
        modelAndView.setViewName("./messages/homefound");
        return modelAndView;
    }

    @RequestMapping("/removeHome")
    public ModelAndView removeHome(@RequestParam("address") Integer zipCode) {
        ModelAndView modelAndView = new ModelAndView("./messages/homeremove");
        homeDb.deleteById(zipCode);
        String status = "Home Removed";
        modelAndView.addObject("homeRemoved", status);
        return modelAndView;
    }
}
