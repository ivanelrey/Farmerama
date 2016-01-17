<%-- 
    Document   : ActualOffer
    Created on : Dec 21, 2015, 5:29:05 AM
    Author     : ntinos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.CreateOfferPage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Offer</title>
    </head>
    <body>
    <center>
        <%Object action = request.getParameter("action");
        Object title = request.getParameter("title");
        Object author = request.getParameter("author");
        Object descr = request.getParameter("descr");
          String actionStr = action.toString();%>
        <%CreateOfferPage offer = new CreateOfferPage();%>
        <%//if(actionStr.equals("Sell"))%>
        <%//{%>
            <h1><%=title%></h1>
            <h3>Description</h3>
            <p><%=descr%></p>
            <h3>Author</h3>
            <p><%=author%></p>
        <%//}%>
        <%//if(actionStr.equals("Buy"))%>
        <%//{%>
            <h1><%=title%></h1>
            <h3>Description</h3>
            <p><%=descr%></p>
            <h3>Author</h3>
            <p><%=author%></p>
        <%//}%>
        
    </center>
    </body>
</html>
