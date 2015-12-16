/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function initMap() {
       var myLat = +document.getElementById('myLat').value;
       var myLng = +document.getElementById('myLng').value;
       
       var x = document.getElementById('listOfLat');
       var y = document.getElementById('listOfLng');
       var name = document.getElementById('listOfNames');
    
       var pos = {
           lat: +myLat,
           lng: +myLng 
       };
    //
     
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: myLat, lng: myLng},
    zoom: 10    
  });
  var infoWindow = new google.maps.InfoWindow({map: map});
  
  var i;
  
     for(i=0;i<x.length;i++){
         infoWindow.setPosition({lat: +x[i].value+0.04, lng: +y[i].value});
      infoWindow.setContent(name[i].text.toString());
      var marker =new google.maps.Marker({
      position: {lat: +x[i].value,lng: +y[i].value},
       
      animation:google.maps.Animation.BOUNCE
  });}

marker.setMap(map);
      map.setCenter(pos);
 
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');

}