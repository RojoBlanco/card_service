package ru.croc.cards_service.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoRestController {

    @GetMapping("/test")
    public static GreetingRecord isAliveResponse(){
        return new GreetingRecord(200, "Hi! I am Cards Service! And I am ALIVE!");
    }

}
