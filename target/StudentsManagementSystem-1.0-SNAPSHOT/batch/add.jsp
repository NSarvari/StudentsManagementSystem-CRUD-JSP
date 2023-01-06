<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String batchName = request.getParameter("bname");
    String year = request.getParameter("year");
    
    Connection con;
    PreparedStatement pst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root","");
    pst = con.prepareStatement("insert into batch(batchName,year)values(?,?)");
    pst.setString(1,batchName);
    pst.setString(2,year);
    pst.executeUpdate();
    
    out.println("Record Added!");
%>