

		/* global Canvas2Image */

// arxikopiish twn listeners
		window.addEventListener("DOMContentLoaded", function() {
			// Grab elements, create settings, etc.
			var canvas = document.getElementById("canvas"),
				context = canvas.getContext("2d"),
				video = document.getElementById("video"),
				videoObj = { "video": true },
				errBack = function(error) {
					console.log("Video capture error: ", error.code); 
				};

			// video listeners 
			if(navigator.getUserMedia) { // Standard
				navigator.getUserMedia(videoObj, function(stream) {
					video.src = stream;
					video.play();
				}, errBack);
			} else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
				navigator.webkitGetUserMedia(videoObj, function(stream){
					video.src = window.webkitURL.createObjectURL(stream);
					video.play();
				}, errBack);
			} else if(navigator.mozGetUserMedia) { // WebKit-prefixed
				navigator.mozGetUserMedia(videoObj, function(stream){
					video.src = window.URL.createObjectURL(stream);
					video.play();
				}, errBack);
			}

			// trigger gia lipsi fotografias
			document.getElementById("snap").addEventListener("click", function() {
				context.drawImage(video, 0, 0, 320, 240); 
                                context.drawImage(video, 0, 0, 320, 240); 
                                context.font = " 10px Comic Sans MS";
                                context.fillStyle = "gray";
                                context.globalAlpha = 1.0;
                                context.shadowColor = "grey";
                                context.shadowOffsetX = 2;
                                context.shadowOffsetY = 2;
                                context.shadowBlur = 2;

                                context.fillText("Farmerama",260,235);
                        });           
                        
                        
                }, false);
                






