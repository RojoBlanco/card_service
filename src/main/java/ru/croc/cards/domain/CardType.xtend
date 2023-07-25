package ru.croc.cards.domain;

import ru.croc.ctp.jxfw.core.domain.meta.XFWEnumId;
import ru.croc.ctp.jxfw.core.generator.meta.XFWEnum;

@XFWEnum
public enum CardType {
    /**
     * Default hipster card.
     */
    @XFWEnumId(1)
    HIPSTER_DEFAULT,

    /**
     * Gold hipster card.
     */
    @XFWEnumId(2)
    HIPSTER_GOLD,

    /**
     * Default not hipster card.
     */
    @XFWEnumId(3)
    DEFAULT
}
