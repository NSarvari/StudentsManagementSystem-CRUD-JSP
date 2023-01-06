<%-- 
    Document   : courseUpdate
    Created on : Jan 6, 2023, 1:32:40 AM
    Author     : Nabila
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../component/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../component/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Student</title>
    </head>
    <body>
        <h1>Student</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="studentData.jsp">
                    <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");

                        String id = request.getParameter("id");
                        pst = con.prepareStatement("select * from student where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();

                        while (rs.next()) {


                    %>
                    <div>
                        <label class="form-label">Student ID</label>
                        <input type="text" id="id" name="id" placeholder="Student ID" class="form-control" value="<%=rs.getString("id")%>" required>
                    </div>
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" value="<%=rs.getString("studentName")%>" required>
                    </div>
                    <div>
                        <label class="form-label">Course</label>
                        <select name="course" id="course" class="form-control">
                            <%                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
                                String query = "select * from course";
                                Statement st = con.createStatement();
                                rs = st.executeQuery(query);
                                while (rs.next()) {
                                    String idCourse = rs.getString("id");
                                    String courseName = rs.getString("courseName");
                            %>
                            <option value="<%=idCourse%>"><%=courseName%></option>
                            <% } %>
                        </select>
                    </div>
                    <div>
                        <label class="form-label">Batch</label>
                        <select name="batch" id="batch" class="form-control">
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
                                String query1 = "select * from batch";
                                Statement st1 = con.createStatement();
                                rs = st1.executeQuery(query1);
                                while (rs.next()) {
                                    String idBatch = rs.getString("id");
                                    String batchName = rs.getString("batchName");
                            %>
                            <option value="<%=idBatch%>"><%=batchName%></option>
                            <% } %>
                        </select>
                    </div>
                    <div>
                        <label class="form-label">Address</label>
                        <input type="text" id="address" name="address" placeholder="Address" class="form-control" required>
                    </div>
                    <div>
                        <label class="form-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" required>
                    </div>
                    </br>        
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-warning" value="reset">
                    </div>
                    <% }%>
                </form>
            </div>
            <div class="col-sm-8">

            </div>
        </div>
    </body>
</html>