<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <title>BUYSELL</title>
</head>
<body>
<h1><a href="/">BUYSELL</a></h1>
<hr>
<div class="container mt-4">
    <h3>Подробная информация о пользователе ${user.name}</h3>
    <b>Номер телефона: </b>${user.phoneNumber}<br>
    <b>Email: </b>${user.email}<br><hr>


    <h4>Товары пользователя ${user.name}</h4>
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
            <#if user.email??>
                <#if user.email == product.user.email>
                    <form action="/product/delete/${product.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="hidden" name="userId" value="${product.user.id}">
                        <input type="submit" value="Удалить">
                    </form>
                </#if>
            </#if>
        </div>
    <#else>
        <h3>Товаров нет</h3>
    </#list>
</div>
<#--<#if errorMessage??>-->
<#--    <h2 style="...">${errorMessage}</h2>-->
<#--</#if>-->
</body>
</html>