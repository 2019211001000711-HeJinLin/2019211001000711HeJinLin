<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/5/16
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Update</h1>
<%
  User u=(User) session.getAttribute("user");
%>
<form method="post" action="/2019211001000711HeJinLin_war_exploded/updateUser">
  <table>
    <tr> <td>id:</td> <td><input type="text" name="id" value="<%=u.getId()%>" required><br/></td></tr>
    <tr> <td>username:</td> <td><input type="text" name="username" value="<%=u.getUsername()%>"><br/></td></tr>
    <tr> <td>password:</td> <td><input type="password" name="password" value="<%=u.getPassword()%>"><br/></td></tr>
    <tr> <td>email:</td> <td><input type="email" name="email" value="<%=u.getEmail()%>"><br/></td></tr>
    <tr>
      <td>gender:</td>
      <td>
        <input type="radio" name="gender" value="Male" <%="Male".equals(u.getGender())?"checked":""%>/> Male
        <input type="radio" name="gender" value="Female" <%="Female".equals(u.getGender())?"checked":""%>/> Female
      </td>
    </tr>
    <tr> <td>Date of Birth:</td> <td><input type="date" name="birthdate" value="<%=u.getBirthdate()%>"><br/></td></tr>
    <tr> <td></td><td><input type="submit" value="Save Changes"/></td>  </tr>
  </table>
</form>
<%@include file="footer.jsp"%>