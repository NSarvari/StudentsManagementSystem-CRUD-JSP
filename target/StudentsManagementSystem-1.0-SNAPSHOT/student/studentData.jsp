<%-- 
    Document   : courseData
    Created on : Jan 6, 2023, 1:53:04 AM
    Author     : Nabila
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String studentId = request.getParameter("id");
    String studentName = request.getParameter("sname");
    String course = request.getParameter("course");
    String batch = request.getParameter("batch");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    
    Connection con;
    PreparedStatement pst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root","");
    pst = con.prepareStatement("update student set studentName=?, course=?, batch=?, address=?, phone=? where id =?");
    pst.setString(1, studentName);
    pst.setString(2, course);
    pst.setString(3, batch);
    pst.setString(4, address);
    pst.setString(5, phone);
    pst.setString(6, studentId);

    pst.executeUpdate();
    
    out.println("Record Updated");
%>