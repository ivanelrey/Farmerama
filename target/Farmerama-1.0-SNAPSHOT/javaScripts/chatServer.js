/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var mongo = require('mongodb').MongoClient,
        client = require('socket.io').listen(8080).sockets;

mongo.connect('mongodb://localhost/chat', function (err, db) {
    if (err)
        throw err;


    client.on('connection', function (socket) {

        var col = db.collection('messages'),
                sendStatus = function (s) {
                    socket.emit('status', s);
                };


//emit messages

        col.find().limit(100).sort({_id: 1}).toArray(function (err, res) {
            if (err)
                throw err;
            socket.emit('output', res);
        });


//wait for input
        socket.on('input', function (data) {
//console.log(data);
            var name = data.name,
                    message = data.message,
                    whitespacePattern = /^\s*$/;

            if (whitespacePattern.test(name) || whitespacePattern.test(message)) {
                sendStatus('Name and message is required.');
            } else {
                col.insert({name: name, message: message}, function ()
                {

//emit latest message to all clients
                    client.emit('output', [data]);

                    sendStatus({
                        message: "Message sent",
                        clear: true
                    });
                });
            }

        });
    });
});

