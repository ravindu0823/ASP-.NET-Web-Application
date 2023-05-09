<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wmGTFArticles.aspx.cs" Inherits="webmasterGTFmember.wmGTFArticles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Article</title>
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
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
        rel="stylesheet">
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
</head>
<body id="page-top">
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
    <!-- End navbar -->

    <!-- Projects-->
    <section class="projects-section bg-light" id="projects">
        <div class="container px-4 px-lg-5">
            <div class="row gx-0 justify-content-center  h-100">
                <div class="page-body">
                    <div class="container-fluid">
                        <div class="page-header">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h3 class="text-dark">View Article </h3>
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="./wmLandpage.aspx">Home</a></li>

                                        <li class="breadcrumb-item active text-black">View Article</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- Container-fluid starts-->
                        <div class="container-fluid">
                            <div class="row" id="article">

                                <div class="col-sm-12 col-xl-6">
                                    <div class="card card-absolute">
                                        <div class="card-header bg-primary">
                                            <h5 class="text-light">Topic</h5>
                                        </div>
                                        <div class="card-body ">
                                            <img src="assets/img/8.jpg" alt="Image" class="card-image col-sm-12 col-xxl-12">
                                            <p class="text-black">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                                                industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                                                scrambled. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                                                been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of
                                                type and scrambled.
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Container-fluid Ends-->
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
                    <form class="form-signup" id="contactForm" data-sb-form-api-token="API_TOKEN">
                        <!-- Email address input-->
                        <div class="row input-group-newsletter">
                            <div class="col">
                                <input class="form-control" id="emailAddress" type="email"
                                    placeholder="Enter email address..." aria-label="Enter email address..."
                                    data-sb-validations="required,email" />
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-primary disabled" id="submitButton"
                                    type="submit">
                                    Notify Me!</button>
                            </div>
                        </div>
                        <div class="invalid-feedback mt-2" data-sb-feedback="emailAddress:required">
                            An email is
                            required.
                        </div>
                        <div class="invalid-feedback mt-2" data-sb-feedback="emailAddress:email">
                            Email is not valid.
                        </div>
                        <!-- Submit success message-->
                        <!---->
                        <!-- This is what your users will see when the form-->
                        <!-- has successfully submitted-->
                        <div class="d-none" id="submitSuccessMessage">
                            <div class="text-center mb-3 mt-2 text-white">
                                <div class="fw-bolder">Form submission successful!</div>
                                To activate this form, sign up at
                                <br />
                                <a
                                    href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                            </div>
                        </div>
                        <!-- Submit error message-->
                        <!---->
                        <!-- This is what your users will see when there is-->
                        <!-- an error submitting the form-->
                        <div class="d-none" id="submitErrorMessage">
                            <div class="text-center text-danger mb-3 mt-2">Error sending message!</div>
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

    <script defer>
        window.onload = function () {
            LoadAllArticles();
        }

        function LoadAllArticles() {
            const article = $("#article");

            $.ajax({
                type: "GET",
                url: "http://localhost:44362/CleaningService.svc/LoadAllArticles",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //console.log(data);
                    var obj = JSON.parse(data.LoadAllArticlesResult);
                    //console.log(obj);
                    var allArticles = [];
                    allArticles = obj;

                    console.log(allArticles);

                    $.each(allArticles, function (index, item) {
                        console.log(item);

                        const div1 = $("<div class='col-sm-12 col-xl-6'></div>");
                        const div2 = $("<div class='card card-absolute'></div>");
                        const div3 = $("<div class='card-header bg-primary'></div>");
                        const h5 = $("<h5 class='text-light'></h5>").text(item.heading);
                        const div4 = $("<div class='card-body'></div>");
                        const image = $("<img class='card-image col-sm-12 col-xxl-12'>").attr("src", "https://localhost:44361/assets/user_images/" + item.image_path);
                        const p = $("<p class='text-black'></p>").text(item.description);

                        div4.append(image, p);
                        div3.append(h5);
                        div2.append(div3, div4);
                        div1.append(div2);
                        article.append(div1);
                        

                        /*console.log(item.place_name);

                        const row = $("<tr></tr>");
                        const cell1 = $("<td></td>").text(item.id);
                        const cell2 = $("<td></td>").text(item.place_name);
                        const cell3 = $("<td></td>").text(item.situation);
                        const cell6 = $("<td></td>").text(item.GTF_Member_name);
                        const cell7 = $("<td></td>").text(item.GTF_Member_Contact_number);
                        const cell4 = $("<td></td>");
                        const image = $("<img width='200' height='200'>").attr("src", "https://localhost:44369/assets/user_images/" + item.image_path);
                        const cell5 = $("<td></td>");
                        const btnFlag = $("<button type='button' class='btn btn-pill btn-warning active'>Flag</button>").attr("onClick", "FlagPlace(" + item.id + ")");
                        const cell8 = $("<td></td>");
                        const btnApprove = $("<button type='button' class='btn btn-pill btn-success active'>Approve</button>").attr("onClick", "ApprovePlace(" + item.id + ")");
                        const cell9 = $("<td></td>");
                        const btnReject = $("<button type='button' class='btn btn-pill btn-danger active'>Reject</button>").attr("onClick", "RejectPlace(" + item.id + ")");

                        cell5.append(btnFlag);
                        cell8.append(btnApprove);
                        cell9.append(btnReject);

                        cell4.append(image);
                        row.append(cell1, cell2, cell3, cell6, cell7, cell4, cell5, cell8, cell9);
                        table.append(row);*/


                    });
                },
                error: function (xhr, status, error) {
                    //alert('errr');
                    toastr.warning('Server Error', "Warning");
                }
            })
        }
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
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
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
</body>
</html>
