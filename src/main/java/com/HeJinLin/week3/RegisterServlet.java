package com.HeJinLin.week3;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;

@WebServlet(
        urlPatterns = {"/register"}
)

public class RegisterServlet extends HttpServlet {
    Connection con=null;
    @Override
    public void init() throws ServletException {
        String driver=getServletConfig().getServletContext().getInitParameter("driver");
        String url=getServletConfig().getServletContext().getInitParameter("url");
        String username=getServletConfig().getServletContext().getInitParameter("username");
        String password=getServletConfig().getServletContext().getInitParameter("password");
        try {
            Class.forName(driver);
            con= DriverManager.getConnection(url,username,password);
            System.out.println("init()-->"+con);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
        String birthdate=request.getParameter("birthdate");

        PrintWriter writer= response.getWriter();
        writer.println("<br>username :"+username);
        writer.println("<br>password :"+password);
        writer.println("<br>email :"+email);
        writer.println("<br>gender :"+gender);
        writer.println("<br>birthdate :"+birthdate);
        writer.close();
        String sql1="insert into usertable values(?,?,?,?,?,?)";
        PreparedStatement pstmt= null;
        try {
            pstmt = con.prepareStatement(sql1);
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            pstmt.setString(3,email);
            pstmt.setString(4,gender);
            pstmt.setString(5,birthdate);
            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<html>");
        out.println("<head><title>Register</title></head>");
        out.println("<body>");
        out.println("<table>");
        out.println("<tr><td>id</td><td>username</td><td>password</td><td>email</td><td>gender</td><td>birthdate</td></tr>");
        String sql2="select * from usertable";
        ResultSet rs= null;
        try {
            rs = con.createStatement().executeQuery(sql2);
            while(rs.next()){
                int id=rs.getInt("id");
                String Username=rs.getString("username");
                String password1=rs.getString("password");
                String Email=rs.getString("email");
                String Gender=rs.getString("gender");
                Date Birthdate=rs.getDate("birthdate");
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                out.println("<tr><td>"+id+"</td><td>"+username+"</td><td>"+password1+"</td><td>"+email+"</td><td>"+gender+"</td><td>"+sdf.format(birthdate)+"</td></tr>");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    public void destroy() {
        super.destroy();
        try {
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}