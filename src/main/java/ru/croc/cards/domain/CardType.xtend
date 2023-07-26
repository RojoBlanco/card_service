package ru.croc.cards.domain;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import ru.croc.ctp.jxfw.core.generator.meta.XFWObject;
import ru.croc.ctp.jxfw.core.domain.meta.XFWElementLabel;

import java.math.BigDecimal;

@XFWObject
@Table(name = "card_type")
public class CardType {
    @Id
    @XFWElementLabel("Unique card type identifier")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "card_type_seq")
    @SequenceGenerator(name = "card_type_seq", sequenceName = "card_type_seq", allocationSize = 1)
    private Long id;

    @XFWElementLabel("Name of the card type")
    @Column(name = "type_name", nullable = false)
    private String name;

    @XFWElementLabel("Cashback percent of that card type")
    @Column(name = "cashback_percent", nullable = false)
    private BigDecimal cashbackPercent;

    @XFWElementLabel("Min balance for cashback")
    @Column(name = "min_balance_for_cashback", nullable = false)
    private BigDecimal minBalanceForCashback;
}
