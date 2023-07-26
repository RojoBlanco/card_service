package ru.croc.cards.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.croc.cards.domain.BankAccount;
import ru.croc.cards.domain.Card;
import ru.croc.cards.domain.repo.BankAccountRepository;
import ru.croc.cards.dto.BankAccountDTO;
import ru.croc.cards.dto.CardDTO;
import ru.croc.cards.exceptions.BankAccountNotFoundException;
import ru.croc.cards.exceptions.CardNotFoundException;
import ru.croc.cards.repository.CustomCardRepository;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class CustomCardsServiceImpl implements CustomCardsService {
    private final CustomCardRepository cardRepository;
    private final BankAccountRepository bankAccountRepository;

    @Override
    public CardDTO getCardByAccountNumber(BankAccountDTO bankAccountDTO) {
        Optional<BankAccount> bankAccount = bankAccountRepository.findById(bankAccountDTO.getBankAccount());
        if (bankAccount.isEmpty()) {
            throw new BankAccountNotFoundException("Bank account with number " + bankAccountDTO.getBankAccount() +
                    " was not found in database!");
        }

        log.info("Extracted bankAccount: firstName={}, lastName={}, patronymic={}", bankAccount.get().getFirstName(),
                bankAccount.get().getLastName(), bankAccount.get().getPatronymic());

        Optional<Card> card = cardRepository.findByBankAccount(bankAccount.get());
        if (card.isEmpty()) {
            throw new CardNotFoundException("Card with bankAccountNumber " + bankAccountDTO.getBankAccount() +
                    " was not found in database!");
        }

        log.info("Extracted card: id={}, cardType={}", card.get().getId(), card.get().getCardType());
        return CardDTO.builder()
                .cardTypeName(card.get().getCardType().getName())
                .cashbackPercent(card.get().getCardType().getCashbackPercent())
                .build();
    }
}
