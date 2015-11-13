<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
        <title>Welcome to Farmerama</title>
    </head>
    <body>
        <div id="profileImg"> <img id="profileImageStyle" align="top" alt="Profile Photo" src="images/profileImage.jpg" >
        </div>
        <div id="nav">
            <br><input class="myButton" type="submit" value="Upload from file" name="uploadFromFil" onclick="window.location = 'UploadFile.jsp';">
            <br><br><input class="myButton" type="submit" value="Take Snapshot" name="takeSnapshot" onclick="window.location = 'Camera.jsp';">
            <br><br><input class="myButton" type="submit" value="Settings" name="settings" >
            <br><br><input class="myButton" type="submit" value="Chat" name="chat" >
        </div>
    </body>
</html>
