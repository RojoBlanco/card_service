INSERT INTO bank_account (account_number, first_name, last_name, patronymic)
VALUES
    ('63ebd05b-a67e-47d3-99f4-b8f7306b52cd', 'Alexey', 'Ivanov', 'Dmitrievich'),
    ('f2dea26d-4d41-45ac-8bb6-90b7d58447ec', 'Petr', 'Petrov', 'Danilovich'),
    ('5cc4ed6a-c2c7-4163-bc29-bc76c3ee9cad', 'Alexandr', 'Smirnov', 'Petrovich'),
    ('ea849672-5368-4014-ab74-b9639cfe747f', 'Dmitrii', 'Sobolev', 'Evgenievich'),
    ('105e50b1-4cd7-491f-8d0d-0c308968bec0', 'Semen', 'Vorobiev', 'Alexandrovich');

INSERT INTO card_type (id, type_name, cashback_percent)
VALUES
    (1, 'DEFAULT_CARD', 0.5),
    (2, 'HIPSTER_DEFAULT', 1),
    (3, 'HIPSTER_GOLD', 1.5),
    (4, 'HIPSTER_PLATINUM', 2),
    (5, 'HIPSTER_BLACK', 2.5);

INSERT INTO card (id, account_number, card_type_id)
VALUES
    (1, '63ebd05b-a67e-47d3-99f4-b8f7306b52cd', 1),
    (2, 'f2dea26d-4d41-45ac-8bb6-90b7d58447ec', 2),
    (3, '5cc4ed6a-c2c7-4163-bc29-bc76c3ee9cad', 3),
    (4, 'ea849672-5368-4014-ab74-b9639cfe747f', 4),
    (5, '105e50b1-4cd7-491f-8d0d-0c308968bec0', 5);
