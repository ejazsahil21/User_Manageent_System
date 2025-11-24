<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management Application</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
        <div>
            <a href="http://www.xadmin.net" class="navbar-brand">User Management Application</a>
        </div>
        <ul class="navbar-nav">
            <li><a href="<%= request.getContextPath() %>/list" class="nav-link">Users List</a></li>
        </ul>
    </nav>
</header>

<br>

<div class="container">
    <h3 class="text-center">List of Users</h3>
    <hr>

    <div class="text-left mb-3">
        <a href="<%= request.getContextPath() %>/new" class="btn btn-success">Add New User</a>
    </div>

    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>${user.country}</td>
                    <td>
                        <a href="edit?id=${user.id}" class="text-primary">Edit</a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="delete?id=${user.id}" class="text-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
