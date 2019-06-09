/*var demoMap = L.map('map').setView([40.453191, -3.509236], 6);
var osmUrl = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png';
var osmAttrib = 'Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors';
var osm = new L.TileLayer(osmUrl, {
    minZoom: 5,
    maxZoom: 16,
    attribution: osmAttrib
});
osm.addTo(demoMap);

var markerCluster = L.markerClusterGroup();

for (var i = 0; i < locations.length; i++) {
    var marker = L.marker(locations[i])
    marker.bindPopup('<p>Latitud:'+locations[i][0]+'</p><p>Longitud:'+locations[i][1]+'</p>');
    markerCluster.addLayer(marker);
}

demoMap.addLayer(markerCluster);*/


var mymap = L.map('mapid').setView([-7.7568, -35.3656], 13);
L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
	maxZoom: 18,
	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
		'<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
		'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
	id: 'mapbox.streets'
}).addTo(mymap);

L.marker([-34.6929022, -58.6801515]).addTo(mymap)
.bindPopup("<b>Hello world!</b><br />I am a popup.").openPopup();

var popup = L.popup();
