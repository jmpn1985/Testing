package com.hackathon.finservice.DTO;

import lombok.Data;

@Data
public class CreateAccountRequest {
    private String accountNumber;
    private String accountType;
}
