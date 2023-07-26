package ru.croc.cards.domain;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import ru.croc.ctp.jxfw.core.generator.meta.XFWObject;
import ru.croc.ctp.jxfw.core.domain.meta.XFWElementLabel;

import java.util.UUID;

@XFWObject
@Table(name = "bank_account")
public class BankAccount {
    @Id
    @XFWElementLabel("Unique identifier")
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "account_number", nullable = false)
    private UUID accountNumber;

    @XFWElementLabel("Client first name")
    @Column(name = "first_name", nullable = false)
    private String firstName;

    @XFWElementLabel("Client last name")
    @Column(name = "last_name", nullable = false)
    private String lastName;

    @XFWElementLabel("Client patronymic")
    @Column(name = "patronymic")
    private String patronymic;
}
