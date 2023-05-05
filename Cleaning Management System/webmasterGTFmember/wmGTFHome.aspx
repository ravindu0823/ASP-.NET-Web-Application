<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wmGTFHome.aspx.cs" Inherits="webmasterGTFmember.wmGTFHome" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        <!-- Bookmark Start-->

                        <!-- Bookmark Ends-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid starts-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="form theme-form">
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3">

                                            <form runat="server">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label>Select The Image</label>
                                                            <asp:FileUpload class="form-control" ID="imageUpload" runat="server" />
                                                            <asp:LinkButton ID="btnSave" runat="server" class="btn btn-secondary me-3" OnClick="UploadImage">Upload Image</asp:LinkButton>
                                                            <asp:HiddenField ID="pathName" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr />
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label>Place Name:</label>
                                                            <input type="text" class="form-control" id="place_name" placeholder="Location" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label>Situation:</label>
                                                            <input type="text" class="form-control" id="situation" placeholder="Explain the impact such as attracting wildlife, terrible smell and etc " />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label>Select Location:</label>
                                                            <div id="googleMap" style="width: 100%; height: 700px;"></div>
                                                        </div>
                                                    </div>
                                                </div>





                                                <div class="row">
                                                    <div class="col">
                                                        <button type="button" class="btn btn-pill btn-success" onclick="insertPlace()">ADD NEW PLACE</button>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col">
                                                        <input type="text" id="lat" hidden />
                                                        <input type="text" id="lng" hidden />
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <script defer>
        function myMap() {

            var locations = [
                ['Bondi Beach', -33.890542, 151.274856, 4],
                ['Coogee Beach', -33.923036, 151.259052, 5],
                ['Cronulla Beach', -34.028249, 151.157507, 3],
                ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
                ['Maroubra Beach', -33.950198, 151.259302, 1]
            ];

            var mapProp = {
                center: new google.maps.LatLng(7.8731, 80.7718),
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var infowindow = new google.maps.InfoWindow();
            var marker, i;

            /*for (i = 0; i < locations.length; i++) {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                });

                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                    return function () {
                        infowindow.setContent(locations[i][0]);
                        infowindow.open(map, marker);
                    }
                })(marker, i));

                *//*var marker = new google.maps.Marker({
                position: new google.maps.LatLng(-25.363882, 131.044922)
            });*//*

            marker.setMap(map);
        }*/

            // Get the Latitude and longitude
            /*google.maps.event.addListener(map, 'click', function (event) {
                alert("Latitude: " + event.latLng.lat() + " " + ", longitude: " + event.latLng.lng());
            });*/

            google.maps.event.addListener(map, 'click', function (event) {
                placeMarker(map, event.latLng);
            });

            var marker = null;
            function placeMarker(map, location) {
                $("#lat").val(location.lat());
                $("#lng").val(location.lng());

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
            }


        }

        function insertPlace() {
            var pathName = $('#<%= pathName.ClientID %>').val();
            var place_name = $('#place_name').val();
            var situation = $('#situation').val();
            var latitude = $('#lat').val();
            var longitude = $('#lng').val();
            var memberId = sessionStorage.getItem("member_id");

            console.log(pathName);
            console.log(place_name);
            console.log(situation);
            console.log(latitude);
            console.log(longitude);
            console.log(memberId);

            Place(place_name, situation, pathName, latitude, longitude, memberId);
        }

        function Place(placeName, situation, imagePath, lat, lng, addedBy) {
            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/AddPlace",
                data: JSON.stringify({
                    "rEF_Place": {
                        PLACENAME: placeName,
                        SITUATION: situation,
                        IMAGEPATH: imagePath,
                        LATITUDE: lat,
                        LONGITUDE: lng,
                        ADDEDBY: addedBy
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.AddPlaceResult);
                    console.log(obj);

                    if (obj.Success == true) {
                        window.alert("Place added Successfully");
                    }
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })
        }
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBidhd9jZ9N3-GTN-4_Mk7wDlQql8RSOcs&callback=myMap" defer></script>

    <!-- Container-fluid Ends-->
    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>
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
    <script src="../assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/js/jsgrid/jsgrid.min.js"></script>
    <script src="../assets/js/jsgrid/griddata.js"></script>
    <script src="../assets/js/jsgrid/jsgrid.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
    <script src="../assets/js/theme-customizer/customizer.js"></script>
    <!-- login js-->
    <!-- Plugin used-->

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
    <link rel="stylesheet" type="text/css" href="../assets/css/datatables.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/owlcarousel.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/rating.css">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link id="color" rel="stylesheet" href="../assets/css/color-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
    <link href="../assets/toastr/toastr.min.css" rel="stylesheet" />
    <link href="../assets/select2/select2.min.css" rel="stylesheet" />
    <link href="../assets/w2ui-w2ui-1.5/dist/w2ui.min.css" rel="stylesheet" />
</asp:Content>
