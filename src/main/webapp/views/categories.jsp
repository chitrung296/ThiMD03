<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/29/2024
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>List Categories</title>
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

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 1200px;
        }

        h3 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h3>Category Management</h3>
    <table>
        <thead>
        <tr>
            <th>No</th>
            <th>Category Id</th>
            <th>Category Name</th>
            <th>Description</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listCategories}" var="cat" varStatus="loop">
            <tr>
                <td>${loop.index + 1}</td>
                <td>${cat.categoryId}</td>
                <td>${cat.categoryName}</td>
                <td>${cat.categoryDescription}</td>
                <td>${cat.categoryStatus ? "Active" : "Inactive"}</td>
                <td>
                    <a href="<%=request.getContextPath()%>/categoryController/edit/${cat.categoryId}">Edit</a>
                    <a href="<%=request.getContextPath()%>/categoryController/delete/${cat.categoryId}" onclick="return confirm('Are you sure you want to delete this category?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="<%=request.getContextPath()%>/categoryController/initCreate">Create new Category</a>
</div>
</body>
</html>

