<%-- 
    Document   : messagesPage
    Created on : Dec 5, 2015, 6:13:32 PM
    Author     : MICHALIS
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.mycompany.Farmerama.contactWithOther"%>
<%@page import="com.mycompany.Farmerama.getAllAccounts"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type = "text/css" href="cssStyles/messagesPageStyle.css">
        <title>messages</title>
    </head>
    <body>
        <div style="position: fixed;">
            <h1>messages</h1>


            <form action="contactWithOtherServlet" method="POST">
                <%  getAllAccounts accounts = new getAllAccounts();
                  ArrayList<String> users = accounts.getAccounts();
                  if (users != null) {  %>
                NAME:<input type="text" name="myname" value=${sessionScope.name} />
                <br>
                <select name="otheruser"  size="5">
                    <%for (int i = 0; i < users.size(); i++) {%>
                    <option ><%=users.get(i)%> </option>
                    <% }
                    } %> 
                </select>
                <input type="submit"  value="contact" /> 
            </form>



            
                <br>
                <% String clname = (String) session.getAttribute("collectionName");
                    if (clname != null) {
                        contactWithOther conversation = new contactWithOther(clname);
                        ArrayList<String> names = conversation.getNames();
                        ArrayList<String> messages = conversation.getMessages();
                        if (names != null) {
                %>
                </div>
                <div id="textar">
                    <input type="text" name="nameOfOther" value="chatting with ${sessionScope.otherUserName}" readonly="readonly" />
                    <textarea   name="messages" rows="20" cols="30" readonly="readonly">
                        <% for (int i = 0; i < names.size(); i++) {%>
                        <%=names.get(i)%> : <%=messages.get(i)%>
                        <% } %>
                    </textarea>

                    <%  }
                    }%>
                    <br>
                    <form action="messagesServlet" method="POST">
                    <input type="hidden" name="collectionName" value=${sessionScope.collectionName} />
                    <input type="hidden" name="myName" value=${sessionScope.name} />
                    <input type="text" name="message" value="" />
                    <input type="submit" value="send" />
                    </form>
            
        </div>


    </body>
</html>
