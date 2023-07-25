package ru.croc.cards.service;

import io.qameta.allure.Feature;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import ru.croc.cards.domain.Card;
import ru.croc.cards.domain.service.CardService;


@Feature("Tests for cards service")
public class CardServiceTests {
    @Test
    @DisplayName("Test creating new card")
    void createNewTest(){
        CardService cardService = new CardService();

    }
    @Test
    @DisplayName("Test saving a card")
    void saveCardTest(){
        CardService cardService = new CardService();
    }

}
