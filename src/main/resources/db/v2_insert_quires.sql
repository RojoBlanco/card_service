insert into bank_account(account_number,first_name,last_name,patronymic) values
('11111111-1111-1111-1111-111111111111','FirstName 1','LastName 1',null),
('22222222-2222-2222-2222-222222222222','FirstName 2','LastName 2',null),
('33333333-3333-3333-3333-333333333333','FirstName 3','LastName 3',null),
('44444444-4444-4444-4444-444444444444','FirstName 4','LastName 4',null);
insert into card(id,account_number,card_type) values
(1,'11111111-1111-1111-1111-111111111111','DEFAULT'),
(1,'22222222-2222-2222-2222-222222222222','HIPSTER_GOLD'),
(1,'33333333-3333-3333-3333-333333333333','HIPSTER_DEFAULT');