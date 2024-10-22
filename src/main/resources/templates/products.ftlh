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
<div class="container mt-4">
<#if user.email??>
    <h3><i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <a href="/login">Войти</a>
</#if>
<hr>
    <#if user.email??>

    <h3 align="center">Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название объявления: <br><input type="text" name="title"/><br><br>
        Описание объявления: <br><input type="text" name="description"/><br><br>
        Цена: <br><input type="number" name="price"/><br><br>
        Город: <br><input type="text" name="city"/><br><br>
        Первая фотография: <br><input type="file" name="file1"/><br><br>
        Вторая фотография: <br><input type="file" name="file2"/><br><br>
        Третья фотография: <br><input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <p align="center"><input   type="submit" value="Добавить товар"/></p>
    </form>
    <hr>
    </#if>
<h4>Товары со всей России</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title">
    <input type="submit" value="Поиск"/>
</form>
<#--<#list products as product>-->
<#--    <div>-->
<#--        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>-->
<#--    </div>-->
<#--    <#else>-->
<#--    <h3>Товаров нет</h3>-->
<#--</#list>-->


<div class="card-group" >
    <#list products as product>
        <a href="/product/${product.id}" class="product-link">
            <div class="card text-white bg-dark my-3 product" style="width: 18rem;">
                <img src="/images/${product.previewImageId}" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">${product.title}</h5>
                    <p class="card-text">${product.price} ₽</p>
                </div>
                <div class="card-footer">
                    <small class="text-body-secondary">${product.city}</small>
                </div>
            </div>
        </a>
    <#else>
        <h1 style="text-align: center">Ничего не нашлось :(</h1>
    </#list>
</div>
</div>


</body>
</html>