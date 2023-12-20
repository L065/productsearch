<%-- 
    Document   : productList
    Created on : 2023年12月20日, 下午3:58:56
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table {
          border-collapse: collapse;
          border-spacing: 0;
          width: 100%;
          border: 1px solid #ddd;
        }
        th, td {
          text-align: left;
          padding: 16px;
        }
        tr:nth-child(even) {
          background-color: #a9d9bb;
        }
        </style>
    </head>
    <%--  
            1.載入資料庫
            2.取得連線
            3. 根據條件 建立 sql -->  select * from products where productLine  符合 classic cars , motorcycle, vintage cars .....
            4. 送出查詢 取得結果
            5. 安排迴圈顯示在 table 內
            6.結束關閉工具
         --%>
    <body>
        <h2>商品列表</h2>
        <h4>查詢類型: <%= request.getParameter("p1") %>   </h4>
        
        <table>
            <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Points</th>
            </tr>
            <tr>
              <td>Jill</td>
              <td>Smith</td>
              <td>50</td>
            </tr>
            <tr>
              <td>Eve</td>
              <td>Jackson</td>
              <td>94</td>
            </tr>
            <tr>
              <td>Adam</td>
              <td>Johnson</td>
              <td>67</td>
            </tr>
         </table>
         
        
    </body>
</html>
