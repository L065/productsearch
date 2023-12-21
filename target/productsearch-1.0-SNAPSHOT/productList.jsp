<%-- 
    Document   : productList
    Created on : 2023年12月20日, 下午3:58:56
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.mycompany.productsearch.DBConGenerator02" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
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
            2.取得連線   (1跟2使用DBConGenerator的工具)
            3. 根據條件 建立 sql -->  select * from products where productLine  符合 classic cars , motorcycle, vintage cars .....
            4. 送出查詢 取得結果
            5. 安排迴圈顯示在 table 內
            6.結束關閉工具
         --%>
         
    <%!  //宣告物件
        Connection con = null;  
        ResultSet rs = null;
        Statement stmt = null;
        String productLine = null;
    %>
    
    <%       
        int pppType = Integer.valueOf( request.getParameter("ppp") );  // 
          // 請注意 跨資料庫查詢時要加上  Database.Table 格式
          //原本在資料庫是字元再轉為數字
        String sql = "Select * from classicmodels.products where productLine = '"; 
          //要背這個單引號用法
          
          // 準備資料查詢工作
        DBConGenerator02 dbg = new DBConGenerator02();
        con = dbg.getConnction();
        stmt = con.createStatement();
          //
          
        switch( pppType ) 
        {
            case 1:
                // 這是 選項一  : Class Cars
                productLine = "Classic Cars";
                sql = sql + productLine +"';";
                break;
            case 2:
                // 這是 選項二  : Planes
                productLine = "Planes";
                sql = sql + productLine +"';";
                break;
            case 3:
                // 這是 選項三  : Motorcycles
                productLine = "Motorcycles";
                sql = sql + productLine +"';";
                break;   
            case 4:   
                // 這是 選項四  : Ships
                productLine = "Ships";
                sql = sql + productLine +"';";
                break;
            case 5:    
                // 這是 選項五  : Trains
                productLine = "Trains";
                sql = sql + productLine +"';";
                break;
            case 6:    
                // 這是 選項六  : Trucks and Buses
                productLine = "Trucks and Buses";
                sql = sql + productLine +"';";
            case 7: 
                // 這是 選項七  :Vintage Cars 
                productLine = "Vintage Cars";
                sql = sql + productLine +"';";
        }
        try 
        {
            rs = stmt.executeQuery(sql);
        }
        catch(Exception e)
        {}    
    %>
         
    <body>
        <h2>商品列表</h2>
        <h4>查詢類型: <%= productLine %>   </h4>
        <h4>語法: <%= sql %> </h4>
        
        <table>
            <tr>
              <th>產品代號</th>
              <th>產品名稱</th> 
              <th>模型比例</th>
              <th>庫存數量</th>
              <th>售價</th>
              <th>點選加入購買</th>>
            </tr>
            <%--   rs.next 迴圈開始 --%> 
            <%
            try
                {
                    while(rs.next())
                    {%>
                        <tr>
                            <td><%= rs.getString("productCode") %></td>
                            <td><%= rs.getString("productName") %></td>
                            <td><%= rs.getString("productScale") %></td>
                            <td><%= rs.getInt("quantityInStock") %></td>
                            <td><%= rs.getBigDecimal("MSRP").toString()%></td>
                                <%-- // getBigDecimal 可注意這個DB資料型態 --%>
                            <td><a href="shoppingCart.jsp">加入購物車</a></td>
                        </tr>
                 <%}
                    // 釋放所有資源
                    rs.close();
                    stmt.close();
                    con.close();
                }
            catch(Exception e)
            {}    
            %>
         </table>
         
        
    </body>
</html>
