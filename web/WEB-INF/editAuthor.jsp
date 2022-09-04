<%@ page import="model.Author" %><%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 04.09.2022
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Author</title>
</head>
<body>

<% Author author = (Author) request.getAttribute("author");
%>


<h2 style="color: #2b2b2c">Please input Author data</h2> <br>
<form action="/authors/edit" method="post">
    <input type="hidden" name="authorId" value="<%=author.getId()%>">
    <input type="text" name="name" value="<%=author.getName()%>"> <br> <br>
    <input type="text" name="surname" value="<%=author.getSurname()%>"> <br> <br>
    <input type="email" name="email" value="<%=author.getEmail()%>"> <br> <br>
    <input type="number" name="age" value="<%=author.getAge()%>"> <br>
    <input type="submit" value="EDIT">
</form>


</body>
</html>
