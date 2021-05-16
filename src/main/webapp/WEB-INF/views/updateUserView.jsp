<%@ page import="com.HeJinLin.model.User" %>
<%@ page import="java.util.List" %>
 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Update User Info</h2>
<% if(!(request.getAttribute("user")==null)){
    
   com.HeJinLin.model.User u = (com.HeJinLin.model.User)request.getAttribute("user");
%>
<%if(!(request.getAttribute("message")==null)){
    out.println("<h3>"+request.getAttribute("message")+"</h3>");
}%>
<form method="post" action="updateUser">
   <label>username : </label> <input type="text" name="username" placeholder="username" value="<%=u.getUsername()%>"/>
    <label>password : </label><input type="text" name="password" placeholder="password" value="<%=u.getPassword()%>"/>
    <label>email : </label><input type="text" name="email" placeholder="email" value="<%=u.getEmail()%>"/><br/>
 	<label> gender </label>
 	 &nbsp;<input type="radio"  style="width: 15px; height: 15px; display:inline;" name="gender" value="male" <%="male".equals(u.getGender())? "checked":""%> />&nbsp;Male&nbsp;
 	<input type="radio" style="width: 15px; height: 15px;   display: inline;" name="gender" value="female" <%="female".equals(u.getGender())? "checked":""%>/>&nbsp;Female
 	<br/><br/>
   <label>Date of Birth : </label><input type="text" name="birthdate" placeholder="Date of Birth (yyyy-mm-dd)" value="<%=u.getBirthdate()%>" />
   <input type="hidden" name="id" value="<%=u.getId()%>">
    <button type="submit" class="btn btn-default">Save Changes</button>
    <%}%>
</form>
</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
<%@include file="footer.jsp"%>
