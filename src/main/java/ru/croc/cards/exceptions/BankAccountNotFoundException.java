package ru.croc.cards.exceptions;

public class BankAccountNotFoundException extends RuntimeException {
    public BankAccountNotFoundException(String message) {
        super(message);
    }
}
