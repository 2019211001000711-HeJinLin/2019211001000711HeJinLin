package com.HeJinLin.week3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

//automatic -new --> servlet
@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//request come here
        //get parameter from request
        String username = request.getParameter("username");//name of input type -<input type="text" name="username" required>
        String password = request.getParameter("password");//<input type="password" name="password" required minlength="8">
        String email = request.getParameter("email");//<input type="email" name="email" required>
        String gender = request.getParameter("gender");//<input  type="radio" name="gender" >
        String birthDate = request.getParameter("birthDate");//input type="text name" name="password" >

        //print - write into response
        PrintWriter writer = response.getWriter();
        writer.println("<br>username :"+username);
        writer.println("<br>password :"+password);
        writer.println("<br>email :"+email);
        writer.println("<br>gender :"+gender);
        writer.println("<br>birth Date :"+birthDate);
        writer.close();


    }
}
