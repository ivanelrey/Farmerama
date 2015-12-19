<%-- 
    Document   : ViewOffers
    Created on : Dec 14, 2015, 11:10:54 PM
    Author     : ntinos
--%>

<%@page import="com.mongodb.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.CreateOfferPage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Offers</title>
    </head>
    <body>
    <center>
        <%CreateOfferPage offer = new CreateOfferPage();
        Object action = request.getAttribute("action");
        String actionStr = action.toString();
        if(actionStr.equals("Sell"))
        {%>
        <%ArrayList<ArrayList<String>> result = new ArrayList<ArrayList<String>>();
          result = offer.getAllSellOffers();%>
        <table border="0">
            <%for(int i=0; i<result.size(); i++){%>
            <tr>
                <%for(int y=0; y<2; y++){%>
            <a href="ActualOffer.jsp"><%=result.get(i).get(y)%></a>
                <%}%>
            </tr>
            <%}%>
        <%}%>
        <%if(actionStr.equals("Buy"))
        {%>
        <%ArrayList<ArrayList<String>> result = new ArrayList<ArrayList<String>>();
          result = offer.getAllBuyOffers();%>
        <table border="0">
            <%for(int i=0; i<result.size(); i++){%>
            <tr>
                <%for(int y=0; y<2; y++){%>
            <a href="ActualOffer.jsp"><%=result.get(i).get(y)%></a>
                <%}%>
            </tr>
            <%}%>
        <%}%>
    </center>
    </body>
</html>
