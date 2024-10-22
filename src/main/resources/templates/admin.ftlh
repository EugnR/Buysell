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
<h4 align="center">Панель администратора</h4>
<div class="container mt-4">
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
<#--        <th>Активность</th>-->
        <th>Роли</th>
<#--        <th>Бан</th>-->
        <th>Удалить</th>
        <th>Изменить роль</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as user>
        <tr>
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
<#--            <td><#if user.active>true<#else> false</#if></td>-->
            <td><#list user.roles as role>${role},<#sep>, </#list> </td>
<#--            <td>-->
<#--                <form action="/admin/user/ban/${user.id}" method="post">-->
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                    <input type="submit" value="Бан">-->
<#--                </form>-->
<#--            </td>-->
            <td>
                <form action="/admin/user/delete/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Удалить">
                </form>
            </td>
            <td><a href="/admin/user/edit/${user.id}">Изменить роль</a> </td>
            <td><a href="user/${user.id}">Подробная информация</a> </td>
        </tr>
        <#else>
        <h3>Пользоваетелей нет</h3>
    </#list>
</table>
</div>
</body>
</html>