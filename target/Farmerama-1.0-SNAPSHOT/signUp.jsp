<%-- 
    Document   : signUp
    Created on : Nov 15, 2015, 8:20:02 PM
    Author     : ntinos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/signUpStyle.css">
        <title>Register | Farmerama</title>
        <link rel="icon" type="image/gif" href="images/animTitleMain.gif" />
        <script src="signUpScript.js"></script>
    </head>
    <body>
        <center>
            <form name="form1" action="index.jsp" onsubmit="return validate()">
                <h2>Farmerama</h2>
                Username <input type="text" name="un" required/>
                <br/>
                Password <input type="password" name="pw" required/>
                <br/>
                <input type="submit" value="Register" />
                <input class="infoImg" type="image" src="images/info_icon.png" width="35" height="35" onclick="alert
                ('Username:\n\
                    -First character NOT number.\n\
                    -Between 6 and 14 characters.\n\
                    -NOT contain special characters(!,#,$,%,^,&,*,+).\n\
Password:\n\
                    -Must contain at least one LOWERCASE character.\n\
                    -Must contain at least one UPPERCASE character.\n\
                    -Between 6 and 14 characters.')">
            </form>
            
            <p id="msg"></p>
        </center>
    </body>
</html>
