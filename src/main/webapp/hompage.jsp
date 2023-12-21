<%-- 
    Document   : hompage
    Created on : 2023年12月20日, 下午3:39:50
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .neflex
            {
                display: flex;
                width: 80%; 
            }        
            .neflex02
            {
                display: inline-block;
                margin-left: 5px;
            }            
            img
            {
                width:200px;
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <h2>一間普通模型店</h2>
        <hr/>
        <h3>請選擇模型種類:</h3>
        <div class="neflex">
            <div class="neflex02">
                <a href="productList.jsp?ppp=1" type="button">Classic Cars</a><br>
                <img src="https://cdn.pixabay.com/photo/2014/07/31/00/30/vw-beetle-405876_1280.jpg" alt="Classic Cars Image"><br>
            </div>
            <div class="neflex02">    
                <a href="productList.jsp?ppp=2" type="button">Planes</a><br>
                <img src="https://cdn.pixabay.com/photo/2018/03/19/20/57/aircraft-3241229_1280.jpg" alt="Planes Image"><br>
            </div>
            <div class="neflex02">    
                <a href="productList.jsp?ppp=3" type="button">Motorcycles</a><br>
                <img src="https://cdn.pixabay.com/photo/2016/03/27/17/59/motorcycle-1283299_1280.jpg" alt="Motorcycles Image"><br>
            </div>
            <div class="neflex02">    
                <a href="productList.jsp?ppp=4" type="button">Ships</a><br>
                <img src="https://cdn.pixabay.com/photo/2015/09/22/19/00/ship-952292_1280.jpg" alt="Ships Image"><br>
            </div>
            <div class="neflex02">    
                <a href="productList.jsp?ppp=5" type="button">Trains</a><br>
                <img src="https://cdn.pixabay.com/photo/2012/10/10/05/04/train-60539_1280.jpg" alt="Trains Image"><br>
            </div>
            <div class="neflex02">    
                <a href="productList.jsp?ppp=6" type="button">Trucks and Buses</a><br>
                <img src="https://cdn.pixabay.com/photo/2018/04/13/14/45/charter-bus-3316652_1280.jpg" alt="Trucks and Buses Image"><br>
            </div>
            <div class="neflex02">   
                <a href="productList.jsp?ppp=7" type="button">Vintage Cars</a><br>
                <img src="https://cdn.pixabay.com/photo/2023/05/03/16/11/alfa-romeo-7968027_1280.jpg" alt="Vintage Cars Image"><br>
            </div>
        </div>    
            
        <h3>請選擇模型種類(下拉式選單):</h3>
        <select onchange="window.location.href=this.value;">
        <option value="productList.jsp?ppp=1">Classic Cars</option>
        <option value="productList.jsp?ppp=2">Planes</option>
        <option value="productList.jsp?ppp=3">Motorcycles</option>
        <option value="productList.jsp?ppp=4">Ships</option>
        <option value="productList.jsp?ppp=5">Trains</option>
        <option value="productList.jsp?ppp=6">Trucks and Buses</option>
        <option value="productList.jsp?ppp=7">Vintage Cars</option>
</select>
    </body>
</html>
