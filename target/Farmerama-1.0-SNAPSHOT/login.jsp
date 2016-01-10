<%-- 
    Document   : newjsp
    Created on : Nov 12, 2015, 5:05:19 PM
    Author     : Fuzzaki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | Farmerama</title>
        <link rel="icon" type="image" href="images/grass.jpg" />        
        <link rel="stylesheet" type = "text/css" href="cssStyles/loginstyle.css"><!--to css valto ston fakelo cssStyles kai to path tha einia "cssStyles/login.css-->
        <script type="text/javascript" src="javaScripts/capslock.js"></script>
    </head>
    <body link="white">


        <script>
            function initMap() {
                var infoWindow = new google.maps.InfoWindow({map: map});
                // Try HTML5 geolocation.
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        var pos = {
                            lat: position.coords.latitude,
                            lng: position.coords.longitude

                        };
                        document.getElementById('map').value = pos.lat;
                        document.getElementById('mapLng').value = pos.lng;

                    });
                }
            }
        </script>


        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCqqs4Hh8_XtuyJg938bdP5UdlTemthpYc&signed_in=true&callback=initMap"
                async defer>
        </script>



        <div class="headerx"></div>

        <div class="header"></div>

        <img STYLE="height: 100%; width:100%" src="images/tree1.jpg"/>

        <div id="img1" class="header">
            <a href="index.jsp"><img src="images/farmeramaSLogo.jpg"/></a>
        </div>

        <div class="header1" link="white">
            <a href="signUp.jsp" STYLE="text-decoration: none">SIGN UP</a>
        </div>

        <div class="header2" link="white">
            <a href="informations.jsp" STYLE="text-decoration: none">INFORMATIONS</a>
        </div>

        <div class="bodyx">

            <script language="javascript"></script>
            <br><br><br><br><br><br>
            <center>
                <form method="post" name="login" action="LoginServlet">
                    <h1>WELCOME TO FARMERAMA</h1>
                    
                    
                    <input type="hidden" name="map" id="map" value="" >
                    <input type="hidden" name="mapLng" id="mapLng" value="" >
                    <br>Username: <input name="userName" type="text" onKeydown="Javascript: if (event.keyCode == 13)
                                         "></br>
                    <br>Password: <input name="passWord" type="password" onKeydown="Javascript: if (event.keyCode == 13)
                                         "></br>
                    <br><input class="buts" type="submit" onclick="" value="Login" >
                    <br><br>
                    <input class="buts" type="Reset" value="Reset"></br><br>
                    <br>Not a member Yet? Sign Up NOW!!</br>           
                </form>  
            </center>
        </div>
    </body>
</html>