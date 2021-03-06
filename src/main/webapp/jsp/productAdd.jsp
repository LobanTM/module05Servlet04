<%@ page import="com.loban.servlet04.model.Manufacturer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.loban.servlet04.dao.ManufacturerDAO" %>
<%@ page import="com.loban.servlet04.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: tetya
  Date: 30.10.2017
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h2>Adding new Product</h2>

<form action="addProduct" method="POST" accept-charset="utf-8">

    <p>Name: </p>
    <input type="text" name="name"/>

    <p>Price: </p>
    <input type="text" name="price"/>

    <%
        List<Manufacturer> list = ManufacturerDAO.findAll();
    %>

    <p><select size="<% list.size(); %>" multiple name="products[]">
        <option disabled>products</option>

        <% for (Manufacturer manufacturer : list){
            System.out.println("<option value=\""+manufacturer.getName() +"\">"
                                +manufacturer.getName()+"</option>");
        }%>
    </select></p>

    <br>
    <input type="submit" value="Add"/>
</form>
</body>
</html>
