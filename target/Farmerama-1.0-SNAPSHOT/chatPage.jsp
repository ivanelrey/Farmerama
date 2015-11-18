<%-- 
    Document   : chatPage
    Created on : 16 Νοε 2015, 1:13:09 πμ
    Author     : Gomesito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat With Farmerama Users</title>
        <link rel="stylesheet" type="text/css" href="cssStyles/chatPageStyle.css">
    </head>
    <body>
        <h1 id="header">CHAT WITH FARMERS</h1>
        <div class="chat">
            <input type="text" class="chat-name" placeholder="Name of this user">
            <div class="chat-messages">

            </div>
            <textarea  placeholder="Type your message"></textarea>
            <div class="chat-status" >Status:<span>idle</span></div>
        </div>
        <script src="http://79.103.132.25:8080/socket.io/socket.io.js"></script>
        <script>
            (function () {
                var getNode = function (s) {
                    return document.querySelector(s);
                },
//get required nodes
                        status = getNode('.chat-status span'),
                        messages = getNode('.chat-messages'),
                        textarea = getNode('.chat textarea'),
                        chatName = getNode('.chat-name');

                statusDefault = status.textContent,
                        setStatus = function (s) {
                            status.textContent = s;

                            if (s !== statusDefault) {
                                var delay = setTimeout(function () {
                                    setStatus(statusDefault);
                                    clearInterval(delay);
                                }, 3000);
                            }
                        };


                try {
                    var socket = io.connect('http://79.103.132.25:8080');
                } catch (e) {

                }
                if (socket !== undefined) {
//
                    socket.on('output', function (data) {
                        if (data.length) {
                            for (var x = 0; x < data.length; x = x + 1) {
                                var message = document.createElement('div');
                                message.setAttribute('class', 'chat-message');
                                message.textContent = data[x].name + ': ' + data[x].message;

                                messages.appendChild(message);
                                messages.insertBefore(message, messages.firstChild);
                            }
                        }

                    });
//
                    socket.on('status', function (data) {
                        setStatus((typeof data === 'object') ? data.message : data);
                        if (data.clear === true) {
                            textarea.value = '';
                        }
                    });

//keydown
                    textarea.addEventListener('keydown', function (event) {
                        var self = this,
                                name = chatName.value;

                        if (event.which === 13 && event.shiftKey === false) {
                            socket.emit('input', {
                                name: name,
                                message: self.value
                            });
                            event.preventDefault();
                        }
                    });
                }
            })();
        </script>
    </body>
</html>