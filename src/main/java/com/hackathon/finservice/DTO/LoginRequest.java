package com.hackathon.finservice.DTO;

import lombok.Data;

@Data
public class LoginRequest {
    private String identifier;
    private String password;
}
