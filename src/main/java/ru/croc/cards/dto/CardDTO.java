package ru.croc.cards.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import ru.croc.cards.domain.CardType;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CardDTO {
    private CardType cardType;
}
