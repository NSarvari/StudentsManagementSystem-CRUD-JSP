<%-- 
    Document   : loginv
    Created on : Jan 4, 2023, 12:04:29 AM
    Author     : Nabila
--%>

<%
    String username = request.getParameter("uname");
    String password = request.getParameter("password");
    
    if (username.equals("Nabi") && password.equals("123")) {
        String redirect = "index.jsp";
        response.sendRedirect(redirect);
    } else {
        out.println("Username or Password do not match");
    }
%>