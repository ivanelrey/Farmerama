<%-- 
    Document   : photoAlbum
    Created on : 21 Νοε 2015, 6:23:45 μμ
    Author     : Tolis MacNamli
--%>

<%@page import="com.mycompany.Farmerama.PhotoAlbum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/gif" href="images/animTitleMain.gif" />
          <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
        <title>Photos</title>
    </head>
    <body>
        
        <form action="photoServlet" method="POST">
        
        <input type="hidden" name="userName" value= ${sessionScope.name} >
        <img src=${sessionScope.imageUrl} >

        <input type="submit" value="btn" />
        </form>
        
        
        
       <!-- <%
            PhotoAlbum pa1 = new PhotoAlbum();
            String giannis = pa1.getUserName();
            
        %>
        
        <img src="<%=giannis%>">
        -->
        <div class="fixed"> <input class="myButton" type="submit" value="Home Page" name="hp" onclick="window.location = 'homePage.jsp';">
       </div>
        
        
    </body>
</html>
