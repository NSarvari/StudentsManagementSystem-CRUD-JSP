<%-- 
    Document   : courseData
    Created on : Jan 6, 2023, 1:53:04 AM
    Author     : Nabila
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String courseId = request.getParameter("id");
    String courseName = request.getParameter("name");
    String duration = request.getParameter("duration");
    
    Connection con;
    PreparedStatement pst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root","");
    pst = con.prepareStatement("update course set courseName=?, duration=? where id =?");
    pst.setString(1,courseName);
    pst.setString(2,duration);
    pst.setString(3,courseId);
    pst.executeUpdate();
    
    out.println("Record Updated");
%>