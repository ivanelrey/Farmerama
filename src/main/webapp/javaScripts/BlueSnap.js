/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

		window.addEventListener("DOMContentLoaded", function() {
			
			var canvas = document.getElementById("canvas"),
				context = canvas.getContext("2d"),
                            
                   
				video = document.getElementById("video"),
				videoObj = { "video": true },
				errBack = function(error) {
					console.log("Video capture error: ", error.code); 
				};

			
			if(navigator.getUserMedia) { 
				navigator.getUserMedia(videoObj, function(stream) {
					video.src = stream;
					video.play();
				}, errBack);
			} else if(navigator.webkitGetUserMedia) { 
				navigator.webkitGetUserMedia(videoObj, function(stream){
					video.src = window.webkitURL.createObjectURL(stream);
					video.play();
				}, errBack);
			} else if(navigator.mozGetUserMedia) { 
				navigator.mozGetUserMedia(videoObj, function(stream){
					video.src = window.URL.createObjectURL(stream);
					video.play();
				}, errBack);
			}
                          
                         
			document.getElementById("snapBlue").addEventListener("click", function() {
				
                                var data = context.getImageData(0,0,canvas.width,canvas.height);
                                for(n=0; n<data.width*data.height; n++) {
                         var index = n * 4;
                         data.data[index + 0] = 0;
                         
                         data.data[index + 1] = 0 ;
                        
                         data.data[index + 2] = 255 - data. data[index + 2];
                         }
                         context.putImageData(data,0,0);

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