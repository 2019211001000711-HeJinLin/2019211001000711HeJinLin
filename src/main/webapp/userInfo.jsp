<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/5/11
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Info</h1>
<table>
  <tr><td>Username:</td><td><%=request.getAttribute("username")%></td></tr>
  <tr><td>Password:</td><td><%=request.getAttribute("password")%></td></tr>
  <tr><td>email:</td><td><%=request.getAttribute("email")%></td></tr>
  <tr><td>Gender:</td><td><%=request.getAttribute("gender")%></td></tr>
  <tr><td>Birth Date:</td><td><%=request.getAttribute("birthdate")%></td></tr>
</table>
<%@include file="footer.jsp"%>