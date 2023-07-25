package ru.croc.cards.service;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import ru.croc.cards.domain.BankAccount;
import ru.croc.cards.domain.service.BankAccountService;

import java.util.UUID;

public class BankAccountServiceTests {
    @Test
    @DisplayName("Test saving bank account")
    void saveBankAccount(){
        BankAccountService bankAccountService = new BankAccountService();
       // UUID uuid = UUID.fromString("")
       // BankAccount bankAccount = bankAccountService.createNew()
    }
}
