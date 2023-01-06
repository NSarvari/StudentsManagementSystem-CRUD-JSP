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
        <link href="../component/style.css" rel="stylesheet" type="text/css"/>
        <link href="../component/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../component/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Batch</title>
    </head>
    <body>
        <h1>Batch Update</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="batchData.jsp">
                    <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-management-system-java", "root", "");

                        String id = request.getParameter("id");
                        pst = con.prepareStatement("select * from batch where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();

                        while (rs.next()) {


                    %>
                    <div>
                        <label class="form-label">Batch ID</label>
                        <input type="text" id="id" name="id" placeholder="Batch ID" class="form-control" value="<%=rs.getString("id")%>" required>
                    </div>
                    <div>
                        <label class="form-label">Batch Name</label>
                        <input type="text" id="bname" name="bname" placeholder="Batch Name" class="form-control" value="<%=rs.getString("batchName")%>" required>
                    </div>
                    <div>
                        <label class="form-label">Year</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" value="<%=rs.getString("year")%>" required>
                    </div>
                    </br>       
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-warning" value="reset">
                        <a href="batch.jsp" class="btn btn-outline-secondary float-end">Show All Batches</a>
                    </div>
                    <% }%>
                </form>
            </div>
        </div>
    </body>
</html>