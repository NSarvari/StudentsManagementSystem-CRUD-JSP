<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    Connection con;
    PreparedStatement pst;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
    pst = con.prepareStatement("insert into user(username,email,password,confirmPassword)values(?,?,?,?)");
    pst.setString(1, username);
    pst.setString(2, email);
    pst.setString(3, password);
    pst.setString(4, confirmPassword);

    if (password.equals(confirmPassword)) {
        pst.executeUpdate();
        response.sendRedirect("login.jsp");

    } else {
        response.sendRedirect("error.jsp");
    }

%>