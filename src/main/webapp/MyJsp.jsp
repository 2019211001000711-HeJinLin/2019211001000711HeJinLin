<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/3/14
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="index.jsp">go to ecjtu</a><!--method is GET-->
<form method="post"><!--what is method when we use form?--><!-- its GET , why? default is Get,form date is added in the URL,u can see-->
    <!-- its better to use POST in form date in not added in the URL -->
    Name:<input type="text" name="name"><br/>
    ID:<input type="text" name="id"><br/>
    <input type="submit"  value="send date to server"/>

</form>
</body>
</html>
