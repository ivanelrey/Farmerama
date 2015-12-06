<%-- 
    Document   : homePage
    Created on : Nov 21, 2015, 7:14:26 PM
    Author     : MICHALIS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.getAllAccounts"%>
<%@page import="com.mycompany.Farmerama.LoginCheckUserToDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
        <link rel="icon" type="image" href="images/grass.jpg" />
        <title>Welcome to Farmerama</title>
    </head>
    <body>
        
        <%  LoginCheckUserToDb ch = new LoginCheckUserToDb();       
            String user = ch.userName;
        %>
        
        
        <div class="fixed"><input type="button" class="myButton" value="Album" name="Album"  onclick="window.location = 'photoAlbum.jsp';" />
            <form method="post" action="EndSessionServlet">
                <input class="myButton" type="submit" value="Log Out" />
            </form>
        </div>
        
        <div id="profileImg"> <img id="profileImageStyle" align="top" alt="Profile Photo" src="images/profileImage.jpg" >
        </div>
        <div id="information">
            NAME: ${sessionScope.name}
            <br>AGE: 
            <br>COUNTRY:
            <br>CITY:
        </div>
        
        <center>
            <form action="searchServlet" method="POST">
                <input type="text" name="search" placeholder="Search Friends" />
                <input type="submit" value="search" />
            </form>
        <form action="seeOtherServlet" method="POST">
              <%  ArrayList<String> sessionVal = (ArrayList<String>) session.getAttribute("allFoundUsers");
                 if(sessionVal!=null) {  %>
               <select name="otheruser"  size="5">
                   <%for (int i = 0; i <sessionVal.size(); i++) {%>
                   
                   
                   <option ><%=sessionVal.get(i) %> </option>
                <% } } %> 
               </select>
            <input type="submit"  value="find friend in random" /> 
        </form>
        </center>
        <div id="nav">
            <br><br>
            <br><br><input class="myButton" type="submit" value="messages" name="settings" onclick="window.location = 'messagesPage.jsp';" >
            <br><br><input class="myButton" type="submit" value="Chat" name="chat" onclick="window.location = 'chatPage.jsp';" >
            <br><br><span style="display: block !important; width: 180px; text-align: center; font-family: sans-serif; font-size: 12px;">
                <a href="forecast.jsp" title="Σέρρες, Ελλάδα Weather Forecast" target="_blank">
                <img src="http://weathersticker.wunderground.com/weathersticker/cgi-bin/banner/ban/wxBanner?bannertype=wu_bluestripes_metric&airportcode=LGTS&ForcedCity=Σέρρες&ForcedState=Ελλάδα&wmo=16606&language=GR" alt="Find more about Weather in Σέρρες, GR" width="160" /></a><br></span>
        </div>
    </body>
</html>