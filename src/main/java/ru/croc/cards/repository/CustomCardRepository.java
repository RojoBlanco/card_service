package ru.croc.cards.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.croc.cards.domain.BankAccount;
import ru.croc.cards.domain.Card;

import java.util.Optional;

public interface CustomCardRepository extends JpaRepository<Card, Long> {
    Optional<Card> findByBankAccount(BankAccount bankAccount);
}
