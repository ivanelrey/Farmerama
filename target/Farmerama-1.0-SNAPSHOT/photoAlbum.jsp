<%-- 
    Document   : photoAlbum
    Created on : 21 Νοε 2015, 6:23:45 μμ
    Author     : Tolis MacNamli
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.PhotoAlbum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.Farmerama.changeProfileImage"%>
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
            <%  
                ArrayList<String> photos = (ArrayList<String>) session.getAttribute("photo");
                if (photos != null) {
            %>
            
            <tr>  
                <% for (int i = 0; i < photos.size(); i++) {%>
                <td><img src=<%=photos.get(i)%> > 
            <input style="position:relative; left: -32.5%;" type="submit" value="Change profile photo" onclick="uploadCanvasSec(<%=i%>)"/></td>
                <%if (i % 2 == 1) {  %>
            </tr>
            
            <%}%>  
               
                <%}}%>
        </table>
        <form action="changeProfileImageServlet" method="POST">
            <input type="hidden" id="profilepos" name="newprofilepos"  >
        <input type="hidden" name="photo" value=${sessionScope.name} >
        <input style="display: none;" id="callServlet" type="submit" value="" />
        </form>
        
       
        
        <div class="fixed"> <input class="myButton" type="submit" value="Home Page" name="hp" onclick="window.location = 'homePage.jsp';">
            <br> <input type="button" class="myButton" value="Upload From File" name="Upload" onclick="window.location='UploadFile.jsp';" />
            <br>  <input class="myButton" type="submit" value="Take Snapshot" name="takeSnapshot" onclick="window.location = 'Camera.jsp';">
        </div>
        <script>
            function uploadCanvasSec(canvas) {
                var x = canvas; //document.getElementById(canvas).toDataURL().toString();
                document.getElementById('profilepos').value=x;
                
                document.getElementById('callServlet').click();
                }
        </script>
    </body>
</html>
