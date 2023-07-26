package ru.croc.cards.service;

import ru.croc.cards.dto.BankAccountDTO;
import ru.croc.cards.dto.CardDTO;

public interface CustomCardsService {
    CardDTO getCardByAccountNumber(BankAccountDTO bankAccountDTO);
}
