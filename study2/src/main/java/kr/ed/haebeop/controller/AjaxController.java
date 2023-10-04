package kr.ed.haebeop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

    @GetMapping("/")
    public String ajaxHome() {
        return "/ajax/home";
    }
    @GetMapping("/test1")
    public String ajaxTest1() {
        return "/ajax/test1";
    }



}
