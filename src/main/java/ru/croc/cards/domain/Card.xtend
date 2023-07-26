package ru.croc.cards.domain;

import jakarta.persistence.CascadeType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import ru.croc.ctp.jxfw.core.domain.meta.persistence.XFWOneToOne;
import ru.croc.ctp.jxfw.core.generator.meta.XFWObject;
import ru.croc.ctp.jxfw.core.domain.meta.XFWElementLabel;

@XFWObject
@Table(name = "card")
public class Card {

    @XFWElementLabel("Unique card identifier")
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "card_seq")
    @SequenceGenerator(name = "card_seq", sequenceName = "card_seq", allocationSize = 1)
    private Long id;

    @XFWElementLabel("Account number to which the card is linked")
    @XFWOneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "account_number")
    private BankAccount bankAccount;

    @XFWElementLabel("Type of the card")
    @XFWOneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "card_type_id")
    private CardType cardType;
}
