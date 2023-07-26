CREATE SEQUENCE IF NOT EXISTS card_seq
    MINVALUE 1
    MAXVALUE 999999999
    INCREMENT BY 1
    START WITH 1;

CREATE SEQUENCE IF NOT EXISTS card_type_seq
    MINVALUE 1
    MAXVALUE 999999999
    INCREMENT BY 1
    START WITH 1;

CREATE TABLE IF NOT EXISTS bank_account (
    account_number UUID PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    patronymic VARCHAR(255),
    ts BIGINT DEFAULT 1
);

CREATE TABLE IF NOT EXISTS card_type (
    id BIGSERIAL PRIMARY KEY,
    type_name VARCHAR(255) NOT NULL,
    cashback_percent NUMERIC NOT NULL,
    min_balance_for_cashback NUMERIC NOT NULL,
    ts BIGINT DEFAULT 1
);

CREATE TABLE IF NOT EXISTS card (
    id BIGSERIAL PRIMARY KEY,
    account_number UUID NOT NULL,
    card_type_id BIGSERIAL NOT NULL,
    ts BIGINT DEFAULT 1,
    FOREIGN KEY(account_number) REFERENCES bank_account(account_number),
    FOREIGN KEY(card_type_id) REFERENCES card_type(id)
);

DELETE FROM card;
DELETE FROM card_type;
DELETE FROM bank_account;
