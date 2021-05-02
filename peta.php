<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Bengkel Di Malang</title>
	<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">

	<link href="https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css" rel="stylesheet">
	<script src="https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js"></script>

	<style>
		body {
			color: #404040;
			font: 400 15px/22px 'Source Sans Pro', 'Helvetica Neue', Sans-serif;
			margin: 0;
			padding: 0;
			-webkit-font-smoothing: antialiased;
		}

		* {
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}

		.sidebar {
			position: absolute;
			width: 33.3333%;
			height: 100%;
			top: 0;
			left: 0;
			overflow: hidden;
			border-right: 1px solid rgba(0, 0, 0, 0.25);
		}

		.map {
			position: absolute;
			left: 33.3333%;
			width: 66.6666%;
			top: 0;
			bottom: 0;
		}

		h1 {
			font-size: 22px;
			margin: 0;
			font-weight: 400;
			line-height: 20px;
			padding: 20px 2px;
		}

		a {
			color: #404040;
			text-decoration: none;
		}

		a:hover {
			color: #101010;
		}

		.heading {
			background: #fff;
			border-bottom: 1px solid #eee;
			min-height: 60px;
			line-height: 60px;
			padding: 0 10px;
			background-color: #654321;
			color: #fff;
		}

		.listings {
			height: 100%;
			overflow: auto;
			padding-bottom: 60px;
		}

		.listings .item {
			display: block;
			border-bottom: 1px solid #eee;
			padding: 10px;
			text-decoration: none;
		}

		.listings .item:last-child {
			border-bottom: none;
		}

		.listings .item .title {
			display: block;
			color: #C4A484;
			font-weight: 700;
		}

		.listings .item .title small {
			font-weight: 400;
		}

		.listings .item.active .title,
		.listings .item .title:hover {
			color: #654321;
		}

		.listings .item.active {
			background-color: #f8f8f8;
		}

		::-webkit-scrollbar {
			width: 3px;
			height: 3px;
			border-left: 0;
			background: rgba(0, 0, 0, 0.1);
		}

		::-webkit-scrollbar-track {
			background: none;
		}

		::-webkit-scrollbar-thumb {
			background: #654321;
			border-radius: 0;
		}

		.marker {
			background-image: url('bengkel.png');
			background-size: cover;
			width: 40px;
			height: 40px;
			border-radius: 50%;
			cursor: pointer;
		}

		.clearfix {
			display: block;
		}

		.clearfix:after {
			content: '.';
			display: block;
			height: 0;
			clear: both;
			visibility: hidden;
		}

		.mapboxgl-popup {
			padding-bottom: 50px;
		}

		.mapboxgl-popup-close-button {
			display: none;
		}

		.mapboxgl-popup-content {
			font: 400 15px/22px 'Source Sans Pro', 'Helvetica Neue', Sans-serif;
			padding: 0;
			width: 180px;
		}

		.mapboxgl-popup-content-wrapper {
			padding: 1%;
		}

		.mapboxgl-popup-content h3 {
			background: #654321;
			color: #fff;
			margin: 0;
			display: block;
			padding: 10px;
			border-radius: 3px 3px 0 0;
			font-weight: 700;
			margin-top: -15px;
		}

		.mapboxgl-popup-content h4 {
			margin: 0;
			display: block;
			padding: 10px 10px 10px 10px;
			font-weight: 400;
		}

		.mapboxgl-popup-content div {
			padding: 10px;
		}

		.mapboxgl-container .leaflet-marker-icon {
			cursor: pointer;
		}

		.mapboxgl-popup-anchor-top>.mapboxgl-popup-content {
			margin-top: 15px;
		}

		.mapboxgl-popup-anchor-top>.mapboxgl-popup-tip {
			border-bottom-color: #91c949;
		}
	</style>
</head>

