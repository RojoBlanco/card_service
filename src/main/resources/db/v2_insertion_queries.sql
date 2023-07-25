-- Generate 5 rows for the "bank_account" table
INSERT INTO bank_account (account_number, first_name, last_name, patronymic)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'Smith'),
  ('22222222-2222-2222-2222-222222222222', 'Alice', 'Johnson', NULL),
  ('33333333-3333-3333-3333-333333333333', 'Bob', 'Smith', 'Johnson'),
  ('44444444-4444-4444-4444-444444444444', 'Emily', 'Anderson', NULL),
  ('55555555-5555-5555-5555-555555555555', 'Michael', 'Brown', 'Taylor');

-- Generate 5 rows for the "card" table
INSERT INTO card (account_number, card_type)
VALUES
  ((SELECT account_number FROM bank_account ORDER BY RANDOM() LIMIT 1), 1),
  ((SELECT account_number FROM bank_account ORDER BY RANDOM() LIMIT 1), 2),
  ((SELECT account_number FROM bank_account ORDER BY RANDOM() LIMIT 1), 1),
  ((SELECT account_number FROM bank_account ORDER BY RANDOM() LIMIT 1), 3),
  ((SELECT account_number FROM bank_account ORDER BY RANDOM() LIMIT 1), 2);
