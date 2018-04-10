<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<style>
/* Always set the map height explicitly to define the size of the div
 * element that contains the map. */
#map {
	height: 400px;
	width: 100%;
}

/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<%-- <h3>${param.r_wi}, ${param.r_gy}</h3> --%>
	<div id="map"></div>
	<%-- <h4>${param.r_wi}, ${param.r_gy}</h4> --%>
	<input type="hidden" name="r_wi" id="r_wi" value="${param.r_wi}">
	<input type="hidden" name="r_gy" id="r_gy" value="${param.r_gy}">
	
	<script>
	var map;
	var marker;

	function initMap() {
	  var myLatlng = new google.maps.LatLng(${param.r_wi}, ${param.r_gy});
	  var myOptions = {
	    zoom: 16,
	    center: myLatlng,
	    mapTypeId: google.maps.MapTypeId.ROADMAP
	  }
	  map = new google.maps.Map(document.getElementById("map"), myOptions);

	  marker = new google.maps.Marker({
	    position: myLatlng,
	    map: map
	  });

	  google.maps.event.addListener(map, 'click', function(event) {
		  //alert(event.latLng.lat())
		  document.getElementById("r_wi").value=event.latLng.lat()
		  document.getElementById("r_gy").value=event.latLng.lng()
		  //alert(document.getElementById("r_wi").value+", "+document.getElementById("r_gy").value)
	    marker.setPosition(event.latLng);
	    map.setCenter(event.latLng);
	  });
	}

	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVlODe5vr86imNiC2k01MLD47VLU8kqFM&callback=initMap">
		
	</script>
</body>
</html>