package ru.croc.cards.api;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.croc.cards.domain.BankAccount;
import ru.croc.cards.domain.CardType;
import ru.croc.cards.domain.repo.BankAccountRepository;
import ru.croc.cards.dto.BankAccountDTO;
import ru.croc.cards.dto.CardDTO;
import ru.croc.cards.exceptions.BankAccountNotFoundException;

import java.util.Optional;

@RestController
@RequestMapping("/api/v1/cards")
@Slf4j
@RequiredArgsConstructor
public class CardsRestController {
    private final BankAccountRepository bankAccountRepository;

    @PostMapping("/get-card-type")
    public CardDTO getCardType(@Valid @RequestBody BankAccountDTO bankAccountDTO) {
        log.info("Received /get-card-type request with bankAccountNumber: {}",
                bankAccountDTO.getBankAccount());

        Optional<BankAccount> bankAccount = bankAccountRepository.findById(bankAccountDTO.getBankAccount());
        if (bankAccount.isEmpty()) {
            throw new BankAccountNotFoundException("Bank account with number " + bankAccountDTO.getBankAccount() +
                    " was not found in database!");
        }

        log.info("Extracted bankAccount : firstName={}, lastName={}, patronymic={}", bankAccount.get().getFirstName(),
                bankAccount.get().getLastName(), bankAccount.get().getPatronymic());

        return CardDTO.builder()
                .cardType(CardType.DEFAULT)
                .build();
    }
}
