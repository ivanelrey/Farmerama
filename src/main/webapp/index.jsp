<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/indexStyle.css">
        <link rel="icon" type="image" href="images/grass.jpg" />
        <title>FARMERAMA</title>
         <script type = "text/javascript" >
    history.pushState(null, null, 'index.jsp');
    window.addEventListener('popstate', function(event) {
    history.pushState(null, null, 'index.jsp');
    });
    </script>
        <script type = "text/javascript">
          function displayNextImage() {
              x = (x === images.length - 1) ? 0 : x + 1;
              document.getElementById("img2").src = images[x];
          }

          function startTimer() {
              setInterval(displayNextImage, 2500);
          }

          var images = [], x = -1;
          images[0] = "images/bw7.jpg";
          images[1] = "images/bw1.jpg";
          images[2] = "images/bw2.jpg";
          images[3] = "images/bw3.jpg";
          images[4] = "images/bw4.jpg";
          images[5] = "images/bw5.jpg";
          images[6] = "images/bw6.jpg";
      </script>
    </head>
   <body  onload = "startTimer()" link=#142170>
        
        <div class="headerx"></div>
        
        <div class="header"></div>
        
        <div id="img1" class="header"><a href="index.jsp"><img src="images/farmeramaSLogo.jpg"/></a></div>
        
        <div class="bodyx">
            
            <div id="intro" class="bodyx">Farmerama helps you connect and share 
                with rural society.
            </div>
            <div id="links" class="bodyx">
                <a href="login.jsp" STYLE="text-decoration: none">Log In</a><br><br>
                <a href="signUp.jsp" STYLE="text-decoration: none">Create Account</a><br><br>
                <a href="informations.jsp" STYLE="text-decoration: none">Informations</a>
            </div>
           
        </div>
        
         <img id="img2" STYLE="margin-top: 300px; margin-left: 150px" src="images/bw.jpg"/>

        <div id="footer">Project Farmerama is being developed by 
            <a href="https://www.facebook.com/mixalis.kwnstantinou?fref=ts">Michalis</a>
            <a href="https://www.facebook.com/tolis.toliss?fref=ts">Tolis</a>
            <a href="https://www.facebook.com/nena.zanta?fref=ts">Nena</a>
            <a href="https://www.facebook.com/kostas.orfan?fref=ts">Kostas</a>
            <a href="https://www.facebook.com/giannhs.gomarteli">Ivane</a>
            <a href="">Grigoris</a>
        </div>
        
    </body>
</html>
