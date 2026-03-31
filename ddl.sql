create schema if not exists ordinyan_coursework;
set search_path to ordinyan_coursework;

drop table if exists employee_territory cascade;
drop table if exists employee cascade;
drop table if exists territory cascade;
drop table if exists region cascade;

create table region (
    id bigserial primary key,
    region_description varchar(120) not null unique
);

create table territory (
    id bigserial primary key,
    region_id bigint not null references region(id),
    description varchar(120) not null,
    constraint uq_territory_region_city
        unique (region_id, description)
);

create table employee (
    id bigserial primary key,
    last_name varchar(60) not null,
    first_name varchar(60) not null,
    second_name varchar(60),
    title varchar(100) not null,
    birthday date not null,
    address varchar(200) not null,
    city varchar(100) not null,
    region varchar(100) not null,
    phone varchar(30) not null unique,
    email varchar(120) not null unique,
    constraint chk_employee_email_format
        check (position('@' in email) > 1)
);

create table employee_territory (
    id bigserial primary key,
    employee_id bigint not null references employee(id) on delete cascade,
    territory_id bigint not null references territory(id) on delete cascade,
    constraint uq_employee_territory
        unique (employee_id, territory_id)
);

create index idx_territory_region_id
    on territory (region_id);

create index idx_employee_city
    on employee (city);

create index idx_employee_territory_employee_id
    on employee_territory (employee_id);

create index idx_employee_territory_territory_id
    on employee_territory (territory_id);
