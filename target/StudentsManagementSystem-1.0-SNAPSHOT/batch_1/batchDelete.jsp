<%-- 
    Document   : courseDelete
    Created on : Jan 6, 2023, 1:56:45 AM
    Author     : Nabila
--%>


<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String batchId = request.getParameter("id");
    
    Connection con;
    PreparedStatement pst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root","");
    pst = con.prepareStatement("delete from batch where id=?");
    pst.setString(1,batchId);
    pst.executeUpdate();
    
    out.println("Record Deleted");
%>