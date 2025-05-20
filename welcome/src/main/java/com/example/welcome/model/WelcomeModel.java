package com.example.welcome.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class WelcomeModel {
    private String message;
    private String time;

    public WelcomeModel(String message) {
        this.message = message;
        this.time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