<body>
	<div class='sidebar'>
		<div class='heading'>
			<strong>
				<h1>Daftar Bengkel</h1>
			</strong>
		</div>
		<div id='listings' class='listings'></div>
	</div>
	<div id="map" class="map"></div>

	<script type="text/javascript">
		<?php
		require "koneksi.php";

		$query = "SELECT * FROM datasemuabengkel";
		$sql = mysqli_query($con, $query);
		?>

		var geojson = {
			"type": "FeatureCollection",
			"features": [
				<?php
				while ($row = mysqli_fetch_array($sql)) {
					echo '{"type": "Feature",
                    "properties":{
                        "nama": "' . $row['nama'] . '",
                        "alamat": "' . $row['alamat'] . '",
                        "telepon": "' . $row['telepon'] . '",
						"website": "' . $row['website'] . '"
                    },
                    "geometry":{
                        "type": "Point",
                        "coordinates": [' . $row['longitude'] . ',' . $row['latitude'] . ']
                    }
                },';
				}
				?>
			]
		}


		mapboxgl.accessToken = 'pk.eyJ1IjoiYmV5b25kY2hhbiIsImEiOiJja25kZXA5ZGQxZjdqMm9tbGptZG51eXJmIn0.hgfPQNXUpp0LRGKkztoA5A';
		var map = new mapboxgl.Map({
			container: 'map',
			style: 'mapbox://styles/mapbox/light-v10',
			center: [112.621391, -7.983908],
			zoom: 15,
			scrollZoom: true
		});

		geojson.features.forEach(function(geojson, i) {
			geojson.properties.id = i;
		});
		map.on('load', function(e) {
			map.addSource('places', {
				'type': 'geojson',
				'data': geojson
			});
			buildLocationList(geojson);
			addMarkers();
		});


		function addMarkers() {
			geojson.features.forEach(function(marker) {
				var el = document.createElement('div');
				el.id = 'marker-' + marker.properties.id;
				el.className = 'marker';
				new mapboxgl.Marker(el, {
						offset: [0, -23]
					})
					.setLngLat(marker.geometry.coordinates)
					.addTo(map);

				el.addEventListener('click', function(e) {
					flyTogeojson(marker);
					createPopUp(marker);
					var activeItem = document.getElementsByClassName('active');
					e.stopPropagation();
					if (activeItem[0]) {
						activeItem[0].classList.remove('active');
					}
					var listing = document.getElementById(
						'listing-' + marker.properties.id
					);
					listing.classList.add('active');
				});
			});
		}

		function buildLocationList(data) {
			data.features.forEach(function(geojson, i) {
				var prop = geojson.properties;

				var listings = document.getElementById('listings');
				var listing = listings.appendChild(document.createElement('div'));

				listing.id = 'listing-' + prop.id;

				listing.className = 'item';

				var link = listing.appendChild(document.createElement('a'));
				link.href = '#';
				link.className = 'title';
				link.id = 'link-' + prop.id;
				link.innerHTML = prop.nama;

				var details = listing.appendChild(document.createElement('div'));
				details.innerHTML = prop.alamat;
				if (prop.phone) {
					details.innerHTML += ' &middot; ' + prop.telepon;
				}

				link.addEventListener('click', function(e) {
					for (var i = 0; i < data.features.length; i++) {
						if (this.id === 'link-' + data.features[i].properties.id) {
							var clickedListing = data.features[i];
							flyTogeojson(clickedListing);
							createPopUp(clickedListing);
						}
					}
					var activeItem = document.getElementsByClassName('active');
					if (activeItem[0]) {
						activeItem[0].classList.remove('active');
					}
					this.parentNode.classList.add('active');
				});
			});
		}

		function flyTogeojson(currentFeature) {
			map.flyTo({
				center: currentFeature.geometry.coordinates,
				zoom: 15
			});
		}

		function createPopUp(currentFeature) {
			var popUps = document.getElementsByClassName('mapboxgl-popup');
			if (popUps[0]) popUps[0].remove();
			var popup = new mapboxgl.Popup({
					closeOnClick: false
				})
				.setLngLat(currentFeature.geometry.coordinates)
				.setHTML(
					'<h3>' +
					currentFeature.properties.nama +
					'</h3>' +
					'<h4>' +
					currentFeature.properties.alamat +
					'</h4>' +
					'<center><h4>' +
					currentFeature.properties.telepon +
					'</h4></center>' +
					'<center><h4>' +
					currentFeature.properties.website +
					'</h4></center>'
				)
				.addTo(map);
		}
	</script>

</body>

</html>