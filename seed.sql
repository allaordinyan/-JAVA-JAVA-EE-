set search_path to ordinyan_coursework;

insert into region (region_description) values
    ('Ростовская область'),
    ('Краснодарский край'),
    ('Ставропольский край');

insert into territory (region_id, description) values
    (1, 'Ростов-на-Дону'),
    (1, 'Таганрог'),
    (2, 'Краснодар'),
    (2, 'Сочи'),
    (3, 'Ставрополь'),
    (3, 'Пятигорск');

insert into employee (
    last_name,
    first_name,
    second_name,
    title,
    birthday,
    address,
    city,
    region,
    phone,
    email
) values
    ('Иванов', 'Павел', 'Сергеевич', 'Региональный менеджер', '1990-04-15', 'ул. Большая Садовая, 10', 'Ростов-на-Дону', 'Ростовская область', '+79000000001', 'ivanov.ps@example.com'),
    ('Петрова', 'Анна', 'Викторовна', 'Территориальный представитель', '1992-07-22', 'ул. Красная, 24', 'Краснодар', 'Краснодарский край', '+79000000002', 'petrova.av@example.com'),
    ('Сидоров', 'Илья', 'Андреевич', 'Старший региональный представитель', '1988-11-03', 'пр. Мира, 18', 'Ставрополь', 'Ставропольский край', '+79000000003', 'sidorov.ia@example.com');

insert into employee_territory (employee_id, territory_id) values
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6);
