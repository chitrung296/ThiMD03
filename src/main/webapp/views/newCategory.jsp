<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/29/2024
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Category</title>
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
            width: 400px;
            max-width: 100%;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .status-label {
            margin-right: 15px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Create new Category</h1>
    <form action="<%=request.getContextPath()%>/categoryController/create" method="post">
        <label for="categoryId">Category Id</label>
        <input type="text" id="categoryId" name="categoryId"/><br>

        <label for="categoryName">Category Name</label>
        <input type="text" id="categoryName" name="categoryName"/><br>

        <label for="description">Description</label>
        <input type="text" id="description" name="description"/><br>

        <label for="department">Choose department</label>
        <input id="department" name="department.deptId"/><br>

        <label>Status</label>
        <input type="radio" id="active" name="status" value="true" checked/>
        <label for="active" class="status-label">Active</label>
        <input type="radio" id="inActive" name="status" value="false"/>
        <label for="inActive" class="status-label">Inactive</label><br>

        <input type="submit" value="Create"/>
    </form>
</div>
</body>
</html>
