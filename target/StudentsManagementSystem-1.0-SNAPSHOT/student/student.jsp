<%-- 
    Document   : course
    Created on : Jan 4, 2023, 12:27:45 AM
    Author     : Nabila
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection con;
    PreparedStatement pst;
    ResultSet rs;

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../component/style.css" rel="stylesheet" type="text/css"/>
        <link href="../component/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../component/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Student</title>
    </head>
    <body>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Student Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="../index.jsp">Home <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../course/course.jsp">Course</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../batch/batch.jsp">Batch</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Student Registration</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" required>
                    </div>
                    <div>
                        <label class="form-label">Course</label>
                        <select name="course" id="course" class="form-control">
                            <%                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
                                String query = "select * from course";
                                Statement st = con.createStatement();
                                rs = st.executeQuery(query);
                                while (rs.next()) {
                                    String id = rs.getString("id");
                                    String courseName = rs.getString("courseName");
                            %>
                            <option value="<%=id%>"><%=courseName%></option>
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
                                    String id = rs.getString("id");
                                    String batchName = rs.getString("batchName");
                            %>
                            <option value="<%=id%>"><%=batchName%></option>
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
                </form>
            </div>
            <div class="col-sm-8">
                <div class="panel-body">
                    <table id="tbl-course" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Batch</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        <tbody>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
                                String query2 = "select s.id,s.studentName,c.courseName,b.batchName,s.address,s.phone from student s JOIN course c ON s.course = c.id JOIN batch b ON s.batch=b.id";
                                Statement st2 = con.createStatement();
                                rs = st2.executeQuery(query2);
                                while (rs.next()) {
                                    String id = rs.getString("s.id");
                            %>
                            <tr>
                                <td><%=rs.getString("s.studentName")%></td>
                                <td><%=rs.getString("c.courseName")%></td>
                                <td><%=rs.getString("b.batchName")%></td>
                                <td><%=rs.getString("s.address")%></td>
                                <td><%=rs.getString("s.phone")%></td>
                                <td><a href="studentUpdate.jsp?id=<%=id %>" class="btn btn-outline-success">Edit</a></td>
                                <td><a href="studentDelete.jsp?id=<%=id %>" class="btn btn-outline-danger">Delete</a></td>
                            </tr>
                            <%}%>
                        </tbody>
                        </thead>
                    </table>
                </div> 
            </div>
        </div>
    </body>
</html>
