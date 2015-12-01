<%-- 
    Document   : otherHomePage
    Created on : 28 Νοε 2015, 2:35:33 πμ
    Author     : Gomesito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
       <link rel="icon" type="image/gif" href="images/animTitleMain.gif" />
        <title>Welcome to Farmerama</title>
    </head>
    <body>
        
        
        <div class="fixed"><input type="button" class="myButton" value="Album" name="Album"  onclick="window.location = 'photoAlbum.jsp';" /> <input class="myButton" type="submit" value="Log Out" name="btnSignOut" onclick="window.location = 'index.jsp';" /></div>
        <div id="profileImg"> <img id="profileImageStyle" align="top" alt="Profile Photo" src="images/profileImage.jpg" >
        </div>
        <div id="information">
            NAME: ${sessionScope.otherUser}
            <br>AGE: 
            <br>COUNTRY:
            <br>CITY:
        </div>
        //
        <input type="submit" value="Home Page" onclick="window.location='homePage.jsp';" />
        //
        <div id="nav">
        </div>
    </body>
</html>
