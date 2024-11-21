package com.hackathon.finservice.DTO;

import lombok.Data;

@Data
public class AccountResponse {
    private String accountNumber;
    private Double balance;
    private String accountType;
}