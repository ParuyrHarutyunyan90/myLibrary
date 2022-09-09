<%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 09.09.2022
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    String msg = (String) request.getAttribute("msg");
%>
<% if (msg != null) { %>
<p style="color: red"><%=msg%>
</p>

<% } %>
<h2 style="color: #2b2b2c">Please login</h2> <br>
<form action="/login" method="post">
    <input type="email" name="email" placeholder="Please input email"> <br>
    <input type="password" name="password" placeholder="Please input password"> <br>
    <input type="submit" value="LOGIN">

</form>

</body>
</html>
