<%-- 
    Document   : results
    Created on : Oct 13, 2014, 8:26:31 PM
    Author     : bholewinski
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Actor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Here are your actors:</h1>
        <%
            Object obj = request.getAttribute("actors");
            
            List<Actor> actors = new ArrayList<>();
            
            if(obj != null) {
                actors = (List<Actor>)obj;
            }
            
            for(Actor a: actors) {
                out.println("<p>" + a.getFirstName() + " " + a.getLastName() 
                        + "</p>");
            }
            
        %>
    </body>
</html>
