<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
#map-canvas {
  margin: 0;
  padding: 0;
  height: 100%;
}
</style>
</head>
<body>
   <input id="pac-input" class="controls" type="text" placeholder="Search Box">
   <div class="container" id="map-canvas" style="height:800px;"></div>
   
   <script>
   function init() {
         var map = new google.maps.Map(document.getElementById('map-canvas'), {
           center: {
             lat: 37.553187,
             lng: 126.936875
           },
           zoom: 16
         });
         
   

         var searchBox = new google.maps.places.SearchBox(document.getElementById('pac-input'));
         map.controls[google.maps.ControlPosition.TOP_CENTER].push(document.getElementById('pac-input'));
         google.maps.event.addListener(searchBox, 'places_changed', function() {
         searchBox.set('map', null);


           var places = searchBox.getPlaces();

           var bounds = new google.maps.LatLngBounds();
           var i, place;
           for (i = 0; place = places[i]; i++) {
             (function(place) {
               var marker = new google.maps.Marker({

                 position: place.geometry.location
               });
               marker.bindTo('map', searchBox, 'map');
               google.maps.event.addListener(marker, 'map_changed', function() {
                 if (!this.getMap()) {
                   this.unbindAll();
                 }
               });
               bounds.extend(place.geometry.location);


             }(place));

           }
           map.fitBounds(bounds);
           searchBox.set('map', map);
           map.setZoom(Math.min(map.getZoom(),16));

         });
       }
       google.maps.event.addDomListener(window, 'load', init);
   </script>
   
   <script async defer
    src="https://maps.googleapis.com/maps/api/js?region=KR&lauguage=kr&key=AIzaSyBmoN_kF5xMdNhIWviZUHNZn-XOMCV4teI
    &callback=init&sensor=false&libraries=places">
    </script>
    

</body>
</html>