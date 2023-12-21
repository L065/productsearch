<%-- 
    Document   : productList
    Created on : 2023年12月20日, 下午3:58:56
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.mycompany.productsearch.DBConGenerator02" %>
<%@page import="com.mycompany.productsearch.productClass" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List trans to Object (ORM)</title>
        
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
        String productLine  = null;
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
        try 
        {
            rs = stmt.executeQuery("select productCode,productName,productScale,quantityInStock from classicmodels.products");
        }
        catch(Exception e)
        {}    
    %>
    
    <%--   rs.next 迴圈開始 --%> 
        <%
        ArrayList rows= new ArrayList();
            try
                {
                    while(rs.next())
                    {
                        productClass pm01= new productClass();
                        pm01.productCode= rs.getString("productCode");
                        pm01.productName= rs.getString("productName");
                        pm01.productScale= rs.getString("productScale");
                        pm01.qisk=rs.getInt("quantityInStock");
                        
                        rows.add(pm01);
                    }
                    // 釋放所有資源
                    rs.close();
                    stmt.close();
                    con.close();
                }
            catch(Exception e)
            { }    
        %>
    
    <body>
            
        
            <hr>
            <p>目前共有<%= rows.size() %>筆模型資料</p>    
         
    </body>
</html>
