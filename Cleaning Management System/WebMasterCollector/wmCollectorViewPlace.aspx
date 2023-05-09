<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wmCollectorViewPlace.aspx.cs" Inherits="WebMasterCollector.wmCollectorViewPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cleaning Management System - View Place</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Hotel Management System - Admin Login Page">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon">
    <!-- Google font-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <!-- Font Awesome-->
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome.css">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="../assets/css/icofont.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/themify.css">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/flag-icon.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/feather-icon.css">
    <!-- Plugins css start-->
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link id="color" rel="stylesheet" href="../assets/css/color-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">


    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div id="googleMap" style="width: 100%; height: 700px;"></div>

    <button type="button" class="btn btn-pill btn-success" onclick="DonePlace()">DONE PLACE</button>

    <script defer>
        function GetURLParameter(sParam) {
            var sPageURL = window.location.search.substring(1);
            var sURLVariables = sPageURL.split('&');
            for (var i = 0; i < sURLVariables.length; i++) {
                var sParameterName = sURLVariables[i].split('=');
                if (sParameterName[0] == sParam) {
                    return decodeURIComponent(sParameterName[1]);
                }
            }
        }

        var placeId = GetURLParameter('place_id');

        var locations = [];

        function DonePlace() {


            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/DonePlace",
                data: JSON.stringify({
                    "rEF_Place": {
                        ID: placeId
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.DonePlaceResult);
                    console.log(obj);

                    if (obj.Success == true) {
                        window.alert("Place Successfully Cleaned");
                        location.reload();
                    }
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })

            // window.alert("This is Approve Function:" + id);
        }

        function LoadPlaceById() {


            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/LoadPlaceById",
                data: JSON.stringify({
                    "rEF_Place": {
                        ID: placeId,
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.LoadPlaceByIdResult);
                    // console.log(obj);

                    var place = [];
                    place = obj[0];

                    console.log(placeId);
                    locations.push([place.place_name, place.latitude, place.Longitude]);
                    myMap();

                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })

        }

        function myMap() {

            var mapProp = {
                center: new google.maps.LatLng(7.8731, 80.7718),
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var infowindow = new google.maps.InfoWindow();
            var marker, i;

            for (i = 0; i < locations.length; i++) {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                });

                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                    return function () {
                        infowindow.setContent(locations[i][0]);
                        infowindow.open(map, marker);
                    }
                })(marker, i));

                /*var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(-25.363882, 131.044922)
                });*/

                marker.setMap(map);
            }

            // Get the Latitude and longitude
            /*google.maps.event.addListener(map, 'click', function (event) {
                alert("Latitude: " + event.latLng.lat() + " " + ", longitude: " + event.latLng.lng());
            });*/

            /*google.maps.event.addListener(map, 'click', function (event) {
                placeMarker(map, event.latLng);
            });

            var marker = null;
            function placeMarker(map, location) {


                if (marker != null) {
                    marker.setMap(null);
                }

                marker = new google.maps.Marker({
                    position: location,
                    map: map
                });
                var infowindow = new google.maps.InfoWindow({
                    content: 'Latitude: ' + location.lat() +
                        '<br>Longitude: ' + location.lng()
                });
                infowindow.open(map, marker);
            }*/


        }
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBidhd9jZ9N3-GTN-4_Mk7wDlQql8RSOcs&callback=LoadPlaceById" defer></script>


    <!-- feather icon js-->
    <script src="../assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
    <!-- Sidebar jquery-->
    <script src="../assets/js/sidebar-menu.js"></script>
    <script src="../assets/js/config.js"></script>
    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap/popper.min.js"></script>
    <script src="../assets/js/bootstrap/bootstrap.min.js"></script>
    <!-- Plugins JS start-->
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
    <!-- login js-->
    <!-- Plugin used-->
</asp:Content>
