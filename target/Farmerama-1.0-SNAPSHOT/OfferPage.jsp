<%-- 
    Document   : OfferPage
    Created on : Dec 13, 2015, 10:24:11 PM
    Author     : ntinos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Offers</title>
    </head>
    <body>
    <center>
        <h1>Tell us what you seek!</h1>
        <form method="post" action="OfferPageServlet">
            Want to<select name="action">
                <option value="Sell">Sell</option>
                <option value="Buy">Buy</option>
            </select>
            <input type="submit" value="Submit"/>
            <input type="button" value="Create new Offer" onclick="window.location='CreateOfferPage.jsp'"/>
        </form>
    </center>
    </body>
</html>
