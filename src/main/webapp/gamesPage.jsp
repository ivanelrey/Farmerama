<%-- 
    Document   : gamesPage
    Created on : 11 Ιαν 2016, 10:47:19 μμ
    Author     : Gomesito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmerama Games</title>
        <link rel="stylesheet" type="text/css" href="cssStyles/gamesPageStyle.css">
    </head>
    <body>
        <h1>Let's play a game</h1>
        <input id="banana" type="submit" value="Banana Game"  onclick="window.location = 'gamesPages/bananaGame.jsp';" >
        <input id="bow" type="submit" value="Bow Master Game"   onclick="window.location = 'gamesPages/bowGame.jsp';" >
        <input id="bubble" type="submit" value="Bubble Trouble Game"   onclick="window.location = 'gamesPages/bubbleTroubleGame.jsp';" >
        <input id="zombie" type="submit" value="Zombie Game"   onclick="window.location = 'gamesPages/zombieGame.jsp';" >
    </body>
</html>
