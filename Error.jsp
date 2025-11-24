<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8d7da;
        color: #721c24;
        padding: 40px;
    }
    h1 {
        color: #721c24;
    }
    a {
        color: #004085;
        text-decoration: none;
        font-weight: bold;
    }
</style>
</head>
<body>
    <h1>Something went wrong!</h1>
    <p>Please try again later.</p>

    <%-- Optional: Uncomment this line only during debugging --%>
    <%-- <p>Error details: <%= exception.getMessage() %></p> --%>

    <p><a href="list">Back to User List</a></p>
</body>
</html>
