<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- request implicit object in JSP  --%>
<%
String uname = request.getParameter("name");
String upass = request.getParameter("pass");
PrintWriter out1=response.getWriter();

if (uname != null && upass != null) {
    if (upass.equals("abc123")) {
        out.print("Welcome to JSP " + uname);
    } else {
        out1.print("Incorrect password. Please enter the correct password.");
        // Include the index.html page again
        request.getRequestDispatcher("index.html").include(request, response);
    }
} else {
    out.print("Please provide both username and password.");
}
%>
</body>
</html>