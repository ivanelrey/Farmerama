<%-- 
    Document   : messagesPage
    Created on : Dec 5, 2015, 6:13:32 PM
    Author     : MICHALIS
--%>

<%@page import="com.mycompany.Farmerama.getAllAccounts"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>messages</title>
    </head>
    <body>
        <h1>messages</h1>
        
        <div>
             <form action="contactWithOtherServlet" method="POST">
              <%  getAllAccounts accounts = new getAllAccounts(); 
              ArrayList<String> users = accounts.getAccounts();
                 if(users!=null) {  %>
               NAME:<input type="text" name="myname" value=${sessionScope.name} />
               <br>
               <select name="otheruser"  size="5">
                   <%for (int i = 0; i <users.size(); i++) {%>
                   <option ><%=users.get(i) %> </option>
                <% } } %> 
               </select>
            <input type="submit"  value="contact" /> 
            
            <center>
                <input type="text" name="nameOfOther" value=messages readonly="readonly" />
                
                <br>
                <textarea name="messages" rows="20" cols="30" readonly="readonly">
                </textarea>
            </center>
            
        </form>
        </div>
    </body>
</html>
