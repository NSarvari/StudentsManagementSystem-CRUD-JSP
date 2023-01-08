<%-- 
    Document   : loginv
    Created on : Jan 4, 2023, 12:04:29 AM
    Author     : Nabila
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String username = request.getParameter("uname");
    String password = request.getParameter("password");

    Connection con;
    PreparedStatement pst;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
    pst = con.prepareStatement("select * from user where username=? and password=?");

    pst.setString(1, username);
    pst.setString(2, password);

    String unameDb = "";
    String passwordDb = "";

    ResultSet rs = pst.executeQuery();

    while (rs.next()) {
        unameDb = rs.getString("userName");
        passwordDb = rs.getString("password");
    }

    if (username.equals(unameDb) && password.equals(passwordDb)) {
        String redirect = "index.jsp";
        response.sendRedirect(redirect);
    } else {
        response.sendRedirect("error.jsp");
    }
%>