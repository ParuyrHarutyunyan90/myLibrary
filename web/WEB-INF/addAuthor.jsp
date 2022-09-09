<%--
  Created by IntelliJ IDEA.
  User: Paruyr
  Date: 03.09.2022
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Author </title>
</head>
<body>
<h2 style="color: #2b2b2c">Please input Author data</h2> <br>
<form action="/authors/add" method="post" enctype="multipart/form-data">
  <input type="text" name="name" placeholder="Please input Author name"> <br> <br>
  <input type="text" name="surname" placeholder="Please input Author surname"> <br> <br>
  <input type="email" name="email" placeholder="Please input Author email"> <br> <br>
  <input type="number" name="age" placeholder="Please input Author age"> <br>
  Profile Picture: <br>
  <input type="file" name="profilePic">

  <input type="submit" name="ADD">
</form>



</body>
</html>
