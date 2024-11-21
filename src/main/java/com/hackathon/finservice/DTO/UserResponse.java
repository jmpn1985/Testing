package com.hackathon.finservice.DTO;

import lombok.Data;

@Data
public class UserResponse {
    private String name;
    private String email;
    private String accountNumber;
    private String accountType;
    private String hashedPassword;
}
