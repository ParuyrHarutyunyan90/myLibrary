<%@ page import="java.util.List" %>
<%@ page import="model.Author" %><%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 03.09.2022
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<% List<Author> authors = (List<Author>) request.getAttribute("authors"); %>


<h2 style="color: #2b2b2c">Please input Author data</h2> <br>
<form action="/books/add" method="post">
    <input type="text" name="title" placeholder="Please input book title"> <br> <br>
    <input type="text" name="description" placeholder="Please input book description"> <br> <br>
    <input type="number" name="price" placeholder="Please input book price"> <br>
    <select name="authorId">
        <% for (Author author : authors) { %>
        <option value="<%=author.getId() %>"> <%=author.getName()%> <%=author.getSurname()%>  </option>
        <% }%>
    </select>
    <input type="submit" name="ADD" value="ADD">

</form>
</body>
</html>
