<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Bengkel Online</title>

    <script src="https://kit.fontawesome.com/e08b167792.js" crossorigin="anonymous"></script>

    <link href="https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css" rel="stylesheet">
    <script src="https://api.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
    <script src="https://api.tiles.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.js"></script>
    <link href="https://api.tiles.mapbox.com/mapbox-gl-js/v2.2.0/mapbox-gl.css" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <style>
    #header {
        position: relative;
        background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.9), rgba(0, 0, 0, 1)),
            url('img/header.jpg') no-repeat center;
        background-size: cover;
        background-attachment: fixed;
        width: 100%;
        height: 500px;
    }

    #search {
        position: absolute;
        bottom: 70px;
    }

    #map {
        position: relative;
        height: 600px;
    }

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
        height: 600px;
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
        font-weight: 600;
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
        background-color: #d65a31;
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
        font-size: 11px;
    }

    .listings .item:last-child {
        border-bottom: none;
    }

    .listings .item .title {
        display: block;
        color: #393e46;
        font-weight: 600;
        font-size: 15px;
    }

    .listings .item .title small {
        font-weight: 400;
    }

    .listings .item.active .title,
    .listings .item .title:hover {
        color: #d65a31;
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
        background-size: auto;
        background-repeat: no-repeat;
        width: 40px;
        height: 40px;
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
        background: #222831;
        color: #fff;
        margin: 0;
        display: block;
        padding: 10px;
        border-radius: 3px 3px 0 0;
        font-weight: 600;
        font-size: 11px;
        margin-top: -15px;
    }

    .mapboxgl-popup-content h4 {
        margin: 0;
        display: block;
        padding: 10px 10px 10px 10px;
        font-weight: 400;
        font-size: 11px;
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
    <style>
    .filter-group {
        font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;
        font-weight: 600;
        position: absolute;
        top: 10px;
        right: 10px;
        z-index: 1;
        border-radius: 3px;
        width: 120px;
        color: #fff;
    }

    .filter-group input[type='checkbox']:first-child+label {
        border-radius: 3px 3px 0 0;
    }

    .filter-group label:last-child {
        border-radius: 0 0 3px 3px;
        border: none;
    }

    .filter-group input[type='checkbox'] {
        display: none;
    }

    .filter-group input[type='checkbox']+label {
        background-color: #3386c0;
        display: block;
        cursor: pointer;
        padding: 10px;
        border-bottom: 1px solid rgba(0, 0, 0, 0.25);
    }

    .filter-group input[type='checkbox']+label {
        background-color: #3386c0;
        text-transform: capitalize;
    }

    .filter-group input[type='checkbox']+label:hover,
    .filter-group input[type='checkbox']:checked+label {
        background-color: #4ea0da;
    }

    .filter-group input[type='checkbox']:checked+label:before {
        content: '✔';
        margin-right: 5px;
    }
    </style>
</head>

<body>
    <script src="https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.7.0/mapbox-gl-geocoder.min.js">
    </script>
    <link rel="stylesheet"
        href="https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.7.0/mapbox-gl-geocoder.css"
        type="text/css">
    <!-- Promise polyfill script required to use Mapbox GL Geocoder in IE 11 -->
    <script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php"><i class="fas fa-cogs"></i> Bengkel Online</a>
            <form class="d-flex">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#login">
                    login
                </button>
            </form>
        </div>
    </nav>
    <div id="header" class="container-fluid">
        <div id="search" class="container-fluid">
            <div class="col offset-md-5">
                <div class="input-group">
                    <div id="geocoder" class="geocoder"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="content" class="container">
        <div class="row text-center m-4">
        <<div class="col-lg-4">
                <i class="fas fa-bicycle fa-6x"></i>
                <h2>Bengkel Sepeda</h2>
                <p>Klik untuk menampilkan hanya kumpulan bengekel sepeda.</p>
                <p><a class="btn btn-secondary" href="sepeda.php">View Bengkel Sepeda &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <i class="fas fa-motorcycle fa-6x"></i>
                <h2>Bengkel Motor</h2>
                <p>Klik untuk menampilkan hanya kumpulan bengekel motor.</p>
                <p><a class="btn btn-secondary" href="motor.php">View Bengkel Motor &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <i class="fas fa-car-side fa-6x"></i>
                <h2>Bengkel Mobil</h2>
                <p>Klik untuk menampilkan hanya kumpulan bengekel mobil. </p>
                <p><a class="btn btn-secondary" href="mobil.php">View Bengkel Mobil&raquo;</a></p>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
        <div class="row">
            <div class='sidebar'>
                <div class='heading'>
                    <strong>
                        <h1>Daftar Bengkel Sepeda</h1>
                    </strong>
                </div>
                <div id='listings' class='listings'></div>
            </div>
            <div id="map" class="map"></div>
            <nav id="filter-group" class="filter-group"></nav>
        </div>
        <hr class="featurette-divider">
        <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-between">
                    <div>
                        <h3>Tabel Data Bengkel Mobil</h3>
                    </div>
                </div>
            </div>
            <table class="table table-borderless">
                <tr>
                    <th>ID</th>
                    <th>Nama Bengkel</th>
                    <th>Alamat</th>
                    <th>Telepon</th>
                    <th>Longitude</th>
                    <th>Latitude</th>
                    <th>Tipe</th>
                </tr>
                <?php
                include "koneksi.php";
                $sql = mysqli_query($con, "SELECT * FROM datasemuabengkel WHERE tipe='mobil") or die(mysqli_error($con));

                while ($data = mysqli_fetch_array($sql)) {
                    echo '
						<tr><th>' . $data['id_bengkel'] . '</th>
							<td>' . $data['nama'] . '</td>
							<td>' . $data['alamat'] . '</td>
							<td>' . $data['telepon'] . '</td>
							<td>' . $data['longitude'] . '</td>
                            <td>' . $data['latitude'] . '</td>
                            <td>' . $data['tipe'] . '</td>
						';
                }
                ?>
            </table>
        </div>
        <hr class="featurette-divider">
    </div>
    <footer class="bg-light">
        <div class="container text-left text-md-left mt-5">
            <div class="row">
                <div id="aboutus" class="col-md-3 mx-auto m-4">
                    <h6 class="text-uppercase font-weight-bold">About Us</h6>
                    <hr class="bg-light mb-4 mt-0 d-inline-block mx-auto" style="width:125px; height: 2px;">
                    <p class="mt-2">
                        Bengkel Online : Aplikasi sistem informasi geografis pemetaan lokasi bengkel di daerah kota
                        Malang.
                    </p>
                </div>
                <div class="col-md-3 mx-auto m-4">
                    <h6 class="text-uppercase font-weight-bold">Created By :</h6>
                    <hr class="bg-light mb-4 mt-0 d-inline-block mx-auto" style="width:125px; height: 2px;">
                    <ul class="list-unstyled">
                        <li class="my-2">Muhammad Ibrohim Aqimuddin</li>
                        <li class="my-2">Chandra Gunawan</li>
                        <li class="my-2">Rama</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright text-center py-3">
            <p class="float-end"><a href="#">Back to top</a></p>
            <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </div>
    </footer>


    <!-- Login Modal -->
    <div class="modal fade" id="login" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Login Form</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="login.php" method="POST">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="username" placeholder="Username">
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button class="btn btn-danger" type="submit">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
   

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
    </script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
    <script>
    <?php
    require "koneksi.php";


        

        $query = "SELECT * FROM datasemuabengkel WHERE tipe='mobil'";
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
                        "tipe": "' . $row['tipe'] . '"
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

    mapboxgl.accessToken =
        'pk.eyJ1IjoiYmV5b25kY2hhbiIsImEiOiJja25kZXA5ZGQxZjdqMm9tbGptZG51eXJmIn0.hgfPQNXUpp0LRGKkztoA5A';
    var filterGroup = document.getElementById('filter-group');
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
            el.style.backgroundImage =
                'url(img/' +
                marker.properties.tipe +
                '.svg)';
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

    //listing

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

    //center to the point after click the list item
    function flyTogeojson(currentFeature) {
        map.flyTo({
            center: currentFeature.geometry.coordinates,
            zoom: 15
        });
    }

    //popup
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
                '</h4></center>'
            )
            .addTo(map);
    }

    // Add the control to the map.
    var geocoder = new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl
    });

    document.getElementById('geocoder').appendChild(geocoder.onAdd(map));

    // Initialize the geolocate control.
    var geolocate = new mapboxgl.GeolocateControl({
        positionOptions: {
            enableHighAccuracy: true
        },
        trackUserLocation: true
    });
    // Add the control to the map.
    map.addControl(geolocate);
    map.on('load', function() {
        geolocate.trigger(); //<- Automatically activates geolocation
    });
    </script>
</body>

</html>