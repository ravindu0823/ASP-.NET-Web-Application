<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wmGTFLanding.aspx.cs" Inherits="webmasterGTFmember.wmGTFLanding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Landing Page</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="#page-top">W M SYSTEM</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse  " id="navbarResponsive">
                <ul class="navbar-nav ms-auto ">
                    <li class="nav-item"><a class="nav-link text-dark fw-bold" href="./wmGTFLanding.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link text-dark fw-bold" href="./wmGTFLanding.aspx">About</a></li>
                    <li class="nav-item"><a class="nav-link text-dark fw-bold" href="./wmGTFLanding.aspx">Place of Garbage collection</a></li>
                    <li class="nav-item"><a class="nav-link text-dark fw-bold" href="./wmGTFArticles.aspx">Articles</a></li>
                    <li class="nav-item"><a class="nav-link text-dark fw-bold" href="#signup">Contact</a></li>
                    <li class="nav-item"><a class="nav-link text-dark fw-bold" href="./wmGTFGallary.aspx">Gallery</a></li>

                </ul>
            </div>
        </div>
    </nav>
    <!-- Masthead-->
    <header class="masthead">
        <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
            <div class="d-flex justify-content-center">
                <div class="text-center">
                    <h1 class="mx-auto my-0 text-uppercase">waste management </h1>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">Colombo Municipal Council (CMC) .</h2>
                    <a class="btn btn-light" href="./wmGTFlogin.aspx">Login As a GTF Memeber</a>
                </div>
            </div>
        </div>
    </header>
    <!-- About-->
    <section class="about-section text-center" id="Location">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-lg-8">
                    <h2 class="text-white mb-4">Places of Grabage Collections</h2>

                </div>
            </div>
            <div id="googleMap" style="width: 100%; height: 700px;"></div>
        </div>
    </section>
    <!-- Projects-->
    <section class="projects-section bg-light" id="about">
        <div class="container px-4 px-lg-5">
            <!-- Featured Project Row-->
            <div class="row gx-0 mb-4 mb-lg-5 align-items-center">
                <div class="col-xl-8 col-lg-7">
                    <img class="img-fluid mb-3 mb-lg-0" src="assets/img/2.jpg" alt="..." />
                </div>
                <div class="col-xl-4 col-lg-5">
                    <div class="featured-text text-center text-lg-left">
                        <h4 class="fw-bold">About Us </h4>
                        <p class="text-black-50 mb-0">
                            Welcome to the revolutionary new web site developed by the Colombo
                            Municipal Council (CMC) that is set to change the way we think about garbage collection!
                            With the help of the Green Task Force (GTF), a dedicated group of volunteers within the
                            district, this site is designed to make reporting incidents of thrown away garbage quick,
                            easy and efficient.

                            GTF members can snap photos of garbage, explain the impact it is having on the environment,
                            and set the location before sending in their report. These reports are then viewed by the
                            Green Captain, a manager with the authority to validate and approve or reject them based on
                            the uploaded photo(s). Once approved, the garbage collection staff can see a summary of the
                            incident on a map, along with the importance rating of the report.

                            And that's not all! The site also provides the general public with a map of all the garbage
                            collection spots within the district, as well as news articles from the CMS to keep everyone
                            up to date on the latest developments. With this comprehensive approach to garbage
                            collection, we can all work together to create a cleaner, greener environment for
                            generations to come.
                        </p>
                    </div>
                </div>
            </div>
            <!-- Project One Row-->
            <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                <div class="col-lg-6">
                    <img class="img-fluid" src="assets/img/3.png" alt="..." />
                </div>
                <div class="col-lg-6">
                    <div class="text-center h-100 project" style="background-color: rgb(23, 29, 40);">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-left">
                                <h4 class="text-white">Our Aim</h4>
                                <p class="mb-0 text-white-50">
                                    "Keeping the environment clean and building a beautiful
                                    country"
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Project Two Row-->
            <div class="row gx-0 justify-content-center">
                <div class="col-lg-6">
                    <img class="img-fluid w-100" src="assets/img/5.jpg" alt="..." />
                </div>
                <div class="col-lg-6 order-lg-first">
                    <div class="text-center h-100 project" style="background-color: rgb(23, 29, 40);">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center text-lg-right">
                                <h4 class="text-white"></h4>
                                <p class="mb-0 text-white-50">
                                    "Dispose of your waste responsibly by using designated
                                    recycling bins and garbage containers. Separate recyclables from general waste to
                                    ensure they can be properly recycled."
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Signup-->
    <section class="signup-section" id="signup">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5">
                <div class="col-md-10 col-lg-8 mx-auto text-center">
                    <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                    <h2 class="text-white mb-5">Subscribe to receive updates!</h2>
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- * * SB Forms Contact Form * *-->
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- This form is pre-integrated with SB Forms.-->
                    <!-- To make this form functional, sign up at-->
                    <!-- https://startbootstrap.com/solution/contact-forms-->
                    <!-- to get an API token!-->
                    <form class="form-signup" action="https://getform.io/f/1298874a-efdb-43b1-bab1-a8ed3273ce6d" method="post">
                        <div class="row input-group-newsletter">
                            <div class="col">
                                <input class="form-control" id="emailAddress" type="email" name="emailAddress"
                                    placeholder="Enter email address..." aria-label="Enter email address..." />
                            </div>
                            <div class="col-auto">
                                <input class="btn btn-success" id="submitButton" style="background-color: rgb(75, 193, 144);"
                                    type="submit" value="Notify Me!" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact-->
    <section class="contact-section bg-black">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5">
                <div class="col-md-4 mb-3 mb-md-0">
                    <div class="card py-4 h-100">
                        <div class="card-body text-center">
                            <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                            <h4 class="text-uppercase m-0">Address</h4>
                            <hr class="my-4 mx-auto" />
                            <div class="small text-black-50">4WV87+7CW, Dr CWW Kannangara Mawatha, Colombo 00700</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3 mb-md-0">
                    <div class="card py-4 h-100">
                        <div class="card-body text-center">
                            <i class="fas fa-envelope text-primary mb-2"></i>
                            <h4 class="text-uppercase m-0">Email</h4>
                            <hr class="my-4 mx-auto" />
                            <div class="small text-black-50"><a href="#!">munici@slt.lk</a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3 mb-md-0">
                    <div class="card py-4 h-100">
                        <div class="card-body text-center">
                            <i class="fas fa-mobile-alt text-primary mb-2"></i>
                            <h4 class="text-uppercase m-0">Phone</h4>
                            <hr class="my-4 mx-auto" />
                            <div class="small text-black-50">+94 112 691 191</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="social d-flex justify-content-center">
                <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                <a class="mx-2" href="#!"><i class="fab fa-google"></i></a>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="footer bg-black small text-center text-white-50">
        <div class="container px-4 px-lg-5">Copyright &copy; cmc Waste Management Website 2023</div>
    </footer>

    <script defer>
        function myMap() {

            /*var locations = [
                ['Bondi Beach', -33.890542, 151.274856, 4],
                ['Coogee Beach', -33.923036, 151.259052, 5],
                ['Cronulla Beach', -34.028249, 151.157507, 3],
                ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
                ['Maroubra Beach', -33.950198, 151.259302, 1],
                ['Olive Green', 6.712832688842386, 79.90497074216515, 6]
            ];*/

            var locations = [
                ['Cleantech', 6.893254670760378, 79.87330379591371, 1],
                ['Solid Waste Management Depot', 6.922939251160051, 79.86362226312305, 2],
                ['Colombo Waste Management', 6.944416993084237, 79.8809153921853, 3],
                ['Olive Green', 6.932739044289675, 79.84363489415337, 4],
                ['Garbage Processing Unit, Ruwanwella', 7.044575862974742, 80.20370441433371, 5],
                ['Wadduwa Municipal Garbage Collection Place', 6.6655372820384, 79.92915274115767, 6],
                ['Sanitary Land Fill, Dompe', 7.028539701288206, 80.12238749457367, 7],

            ];

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

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBidhd9jZ9N3-GTN-4_Mk7wDlQql8RSOcs&callback=myMap" defer></script>



    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
