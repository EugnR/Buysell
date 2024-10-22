# Buysell
Онлайн-площадка для размещения объявлений о продаже товаров

Незамысловатое веб-приложением с CRUD-функционалом, созданное в процессе обучения.
В нём реализованы регистрация и авторизация пользователей с разделением на роли. Создание и редактирование объявлений с возможностью прикрепления к ним 3-ёх избражений.

Для работы необходимо наличие пустой MySQL БД с названием buysell.
Веб-приложение запускается на порте 8080.

Чтобы при регистрации пользователям выдавалась роль админа необходимо отредактировать метод createUser в классе UserService, заменив ROLE_USER на ROLE_ADMIN

Технологический стек:

- Java 11
- Spring Boot 2.5.6
- Lombok
- Maven
- MySQL
