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
    <title>Create new Product</title>
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
        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"],
        select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .radio-group {
            margin-bottom: 12px;
        }
        .radio-group label {
            margin-right: 20px;
        }
    </style>
</head>
<body>
<form action="<%=request.getContextPath()%>/productController/create" method="post">
    <h1>Create New Product</h1>
    <label for="productId">Product Id</label>
    <input type="text" id="productId" name="productId"/><br>
    <label for="productName">Product Name</label>
    <input type="text" id="productName" name="productName"/><br>
    <label for="description">Description</label>
    <input type="text" id="description" name="description"/><br>
    <label for="price">Price</label>
    <input type="number" id="price" name="price"/><br>
    <label for="createdAt">Created At</label>
    <input type="date" id="createdAt" name="createdAt"/><br>
    <label for="category">Choose category</label>
    <select id="category" name="category.categoryId">
        <c:forEach items="${listCategories}" var="cat">
            <option value="${cat.categoryId}">${cat.categoryName}</option>
        </c:forEach>
    </select><br>
    <div class="radio-group">
        <label for="active">Status</label>
        <input type="radio" id="active" name="status" value="true" checked/><label for="active">Active</label>
        <input type="radio" id="inActive" name="status" value="false"/><label for="inActive">Inactive</label>
    </div>
    <input type="submit" value="Create"/>
</form>
</body>
</html>
