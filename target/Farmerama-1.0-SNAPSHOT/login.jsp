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
        <link rel="icon" type="image/gif" href="images/animTitleMain.gif" />
        <link rel="stylesheet" type = "text/css" href="cssStyles/loginstyle.css"><!--to css valto ston fakelo cssStyles kai to path tha einia "cssStyles/login.css-->
    </head>
    <body>
        
    <script language="javascript">
    <!--//    
    function pasuser(form) {
    if (form.id.value==="admin") { 
    if (form.pass.value==="admin") {              
    location="homePage.jsp"; 
    } else {
    alert("Invalid Password");
    }
    } else {  alert("Invalid UserID");
    }
    }    
    //-->
    </script>
    <br><br><br><br><br><br>
    <center> <h1><i><b>Welcome To Farmerama</b></i></h1>
    <form name="login" action="#">
        <br><input name="id" type="text" onKeydown="Javascript: if (event.keyCode==13) pasuser(this.form);"></br>
        <br><input name="pass" type="password" onKeydown="Javascript: if (event.keyCode==13) pasuser(this.form);"></br>
        <br><input class="lgnbut" type="button" value="Login" onClick="pasuser(this.form)">
        <input class="lgnbut" type="Reset"></br>
        <br><a href="recovery.jsp">Forgotten Your Password?</a></br>
        <br><a href="signUp.jsp">Not a member Yet? Sign Up Now</a></br>           
    </form>  
    </center>
    </body>
</html>