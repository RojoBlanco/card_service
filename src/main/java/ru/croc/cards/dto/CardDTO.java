package ru.croc.cards.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CardDTO {
    private String cardTypeName;
    private BigDecimal cashbackPercent;
    private BigDecimal minBalanceForCashback;
}
