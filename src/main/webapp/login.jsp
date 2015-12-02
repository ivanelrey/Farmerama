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
    </head>
    <body>
        
    <script language="javascript">
       
    
  
    </script>
    <br><br><br><br><br><br>
    <center> <h1><b>Welcome To Farmerama</b></h1>
    <form method="post" name="login" action="LoginServlet">
        <br>Username: <input name="userName" type="text" onKeydown="Javascript: if (event.keyCode==13) "></br>
        <br>Password: <input name="passWord" type="password" onKeydown="Javascript: if (event.keyCode==13) "></br>
        <br><input class="lgnbut" type="submit" value="Login" >
        <br><br>
        <input class="lgnbut" type="Reset" value="Reset"></br>
        <br><a href="recovery.jsp">Forgotten Your Password?</a></br>
        <br><a href="signUp.jsp">Not a member Yet? Sign Up Now</a></br>           
    </form>  
    </center>
    </body>
</html>