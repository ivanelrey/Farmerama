<%-- 
    Document   : Map
    Created on : 15 Δεκ 2015, 10:57:16 μμ
    Author     : Tolis MacNamli
--%>

<%@page import="com.mycompany.Farmerama.Locations"%>
<%@page import="static com.mycompany.Farmerama.Locations.Lat"%>
<%@page import="static com.mycompany.Farmerama.Locations.Lng"%>
<%@page import="static com.mycompany.Farmerama.Locations.userName"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Farmerama Maps</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style>
    
  </head>
  <body>
    
    
      
    <input type="hidden" id="myLat" value=${sessionScope.Lat} />
    <input type="hidden" id="myLng" value=${sessionScope.Lng} />
    
    <%  Locations locations = new Locations();
        ArrayList<String> latList = Lat;
        ArrayList<String> lngList = Lng;   
        ArrayList<String> userNameList = userName;
                   %>
                   
               <select style="display:none;" id="listOfNames" size="2">
                   <%for (int i = 0 ; i <userNameList.size(); i++) {%>
                  <option ><%=userNameList.get(i) %> </option>
                  <% }  %> 
               </select>
               <select  style="display:none;" id="listOfLat" size="2">
                   <%for (int i = 0 ; i <latList.size(); i++) {%>
                  <option ><%=latList.get(i) %> </option>
                  <% }  %> 
               </select>
               <select style="display:none;" id="listOfLng" size="2">
                   <%for (int i = 0 ; i <lngList.size(); i++) {%>
                  <option ><%=lngList.get(i) %> </option>
                  <% }  %> 
               </select>
    <div id="map"></div>
    <form name="otherName" action="seeOtherServlet" method="POST">
        <input type="hidden" name="otheruser" value="" id="otheruser"/>
        <input type="submit" value="" />
    </form>
    <script src="javaScripts/MapScript.js"></script>
    
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCqqs4Hh8_XtuyJg938bdP5UdlTemthpYc&signed_in=true&callback=initMap"
        async defer>
    </script>
  </body>
</html>
