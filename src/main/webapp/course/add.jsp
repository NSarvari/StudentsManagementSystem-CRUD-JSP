<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String courseName = request.getParameter("name");
    String duration = request.getParameter("duration");
    
    Connection con;
    PreparedStatement pst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root","");
    pst = con.prepareStatement("insert into course(courseName,duration)values(?,?)");
    pst.setString(1,courseName);
    pst.setString(2,duration);
    pst.executeUpdate();
    
    out.println("Record Added!");
%>