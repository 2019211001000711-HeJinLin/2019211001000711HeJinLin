<%@ page import="javax.naming.spi.DirStateFactory" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/4/10
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/views/header.jsp"%>
<%@page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<h1>User List</h1>
<table border=1>
    <tr>
        <td>id</td>
        <td>username</td>
        <td>password</td>
        <td>email</td>
        <td>Gender</td>
        <td>birthdate</td>
    </tr>
    <%
        ResultSet rs= (ResultSet) request.getAttribute("rsname");
        if(rs==null){
    %>
    <tr><td>No Data !!!</td></tr>
    <%}else{
        while(rs.next()){
            int id=rs.getInt("id");
            String username=rs.getString("username");
            String password1=rs.getString("password");
            String email=rs.getString("email");
            String gender=rs.getString("gender");
            Date birthdate=rs.getDate("birthdate");
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            out.println("<tr><td>"+id+"</td><td>"+username+"</td><td>"+password1+"</td><td>"+email+"</td><td>"+gender+"</td><td>"+sdf.format(birthdate)+"</td></tr>");
        }
    }
    %>
</table>
<%@include file="WEB-INF/views/footer.jsp"%>