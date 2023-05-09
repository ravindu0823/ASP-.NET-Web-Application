<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wmGTFGallary.aspx.cs" Inherits="webmasterGTFmember.wmGTFGallary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%-- Navigation bar links --%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>cmc-Galarry View</title>
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

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="./vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="./vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="./vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="./vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <link href="./css1/style.css" rel="stylesheet">
</head>
<body>

    <body>
        <!--Start Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow shadow-bottom" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-dark" href="#page-top">W M SYSTEM</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                    aria-label="Toggle navigation">
                    Menu
                <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
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
        <main id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                </div>
            </section>
            <!-- End Breadcrumbs -->

            <!-- ======= Gallery Section ======= -->
            <section id="gallery" class="gallery">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-12 d-flex justify-content-center">
                            <ul id="gallery-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <li data-filter=".filter-garbage">Garbage spots</li>
                                <li data-filter=".filter-cleaning">Cleaning</li>
                                <li data-filter=".filter-after">After cleaning</li>
                            </ul>
                        </div>
                    </div>

                    <div class="row gallery-container">

                        <div class="col-lg-4 col-md-6 gallery-item filter-garbage">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/garbage-1.jpg" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>Garbage 1</h4>
                                    <p>Garbage</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/garbage-1.jpg" class="glightbox" title="Garbage 1"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-after">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/after-1.jpg" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>After cleaning 2</h4>
                                    <p>After cleaning</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/after-1.jpg" class="glightbox" title="After cleaning 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-garbage">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/garbage-2.jpg" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>Garbage 2</h4>
                                    <p>Garbage</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/garbage-2.jpg" class="glightbox" title="Garbage 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-cleaning">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/cleaning-1.jpg" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>Cleaning 2</h4>
                                    <p>Cleaning</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/cleaning-1.jpg" class="glightbox" title="Cleaning 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-after">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/after-2.png" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>After cleaning 1</h4>
                                    <p>After cleaning</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/after-2.png" class="glightbox" title="After cleaning 1"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-garbage">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/garbage-4.jpg" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>Garbage 3</h4>
                                    <p>Garbage</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/garbage-4.jpg" class="glightbox" title="Garbage 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-cleaning">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/cleaning-2.jpg" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>Cleaning 1</h4>
                                    <p>Cleaning</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/cleaning-2.jpg" class="glightbox" title="Cleaning 1"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-cleaning">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/cleaning-5.png" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>Cleaning 3</h4>
                                    <p>Cleaning</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/cleaning-5.png" class="glightbox" title="Cleaning 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 gallery-item filter-after">
                            <div class="gallery-wrap">
                                <img src="assets/img/gallery/after-3.png" class="img-fluid" alt="">
                                <div class="gallery-info">
                                    <h4>After cleaning 3</h4>
                                    <p>After cleaning</p>
                                    <div class="gallery-links">
                                        <a href="assets/img/gallery/after-3.png" class="glightbox" title="After cleaning 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Gallery Section -->

        </main>
        <!-- End #main -->






        <%-- include js in navbar --%>
        <section class="contact-section bg-black">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2 text-success"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50">4WV87+7CW, Dr CWW Kannangara Mawatha, Colombo 00700</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2 text-success"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4 mx-auto" />
                                <div class="small text-black-50"><a href="#!">munici@slt.lk</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2 text-success"></i>
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

        <%-- include js in body --%>
        <!-- Vendor JS Files -->
        <script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="./vendor/glightbox/js/glightbox.min.js"></script>
        <script src="./vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="./vendor/swiper/swiper-bundle.min.js"></script>
        <script src="./vendor/php-email-form/validate.js"></script>


        <script src="./js1/main.js"></script>
    </body>

</body>
</html>
