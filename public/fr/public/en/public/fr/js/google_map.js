var initializeMap = function() {
  var iw1, map, marker, myOptions;
  myOptions = {
    zoom: 15,
    center: new google.maps.LatLng(41.8218146, -6.7541353),
    mapTypeId: google.maps.MapTypeId.SATELLITE,
    draggable: false,
    zoomControl: false,
    scrollwheel: false,
    disableDoubleClickZoom: true
  };
  map = new google.maps.Map(document.getElementById("google-map"), myOptions);
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(41.8218146, -6.7541353),
    map: map,
    title: "Quinta da Rica-Fé"
  });
  iw1 = new google.maps.InfoWindow({
    content: 'Quinta da Rica-Fé <br> <a href="https://www.google.pt/maps/place/41%C2%B049\'18.6%22N+6%C2%B045\'15.5%22W/@41.822589,-6.757349,736m/data=!3m1!1e3!4m2!3m1!1s0x0:0x0" target="_blank">directions</a>'
  });
  google.maps.event.addListener(marker, 'click', function(e) {
    iw1.open(map, this);
  });
};

$(function() {
  var script;
  script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.google.com/maps/api/js?key=AIzaSyBE-EVvSrhjfH09pYIfHtBA_htTV-1-vvU&callback=initializeMap";
  document.body.appendChild(script);
});
