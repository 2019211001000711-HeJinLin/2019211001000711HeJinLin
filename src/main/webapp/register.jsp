<%--
  Created by IntelliJ IDEA.
  User: 11575
  Date: 2021/3/29
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>

<form method="post" action="register">
    <table>
        <tr> <td class="right">username:</td> <td><input type="text" name="username" required="true"><br/></td></tr>
        <tr> <td class="right">password:</td> <td><input type="password" name="password" required minlength="8"><br/></td></tr>
        <tr> <td class="right">email:</td> <td><input type="email" name="email" required="true"><br/></td></tr>
        <tr>
            <td class="right">Gender:</td>
            <td>
                <input type="radio" name="gender" value="Male" checked="checked"/> Male <!-- checked="checked"默认选择项 -->
                <input type="radio" name="gender" value="Female"/> Female
            </td>
        </tr>
        <tr> <td class="right">birthdate:</td> <td><input type="date" name="birthdate" required dataformatas="yyyy-dd-mm"><br/></td></tr>
        <tr> <td></td><td><input type="submit" value="Register"/></td>  </tr>
    </table>
</form>
<%@include file="footer.jsp"%>