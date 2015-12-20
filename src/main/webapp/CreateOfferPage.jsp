<%-- 
    Document   : CreatePage
    Created on : Dec 13, 2015, 9:54:49 PM
    Author     : ntinos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create your Offer</title>
    </head>
    <body>
        <center>
            <h1>Create here your new Offer</h1>
            <form method="post" action="CreateOfferPage">
                <input placeholder="Title" type="text" name="title" required/>
                <br/>
                <textarea placeholder="Description" style="resize:none" name="descr" rows="4" cols="50"></textarea>
                <br/>
                Select action<br/>
                Sell<input type="radio" name="action" value="Sell"/>
                Buy<input type="radio" name="action" value="Buy"/>
                <br/>
                Select section<br/>
                <select name="section">
                    <option value="vegetables" id="pointer">Vegetables</option>
                    <option value="fruits" id="pointer">Fruits</option>
                    <option value="legumes-corn" id="pointer">Legumes and Corn</option>
                    <option value="beet" id="pointer">Beet</option>
                </select>
                <input type="submit" value="Submit"/>
            </form>
        </center>
    </body>
</html>
