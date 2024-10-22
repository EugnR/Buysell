<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8"name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <title>BUYSELL</title>
</head>
<body>
<h1><a href="/">BUYSELL</a> </h1><hr>
<h4 align="center">Регистрация</h4>
<div class="container mt-4">
    <form action="/registration" method="post">
        Имя пользователя: <br><input type="text" name="name"><br><br>
        Эл. почта: <br><input type="email" name="email"><br><br>
        Номер телефона: <br><input type="text" name="phoneNumber"><br><br>
        Пароль: <br><input type="password" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Зарегистироваться"/>
    </form>
</div>
</body>
</html>