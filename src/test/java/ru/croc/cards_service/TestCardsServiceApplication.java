package ru.croc.cards_service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.context.TestConfiguration;

@TestConfiguration(proxyBeanMethods = false)
public class TestCardsServiceApplication {

	public static void main(String[] args) {
		SpringApplication.from(CardsServiceApplication::main).with(TestCardsServiceApplication.class).run(args);
	}

}
