<%-- 
    Document   : course
    Created on : Jan 4, 2023, 12:27:45 AM
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
        <title>Batch</title>
    </head>
    <body>
        <h1>Batch</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Batch Name</label>
                        <input type="text" id="bname" name="bname" placeholder="Batch Name" class="form-control" required>
                    </div>
                    <div>
                        <label class="form-label">Year</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" required>
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
                                <th>Batch Name</th>
                                <th>Year</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        <tbody>
                            <%
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");
                                String query = "select * from batch";
                                Statement st = con.createStatement();
                                rs = st.executeQuery(query);
                                while(rs.next())
                                {
                                    String id = rs.getString("id");
                                    
                                

                            %>
                            <tr>
                                <td><%=rs.getString("batchName") %></td>
                                <td><%=rs.getString("year") %></td>
                                <td><a href="batchUpdate.jsp?id=<%=id %>">Edit</a></td>
                                <td><a href="batchDelete.jsp?id=<%=id %>">Delete</a></td>
                            </tr>
                            <% } %>
                        </tbody>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
