<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/29/2024
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h3 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 1200px;
            margin: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: block;
            text-align: center;
            margin: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 4px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h3>Products Management</h3>
<table>
    <thead>
    <tr>
        <th>No</th>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Image URL</th>
        <th>Status</th>
        <th>Created At</th>
        <th>Category Id</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listProducts}" var="pro" varStatus="loop">
        <tr>
            <td>${loop.index+1}</td>
            <td>${pro.productId}</td>
            <td>${pro.productName}</td>
            <td>${pro.description}</td>
            <td>${pro.price}</td>
            <td>${pro.imageUrl}</td>
            <td>${pro.status ? "Active" : "Inactive"}</td>
            <td>${pro.createdAt}</td>
            <td>${pro.category.categoryName}</td>
            <td><!-- Add actions here --></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="<%=request.getContextPath()%>/productController/initCreate">Create new Product</a>
</body>
</html>