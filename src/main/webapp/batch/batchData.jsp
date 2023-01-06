<%-- 
    Document   : courseData
    Created on : Jan 6, 2023, 1:53:04 AM
    Author     : Nabila
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String batchId = request.getParameter("id");
    String batchName = request.getParameter("bname");
    String year = request.getParameter("year");
    
    Connection con;
    PreparedStatement pst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root","");
    pst = con.prepareStatement("update batch set batchName=?, year=? where id =?");
    pst.setString(1,batchName);
    pst.setString(2,year);
    pst.setString(3,batchId);
    pst.executeUpdate();
    
    out.println("Record Updated");
%>