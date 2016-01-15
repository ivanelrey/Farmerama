<%-- 
    Document   : homePage
    Created on : Nov 21, 2015, 7:14:26 PM
    Author     : MICHALIS , Nena
--%>

<%@page import="java.util.HashMap"%>
<%@page import="static com.mycompany.Farmerama.secondsServlet.a"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.getAllAccounts"%>
<%@page import="com.mycompany.Farmerama.LoginCheckUserToDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
        <link rel="stylesheet" type="text/css" href="cssStyles/tablecsshomepage.css">
        <link rel="icon" type="image" href="images/grass.jpg" />
        
        <title>Welcome to Farmerama</title>
    </head>
    <body link="white">

        <div class="headerx"></div>

        <div class="header"></div>

        <div class="bottomx"></div>

        <div class="bottom"></div>

        <div id="img1" class="header">
            <a href="index.jsp"><img src="images/farmeramaSLogo.jpg"/></a>
        </div>

        <div class="bottom" style="left: 20px">
            <input type="button" class="myButton" value="Album" name="Album"  onclick="window.location = 'photoAlbum.jsp';" />
        </div>

        <div class="bottom" style="left: 250px">
            <input class="myButton" type="submit" value="Quick Snap" name="uploadFromFil" onclick="window.location = 'Camera.jsp';">
        </div>

        <div class="bottom" style="left: 540px">
            <input class="myButton" type="submit" value="Messages" name="settings" onclick="window.location = 'messagesPage.jsp';" >
        </div>

        <div class="bottom" style="left: 800px">
            <input class="myButton" type="submit" value="See Users on Map" name="map" onclick="window.location = 'Map.jsp';" >
        </div>

        <form action="searchServlet" method="POST">
            <input type="text"  STYLE="left: 26%; height: 40px; font-size: 100%; top: 3%;position: fixed;z-index: 7" name="search" placeholder="Search Friends" />
            <a href='#' class="Bubble" title="Search"><div class="myButtonSearch"><INPUT type="submit" value=""></div></a>
        </form>

        <form action="seeOtherServlet" method="POST" style="left: 48%; top: 4%;position: fixed;z-index: 7">
            <%   ArrayList<String> sessionVal = (ArrayList<String>) session.getAttribute("allFoundUsers");
                HashMap<String, String> sessionVal1 = (HashMap<String, String>) session.getAttribute("allFoundUsersByNumber");
                if (sessionVal != null) {%>
            <select name="otheruser"  size="2">
                <option ><%=sessionVal1.values()%> </option>

                <%for (int i = 0; i < sessionVal.size(); i++) {%>
                <option ><%=sessionVal.get(i)%> </option>

                <% }
                    }%> 


            </select>
            <a href='#' class="Bubble" title="Check Profile">
                <div class="myButtonCheck">
                    <INPUT type="submit" value="">
                </div>
            </a>
        </form>

        <div class="bodyx">
            <div class="fixed">
                <form method="post" action="EndSessionServlet">
                    <input class="Logout" type="submit" value="LOGOUT" />
                </form>
            </div>

            <div id="profileImg"> <img id="profileImageStyle" align="top" alt="Profile Photo" src=${sessionScope.profileImage} >
            </div>
            <div id="information" >
                <div id="Showname">Name: ${sessionScope.name}</div><br><br> 
                <input id="chatbtn" class="myButton" type="submit" value="Chat" name="chat" onclick="window.location = 'chatPage.jsp';" >
                <input id="gamebtn" class="myButton" type="submit" value="Games"  onclick="window.location = 'gamesPage.jsp';" >

            </div>

            <input id="findfriendbtn" type="submit" value="Find friends" onclick="showrandompeople()"/>    
            <input id="snapbtn" type="submit" value="See snaps" onclick="seesnap()"/>
            <input id="farmnewsbtn" type="submit" value="Farm news" onclick="farmnews()"/>
            <input id="chartbtn" type="submit" value="Watch currency" onclick="chart()"/>

            <div id="box" >

                <div id="randompeople" style="display: none;">
                    
                        <%  getAllAccounts accounts = new getAllAccounts();
                        ArrayList<String> allusers = accounts.getAccounts();
                        ArrayList<String> photos = accounts.getAccountsPhotos();
                        if (allusers != null) {  %>
                        
                        
                        <table>                            
                                <% for (int i = 0; i < allusers.size(); i++) {%>
                                <tr>
                                <td>
                                <img style="width:100px;" src="<%=photos.get(i)%>">
                                <%=allusers.get(i)%> 
                                </td>
                                </tr><br>
                        </table> 
                    <%}}%>
                </div>

                <div id="snapid" style="display: none;" >
                    <div id="snapid2" style="">  </br>
                        <img id="snapimg" src="<%=a%>"/>
                        <% a = null;%>
                    </div></br>
                    <div >  <img src="<%=a%>"/></div>
                    <!--<script> setTimeout('window.location.reload();', 8000); </script>-->
                </div>
                    
                <div id="farmnews" style="display: block; width: 100%; height: 100%;">

                    <script type="text/javascript">document.write('\x3Cscript type="text/javascript" src="' + ('https:' === document.location.protocol ? 'https://' : 'http://') + 'feed.mikle.com/js/rssmikle.js">\x3C/script>');</script>
                    <script type="text/javascript">(function () {
                            var params = {rssmikle_url: "http://greece.greekreporter.com/category/greek-news/business-2/agriculture/", rssmikle_frame_width: "100%", rssmikle_frame_height: "100%", frame_height_by_article: "3", rssmikle_target: "_blank", rssmikle_font: "Arial, Helvetica, sans-serif", rssmikle_font_size: "12", rssmikle_border: "off", responsive: "off", rssmikle_css_url: "", text_align: "left", text_align2: "left", corner: "off", scrollbar: "on", autoscroll: "on", scrolldirection: "up", scrollstep: "3", mcspeed: "20", sort: "Off", rssmikle_title: "on", rssmikle_title_sentence: "", rssmikle_title_link: "", rssmikle_title_bgcolor: "#0066FF", rssmikle_title_color: "#FFFFFF", rssmikle_title_bgimage: "", rssmikle_item_bgcolor: "#FFFFFF", rssmikle_item_bgimage: "", rssmikle_item_title_length: "55", rssmikle_item_title_color: "#0066FF", rssmikle_item_border_bottom: "on", rssmikle_item_description: "on", item_link: "off", rssmikle_item_description_length: "150", rssmikle_item_description_color: "#666666", rssmikle_item_date: "gl1", rssmikle_timezone: "Etc/GMT", datetime_format: "%b %e, %Y %l:%M %p", item_description_style: "text+tn", item_thumbnail: "full", item_thumbnail_selection: "auto", article_num: "15", rssmikle_item_podcast: "off", keyword_inc: "", keyword_exc: ""};
                            feedwind_show_widget_iframe(params);
                        })();</script>
                </div>

                <div id="chart">
                    <iframe id="chartframe" frameborder="2" scrolling="no" height="100%" width="100%" allowtransparency="true" marginwidth="0" marginheight="0" src=""></iframe>     
                    <br/>
                </div>

            </div>



            
          
            <div id="nav">
                <br><span style="display: block !important; width: 180px; text-align: center; font-family: sans-serif; font-size: 12px;">
                    <a href="forecast.jsp" title="Σέρρες, Ελλάδα Weather Forecast" target="_blank">
                        <img src="http://weathersticker.wunderground.com/weathersticker/cgi-bin/banner/ban/wxBanner?bannertype=wu_bluestripes_metric&airportcode=LGTS&ForcedCity=Σέρρες&ForcedState=Ελλάδα&wmo=16606&language=GR" alt="Find more about Weather in Σέρρες, GR" width="160" /></a><br></span>
            </div>
        </div>
            
        <script src="javaScripts/homespageboxscript.js"></script>
    </body>
</html>