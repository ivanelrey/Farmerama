<%-- 
  

ument   : signUp
    Created on : Nov 15, 2015, 8:20:02 PM
    Author     : ntinos , Nena
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <script type="text/javascript">
            function minLengthCheck() {
              
                if (((form1.number.value).length < 10) && (form1.number.value).length > 0)
                {
                    alert("Phone number should be minimum 10 digits and maximum 14");
                    form1.number.focus();
                    return false;
                }

                return true;
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/signUpStyle.css">
        <title>Sign-Up | Farmerama</title>
        <link rel="icon" type="image" href="images/grass.jpg" />
        <script src="javaScripts/signUpScript.js" language="javascript"></script>
        <style> 
            input[type=number]::-webkit-outer-spin-button,
            input[type=number]::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            input[type=number] {
                -moz-appearance:textfield;
            }  
        </style>
    </head>
    <body link="white">
        <script>
            function maxLengthCheck(object) {

                if (object.value.length > object.maxLength)
                    object.value = object.value.slice(0, object.maxLength);
            }
        </script>
       
        <div class="headerx"></div>

        <div class="header"></div>

        <div id="img1" class="header">
            <a href="index.jsp"><img src="images/farmeramaSLogo.jpg"/></a>
        </div>

        <div class="header1">
            <a href="login.jsp" STYLE="text-decoration: none">LOGIN</a>
        </div>

        <div class="header2">
            <a href="informations.jsp" STYLE="text-decoration: none">INFORMATIONS</a>
        </div>

        <div class="bodyx">
            <center>
                <form name="form1" action="SignUpServlet" method="post" onSubmit="return validate(this)" >
                    <h1>SIGN UP</h1>
                    <div>It's free!!</div><br>
                    <input placeholder="Username" type="text" name="un" required/>
                    <br/>
                    <input placeholder="Password" type="password" name="pw" required/>
                    <br/>
                    <input placeholder="Re-enter Password" type="password" name="pw1" required/>
                    <br/>
                    <input placeholder="Mobile Phone Number" id="num" type="number" maxlength = "14" oninput="maxLengthCheck(this)" name="number" required/>
                    <br/>
                    <input placeholder="Email" type="email" name="eMail" required/>
                    <br/>
                    Choose genre 
                    <br/>
                    Male<input type="radio" name="sex" value="Male" id="pointer"/>
                    Female<input type="radio" name="sex" value="Female" id="pointer"/>
                    <br><br>Choose Section <select id="pointer" name="section">
                        <option value="vegetables" id="pointer">Vegetables</option>
                        <option value="fruits" id="pointer">Fruits</option>
                        <option value="legumes-corn" id="pointer">Legumes and Corn</option>
                        <option value="beet" id="pointer">Beet</option>
                    </select>
                    <br><br><input id="register" type="submit" onclick="return minLengthCheck();" value="Register"/>
                    <br><br><input class="infoImg" type="image" src="images/info_icon.png" width="35" height="35" onclick="alert
                                    ('Username:\n\
                    -First character NOT number.\n\
                    -Between 6 and 14 characters.\n\
                    -NOT contain special characters(!,#,$,%,^,&,*,+).\n\
                  Password:\n\
                    -Must contain at least one LOWERCASE character.\n\
                    -Must contain at least one UPPERCASE character.\n\
                    -Between 6 and 14 characters.')">
                    <br><br><br>
                </form>

                <p id="msg"></p>
            </center>

            <div id="intro" class="bodyx">Connect with your farm-friends and the world around you on Farmerama.
            </div>
            <div id="imgs" class="bodyx">
                <img src="images/signUpPhotos.jpg"/><br>
                <img src="images/signUpNew.jpg"/><br>
                <img src="images/signUpMore.jpg"/>
            </div>
            <div id="intro2" class="bodyx">
                See photos and updates<br><br><br>
                Share what's new<br><br><br>
                Find more
            </div>
        </div>

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
