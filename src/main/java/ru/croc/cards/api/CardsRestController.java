package ru.croc.cards.api;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.croc.cards.dto.BankAccountDTO;
import ru.croc.cards.dto.CardDTO;
import ru.croc.cards.service.CustomCardsService;

@RestController
@RequestMapping("/api/v1/cards")
@Slf4j
@RequiredArgsConstructor
public class CardsRestController {
    private final CustomCardsService cardsService;

    @PostMapping("/get-card-type")
    public CardDTO getCardType(@Valid @RequestBody BankAccountDTO bankAccountDTO) {
        log.info("Received /get-card-type request with bankAccountNumber: {}",
                bankAccountDTO.getBankAccount());

        return cardsService.getCardByAccountNumber(bankAccountDTO);
    }
}
