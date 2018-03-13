<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>

    <style>
      #map {
      	float:right;
        height: 400px;
        width: 30%;
       }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: <%=request.getParameter("wi")%>, lng: <%=request.getParameter("gy")%>};
        
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: {lat: <%=request.getParameter("wi")%>, lng: <%=request.getParameter("gy")%>},
          map: map
        });
      }
    </script>
    <h3 style="float:right">map.jsp:<%=request.getParameter("r_add") %></h3>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVlODe5vr86imNiC2k01MLD47VLU8kqFM&callback=initMap">
    </script>
  </body>
</html>