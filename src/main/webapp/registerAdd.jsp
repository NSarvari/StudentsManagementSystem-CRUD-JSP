<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String fullName = request.getParameter("fullName");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    Connection con;
    PreparedStatement pst;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
    pst = con.prepareStatement("insert into user(fullName,username,email,password,confirmPassword)values(?,?,?,?,?)");
    pst.setString(1, fullName);
    pst.setString(2, username);
    pst.setString(3, email);
    pst.setString(4, password);
    pst.setString(5, confirmPassword);

    pst.executeUpdate();

    response.sendRedirect("login.jsp");
%>