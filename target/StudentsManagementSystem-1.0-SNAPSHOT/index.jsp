<%-- 
    Document   : index
    Created on : Jan 4, 2023, 12:11:01 AM
    Author     : Nabila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="component/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="component/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Student Management System</title>
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
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="course/course.jsp">Course</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Batch</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Student</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Welcome to the Student Management System!</h1>
        <img src="images/students_login.jpg" alt=""/>
    </body>
</html>