<%-- 
    Document   : photoAlbum
    Created on : 21 Νοε 2015, 6:23:45 μμ
    Author     : Tolis MacNamli
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.PhotoAlbum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image" href="images/grass.jpg" />
        <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
        <title>Photos</title>
    </head>
    <body>

        <form method="POST" action="PhotoAlbumServlet">

            <input type="text" name="photo" value=${sessionScope.name} >
            <input type="submit" value="Show images" />

        </form>


        <table >
            <%ArrayList<String> photos = (ArrayList<String>) session.getAttribute("photo");
                if (photos != null) {
            %>
            
            <tr>  
                <% for (int i = 0; i < photos.size(); i++) {%>
                <td><img src=<%=photos.get(i)%> ></td>
                <%if (i % 2 == 1) {  %>
            </tr>
            
            <%}%>  
               
                <%}}%>
        </table>

        <div class="fixed"> <input class="myButton" type="submit" value="Home Page" name="hp" onclick="window.location = 'homePage.jsp';">
        </div>


    </body>
</html>
