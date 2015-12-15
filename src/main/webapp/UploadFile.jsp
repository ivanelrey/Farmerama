<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%-- 
    Document   : UploadFile.jsp
    Created on : Nov 11, 2015, 9:50:00 PM
    Author     : Nena
--%>

<html>
    
    <head>
        <link rel="icon" type="image/gif" href="images/animTitleMain.gif" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Images | Farmerama</title>
        <link rel="stylesheet" type="text/css" href="cssStyles/uploadFileCSS.css">
        
    </head>
    
    <body class="body">  
        
        <script src="uploadFileJS.js"></script>
        <script>
            
            window.picUpload = function(frmData) {
                console.log("picUpload ran: " + frmData);
                var allObjtProperties = '';
                
                for (objProprty in frmData) {
                    console.log(objProprty + " : " + frmData[objProprty]);
                    allObjtProperties = allObjtProperties + "<span>" + objProprty + ": " + frmData[objProprty] + ", </span>";
                };
                
                var cnvs=document.getElementById("cnvsForFormat");
                
                console.log("cnvs: " + cnvs);
                
                var ctx=cnvs.getContext("2d");
                var img = new Image;
                img.src = URL.createObjectURL(frmData);
                console.log('img: ' + img);
                
                img.onload = function() {
                    
                    var picWidth = this.width;
                    var picHeight = this.height;
                    var wdthHghtRatio = picHeight/picWidth;
                    
                    console.log('wdthHghtRatio: ' + wdthHghtRatio);
                    
                    if (Number(picWidth) > 10) {
                        var newHeight = Math.round(Number(400) * wdthHghtRatio);
                    } else {
                        return false;
                    };
                    
                    document.getElementById('cnvsForFormat').height = newHeight;
                    console.log('width: 400  h: ' + newHeight);
                    console.log('This is BEFORE the DRAW IMAGE');
                    ctx.drawImage(img,0,0, 400, newHeight);
                    console.log('THIS IS AFTER THE DRAW IMAGE!');
                    var canvasToDtaUrl = cnvs.toDataURL("image/jpeg");
                };
            };
			
			function upload(canvas) {
                       
                        var x = document.getElementById("cnvsForFormat").toDataURL().toString();
                        document.getElementById("skata").value = x;
                        
                    }
            
        </script>

    <center>
        <form class='frmUpload'>
            <input name="picOneUpload" type="file" class="input" accept="image/*" onchange="picUpload(this.files[0])" ><br/><br/><br/><br/>
        </form>

        <canvas id="cnvsForFormat" width="400" height="266" style="border:1px solid #c3c3c3"></canvas>
        <div id='allImgProperties' style="display:inline"></div><br/><br/><br/><br/>
        <div id='imgTwoForJPG'></div>
        
        <form method="post" action="UploadFileServlet">
            <p>

                <input type="text" id="skata" name="name" /> 
                <input type="hidden" name="userName" value=${sessionScope.name} >
                <a  id="upload"  onClick="upload('canvas')" class="upload" >Upload to Album</a>
                <input type="submit" />

            </p>
        </form>
         <br/><br/>
    </center>

    <address class="address">Made 11 November 2015<br>by Nena Zantopoulou.</address>

</body>

</html>