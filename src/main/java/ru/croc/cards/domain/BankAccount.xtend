package ru.croc.cards.domain;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import ru.croc.ctp.jxfw.core.generator.meta.XFWObject;

import java.util.UUID;

@XFWObject
@Table(name = "bank_account")
public class BankAccount {
    /**
     * Unique identifier.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "account_number", nullable = false)
    private UUID accountNumber;

    /**
     * Client first name.
     */
    @Column(name = "first_name", nullable = false)
    private String firstName;

    /**
     * Client last name.
     */
    @Column(name = "last_name", nullable = false)
    private String lastName;

    /**
     * Client patronymic.
     */
    @Column(name = "patronymic")
    private String patronymic;
}
