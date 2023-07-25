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
    private UUID accountNumber;

    /**
     * Client first name.
     */
    @Column(name = "client_first_name", nullable = false)
    private String clientFirstName;

    /**
     * Client last name.
     */
    @Column(name = "client_last_name", nullable = false)
    private String clientLastName;

    /**
     * Client patronymic.
     */
    @Column(name = "client_patronymic")
    private String clientPatronymic;
}
