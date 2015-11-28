<%-- 
    Document   : signUp
    Created on : Nov 15, 2015, 8:20:02 PM
    Author     : ntinos
--%>
<%@page import="com.mycompany.Farmerama.SignUpVal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/signUpStyle.css">
        <title>Register | Farmerama</title>
        <link rel="icon" type="image/gif" href="images/animTitleMain.gif" />
        <script src="javaScripts/signUpScript.js" language="javascript"></script>
    </head>
    <body>
        <center>
            <form name="form1" action="SignUpServlet" method="post" onSubmit="return validate(this);">
                <h2>Farmerama</h2>
                Username <input type="text" name="un" required/>
                <br/>
                Password <input type="password" name="pw" required/>
                <br/>
                Confirm Password <input type="password" name="pw1" required/>
                <br/>
                Email <input type="email" name="eMail" required/>
                <br/>
                Choose genre 
                <br/>
                Male<input type="radio" name="sex" value="Male"/>Female<input type="radio" name="sex" value="Female"/>
                Choose Section <select name="section">
                    <option value="vegetables">Vegetables</option>
                    <option value="fruits">Fruits</option>
                    <option value="legumes-corn">Legumes and Corn</option>
                    <option value="beet">Beet</option>
                </select>
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
