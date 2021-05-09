<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/5/11
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
%@include file="/header.jsp"%>
This is my JSP page.<br>
<h1>New User Registration</h1>
<form method="post" action="/2019211001000711HeJinLin_war_exploded/register">
    <table>
        <tr> <td>Username:</td> <td><input type="text" name="username" required><br/></td></tr>
        <tr> <td>password:</td> <td><input type="password" name="password" required minlength="8"><br/></td></tr>
        <tr> <td>Email:</td> <td><input type="email" name="email" required><br/></td></tr>
        <tr>
            <td>Gender:</td>
            <td>
                <input type="radio" name="Gender" value="Male" checked="checked"/> Male <!-- checked="checked"默认选择项 -->
                <input type="radio" name="Gender" value="Female"/> Female
            </td>
        </tr>
        <tr> <td>Date of Birth:</td> <td><input type="date" name="birthdate" required dataformatas="yyyy-dd-mm"><br/></td></tr>
        <tr> <td></td><td><input type="submit" value="Register"/></td>  </tr>
    </table>
</form>
<%@include file="/footer.jsp"%>
