<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %><%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 04.09.2022
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");

    List<Author> authors = (List<Author>) request.getAttribute("authors"); %>


<h2 style="color: #2b2b2c">Please Update Author data</h2> <br>
<form action="/books/edit" method="post" enctype="multipart/form-data">
    <input type="hidden" name="bookId" value="<%=book.getId()%>">
    <input type="text" name="title" value="<%=book.getTitle()%>"> <br> <br>
    <input type="text" name="description" value="<%=book.getDescription()%>"> <br> <br>
    <input type="number" name="price" value="<%=book.getPrice()%>"> <br>
    Profile Picture: <br>
    <input type="file" name="profilePic" value="<%=book.getProfilePic()%>"> <br>
    <select name="authorId">
        <% for (Author author : authors) {

            if (author.equals(book.getAuthor())) {
        %>

        <option selected value="<%=author.getId() %>"><%=author.getName()%> <%=author.getSurname()%>
        </option>
        <% } else { %>
        <option value="<%=author.getId() %>"><%=author.getName()%> <%=author.getSurname()%>
        </option>
        <%
                }
            }
        %>
    </select>
    <input type="submit" value="EDIT">

</form>
</body>
</html>
