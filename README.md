# Ordinyan Coursework App

Курсовой проект по варианту 14: информационная подсистема формирования данных о региональных представителях фирмы.

## Что внутри

1. Spring Boot + Thymeleaf веб-приложение.
2. Модели: сотрудники, области, территории, назначения.
3. CRUD-страницы и базовая ролевая авторизация.
4. Тестовые данные при запуске.
5. Модульные и интеграционные тесты.

## Роли

1. `admin / admin123`
2. `hr / hr123`
3. `viewer / viewer123`

## Запуск через PostgreSQL

1. Выполнить `docker compose up -d`.
2. Выполнить `.\mvnw.cmd spring-boot:run`.
3. Открыть `http://localhost:8081`.

Если Docker уже запускался ранее и нужно заново переинициализировать БД из SQL-скриптов, используйте `docker compose down -v`, затем снова `docker compose up -d`.

## Альтернативный запуск без PostgreSQL

Для демонстрации интерфейса можно использовать встроенный demo-профиль на H2:

`.\mvnw.cmd -Dspring-boot.run.profiles=demo spring-boot:run`

## Полезные команды

1. Тесты: `.\mvnw.cmd test`
2. SQL-скрипты: `database/00-ddl.sql`, `database/01-seed.sql`
3. Скриншоты: `docs/screenshots/login.png`, `docs/screenshots/home.png`, `docs/screenshots/employees.png`
