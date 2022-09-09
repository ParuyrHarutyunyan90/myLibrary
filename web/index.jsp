<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 03.09.2022
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME</title>
</head>

<% User user = (User) session.getAttribute("user"); %>
<body>
<h1 style="color: #2b2b2c"> Welcome To MY LIBRARY</h1>


<% if (user != null) {%>
<a href="/books">Show All Books</a> <br> <br>
<a href="/books/add">Add new Book</a> <br> <br>
<a href="/authors">Show All Authors</a> <br> <br>
<a href="/authors/add">Add new Author</a> <br> <br>
<a href="/logout">LOGOUT</a>

<% } else { %>
<a href="/authors">Show All Authors</a> <br> <br>
<a href="/authors/add">Add new Author</a> <br> <br>
<a href="/books">Show All Books</a> <br> <br>
<a href="/login">LOGIN</a> <span>.   OR   .</span>
<a href="/register">REGISTER</a>
<% } %>



</body>
</html>