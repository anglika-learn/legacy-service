package com.anglika.legacy;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "hello/")
public class HelloWorld {
    
    @GetMapping
    public String sayHi() {
        return "Hello, World!";
    }
    
}
