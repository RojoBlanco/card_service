CREATE SEQUENCE IF NOT EXISTS card_seq
    MINVALUE 1
    MAXVALUE 999999999
    INCREMENT BY 1
    START WITH 1;

CREATE TABLE IF NOT EXISTS bank_account(
    account_number UUID PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    patronymic VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS card(
  id BIGSERIAL PRIMARY KEY,
  account_number UUID NOT NULL,
  card_type INTEGER NOT NULL,
  FOREIGN KEY(account_number) REFERENCES bank_account(account_number)
);

