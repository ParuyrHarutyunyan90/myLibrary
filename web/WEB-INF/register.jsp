<%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 09.09.2022
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<%
    String msg = (String) request.getAttribute("msg");
%>
<% if (msg != null) { %>
<p style="color: red"><%=msg%>
</p>

<% } %>
<h2 style="color: #2b2b2c">Please input  data</h2> <br>
<form action="/register" method="post">
    <input type="text" name="name" placeholder="Please input  name"> <br> <br>
    <input type="text" name="surname" placeholder="Please input  surname"> <br> <br>
    <input type="email" name="email" placeholder="Please input  email"> <br> <br>
    <input type="password" name="password" placeholder="Please input password">
    <input type="submit" value="REGISTER">
</form>
</body>
</html>
