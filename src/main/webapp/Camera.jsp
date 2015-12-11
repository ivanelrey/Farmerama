<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

    <head>
        <title>Snap</title>   
        <link rel="stylesheet" type = "text/css" href="cssStyles/CameraPagestyle.css">
        <link rel="icon" type="image" href="images/grass.jpg" />
    </head>

    <body >

        <script src="javaScripts/cameraScript.js"></script> 
        <script src="javaScripts/BlueSnap.js"></script> 
        <script src="javaScripts/TomatoSnap.js"></script>
        <script src="javaScripts/PetrolSnap.js"></script>
         <div>Snap Foto ! Then Press 1 or 2 times to Change Colour <br>
         <input type="submit" value="Go Blue" id="snapBlue" name="snapBlue" />
         <input type="submit" value="Go Tomato" id="snapTomato" name="snapTomato" />
         <input type="submit" value="Go Petrol" id="snapPetrol" name="snapPetrol" />
         </div>
        <center>
            <video id="video" class="myVideo" width="320" height="240" autoplay=""></video>
            <br>
            <p>
                <button id="snap"  class="snapButton snapButton-primary snapButton-primary:hover">Snap Photo</button>
                <img src="images/camera1.png" height="35" width="35"/>
            </p> 
            <br> 
            <canvas id="canvas" class="myCanvas" width="320" height="240"></canvas>
            <br>
            <form method="post" action="photoServlet">
               <p>
                <a id="download" onClick="downloadCanvas(this, 'canvas', 'Snap.png')" class="upButton upButton-primary upButtonH-primary">Download Photo</a> 
                <input type="text" id="skata" name="name" /> 
                <input type="hidden" name="userName" value=${sessionScope.name} >
                <a id="upload"  onClick="uploadCanvas('canvas')" class="upButton upButton-primary upButtonH-primary" >Upload to Album</a>
                <input type="submit" value="Confirm" class="upButton upButton-primary upButtonH-primary"/>
                <img src="images/upload1.png" height="35" width="35"/>
            </p>
            </form>
        </center> 
               

        <script>
            function downloadCanvas(link, canvas, filename) {
                link.href = document.getElementById(canvas).toDataURL();
                link.download = filename;
            }
            document.getElementById('download').addEventListener('click', function () {
                downloadCanvas(this, 'canvas', 'Snap.png');
            }, false);
          
            document.getElementById('upload').addEventListener('click', function () {
                uploadCanvas( this, 'canvas', 'Snap.png');
            }, false);
            
            function uploadCanvas(canvas) {
                var x = document.getElementById(canvas).toDataURL().toString();
                document.getElementById("skata").value = x;
                
           }

        </script>

        <script src="javaScripts/dateTime.js"></script> 
    </body>

</html>