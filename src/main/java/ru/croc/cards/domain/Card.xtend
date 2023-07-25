package ru.croc.cards.domain;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import ru.croc.ctp.jxfw.core.domain.meta.persistence.XFWOneToOne;
import ru.croc.ctp.jxfw.core.generator.meta.XFWObject;

@XFWObject
@Table(name = "card")
public class Card {
    /**
     * Unique identifier.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "card_seq")
    @SequenceGenerator(name = "card_seq", sequenceName = "card_seq", allocationSize = 1)
    private Long id;

    /**
     * Account number to which the card is linked.
     */
    @XFWOneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "account_number")
    private BankAccount bankAccount;

    /**
     * Type of the card.
     */
    @Column(name = "card_type", nullable = false)
    private CardType cardType;
}
