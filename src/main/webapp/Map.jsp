<%-- 
    Document   : Map
    Created on : 15 Δεκ 2015, 10:57:16 μμ
    Author     : Tolis MacNamli
--%>

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
    <div id="map"></div>
    <script src="javaScripts/MapScript.js"></script>
      
    
    
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCqqs4Hh8_XtuyJg938bdP5UdlTemthpYc&signed_in=true&callback=initMap"
        async defer>
    </script>
  </body>
</html>
