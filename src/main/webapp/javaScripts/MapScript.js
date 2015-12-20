/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function initMap() {
       var myLat = parseFloat(document.getElementById('myLat').value);
       var myLng = parseFloat(document.getElementById('myLng').value);
       
       var x = document.getElementById('listOfLat');
       var y = document.getElementById('listOfLng');
       var name = document.getElementById('listOfNames');
    
       var pos = {
           lat: myLat,
           lng: myLng 
       };
    var infoWindow; 
     
  var map = new google.maps.Map(document.getElementById('map'), {
    center: pos,
    zoom: 6    
  });
  
  var i;
  var marker ;
 
     for(i=0;i<x.length;i++){      
     marker = new google.maps.Marker({
        position: new google.maps.LatLng( +x[i].value, +y[i].value),
        map: map ,
        id: i,
       animation:google.maps.Animation.BOUNCE,
       
  });
   google.maps.event.addListener(marker, 'click', function() {               
        document.getElementById("otheruser").value=name[this.id].text;
        document.otherName.submit();
        });
   infoWindow = new google.maps.InfoWindow({content: name[i].text});
    infoWindow.open (map,marker) ;
    
    }

        marker.setMap(map);
        map.setCenter(pos);
 
}
