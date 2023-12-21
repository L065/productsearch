<%-- 
    Document   : shoppingCart
    Created on : 2023年12月21日, 上午10:30:01
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>購物項目</h2>
        <p>您剛選購的商品是: <%= request.getParameter() %> </p>
        <p>品名: <%= request.getParameter() %> </p>
        <p>數量: <%= request.getParameter() %> </p>
    </body>
</html>
