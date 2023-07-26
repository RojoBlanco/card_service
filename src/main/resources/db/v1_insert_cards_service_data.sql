INSERT INTO bank_account (account_number, first_name, last_name, patronymic)
VALUES
    ('63ebd05b-a67e-47d3-99f4-b8f7306b52cd', 'Alexey', 'Ivanov', 'Dmitrievich'),
    ('f2dea26d-4d41-45ac-8bb6-90b7d58447ec', 'Petr', 'Petrov', 'Danilovich'),
    ('5cc4ed6a-c2c7-4163-bc29-bc76c3ee9cad', 'Alexandr', 'Smirnov', 'Petrovich'),
    ('ea849672-5368-4014-ab74-b9639cfe747f', 'Dmitrii', 'Sobolev', 'Evgenievich'),
    ('105e50b1-4cd7-491f-8d0d-0c308968bec0', 'Semen', 'Vorobiev', 'Alexandrovich');

INSERT INTO card_type (id, type_name, cashback_percent, min_balance_for_cashback)
VALUES
    (991, 'DEFAULT_CARD', 0.5, 30000),
    (992, 'HIPSTER_DEFAULT', 1, 50000),
    (993, 'HIPSTER_GOLD', 1.5, 70000),
    (994, 'HIPSTER_PLATINUM', 2, 90000),
    (995, 'HIPSTER_BLACK', 2.5, 110000);

INSERT INTO card (id, account_number, card_type_id)
VALUES
    (991, '63ebd05b-a67e-47d3-99f4-b8f7306b52cd', 991),
    (992, 'f2dea26d-4d41-45ac-8bb6-90b7d58447ec', 992),
    (993, '5cc4ed6a-c2c7-4163-bc29-bc76c3ee9cad', 993),
    (994, 'ea849672-5368-4014-ab74-b9639cfe747f', 994),
    (995, '105e50b1-4cd7-491f-8d0d-0c308968bec0', 995);
