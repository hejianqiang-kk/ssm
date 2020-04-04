package com.zhongyi.controller;

import com.zhongyi.entity.Kp;
import com.zhongyi.services.KpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/kp")
public class KpHandler {
    @Autowired
    public KpService kpService;
        @GetMapping("/findAll")
        public ModelAndView index(){
            ModelAndView modelAndView =new ModelAndView();
            modelAndView.setViewName("index");
            modelAndView.addObject("list", kpService.findAll());
            return modelAndView;
        }
    @PostMapping("/save")
    public String save(Kp kp){
        kpService.save(kp);
        return "redirect:/kp/findAll";
    }
    @PutMapping("/update")
    public String update(Kp kp){
        kpService.update(kp);
        return "redirect:/kp/findAll";
    }

    @DeleteMapping("/deleteById/{id}")
    public String deleteById(@PathVariable("id") Integer id){
        kpService.deleteById(id);
        return "redirect:/kp/findAll";
    }
    @GetMapping("/findById/{id}")
    public ModelAndView findById(@PathVariable("id") Integer id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("update");
        modelAndView.addObject("kp",kpService.findById(id));
        return modelAndView;
    }

}
