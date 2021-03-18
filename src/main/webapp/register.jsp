<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/3/14
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="register"><!-- within doPost() in servlet -->
    username :<input type="text" name="username" required><br/>
    password :<input type="password" name="password" required minlength="8"><br/>
    email    :<input type="email" name="email" required><br/>
    Gender   :<input type="radio" name="gender" value="male" >Male
    <input  type="radio" name="gender" value="female" >Female<br/>
    <!-- if name is same it make array -->
    date of birth:<input type="text name" name="birthDate"  ><br/>
    <input type="submit"  value="Register"  ><br/>
</form>

</body>
</html>
