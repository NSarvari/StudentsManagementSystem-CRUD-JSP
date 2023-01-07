<%-- 
    Document   : register
    Created on : Jan 7, 2023, 1:52:58 AM
    Author     : Nabila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="component/style.css" rel="stylesheet" type="text/css"/>
        <link href="component/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="component/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register</h1>
            <div class="row">
                <div class="col-sm-4">
                    <form method="POST" align="left" action="registerAdd.jsp">
                        <div align="left">
                            <label class="form-label">Full Name</label></br>
                            <input type="text" id="fullName" name="fullname"  placeholder="Full Name"  class="form-control" size="30px" required>
                        </div>
                        <div align="left">
                            <label class="form-label">Username</label></br>
                            <input type="text" id="username" name="username"  placeholder="Username"  class="form-control"  size="30px" required>
                        </div>
                        <div align="left">
                            <label class="form-label">Email</label></br>
                            <input type="email" id="email" name="email"  placeholder="Email"  class="form-control"  size="30px" required>
                        </div>
                        <div align="left">
                            <label class="form-label">Password</label></br>
                            <input type="password" id="password" name="password" placeholder="Password"  class="form-control"  size="30px" required>
                        </div>
                        <div align="left">
                            <label class="form-label">Confirm Password</label></br>
                            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confrim Password"  class="form-control"  size="30px" required>
                        </div>
                        </br>
                        <div align="left">
                            <input type="submit" value="Register" class="btn btn-info">
                            <input type="reset" id="reset" name="reset" value="reset" class="btn btn-warning">
                        </div>
                    </form>
                </div>
            </div>
    </body>
</html>
