package com.example.gittraining;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GitTrainingApplication {

    public static void main(String[] args) {
        SpringApplication.run(GitTrainingApplication.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "<h1>Success!</h1><p>Your EKS Deployment is Live.</p>";
    }
}