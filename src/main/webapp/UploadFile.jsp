<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Files</title>
        <link rel="stylesheet" type="text/css" href="uploadFileCSS.css">
    </head>
    <body>
        <center><input type="file" id="files" class="input" name="files[]" multiple/><br/><br/><br/><br/><br/>
            <output id="list" ></output><br/>
            <button id="upload" class="uploadBtn uploadBtn-primary">UPLOAD</button></center>
            <script src="uploadFileJS.js"></script>
    </body>
</html>