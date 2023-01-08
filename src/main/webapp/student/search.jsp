
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String studentName = request.getParameter("sname");

    Connection con;
    PreparedStatement pst;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
    pst = con.prepareStatement("select * from student where studentName=?");

    pst.setString(1, studentName);

    String snameDb = "";

    ResultSet rs = pst.executeQuery();

    while (rs.next()) {
        snameDb = rs.getString("studentName");
    }

    if (studentName.equals(snameDb)) {
        out.println("Done");
    } else {
        response.sendRedirect("error.jsp");
    }
%>