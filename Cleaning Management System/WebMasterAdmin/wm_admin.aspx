<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wm_admin.aspx.cs" Inherits="WebMasterAdmin.wm_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Hotel Management System - Admin Login Page">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon">
    <title>Admin Login Page</title>
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

    <script>
        window.onload = function () {
            var sessionId = sessionStorage.getItem('admin_id');
            console.log(sessionId);


            if (sessionId != null) {
                window.location.replace("https://localhost:44361/wm_adminHome");
            }
        };
    </script>
</head>
<body>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-5">
                    <img class="bg-img-cover bg-center" src="../assets/images/login/4.png" alt="looginpage">
                </div>
                <div class="col-xl-7 p-0">
                    <div class="login-card">
                        <form class="theme-form login-form" runat="server">
                            <h4>Admin Login</h4>
                            <h6>Welcome back Admin!</h6>
                            <div class="form-group">
                                <label>Email Address</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="icon-email"></i></span>
                                    <input type="text" class="form-control" id="username" placeholder="example@.com" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="icon-lock"></i></span>

                                    <input type="password" class="form-control" id="password" placeholder="*********" />
                                    <div class="show-hide"><span class="show"></span></div>
                                </div>
                            </div>

                            <button type="button" class="btn btn-primary btn-block" onclick="test()">L O G I N</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script defer>
            function test() {
                var username = $('#username').val();
                var password = $('#password').val();

                // console.log(username);
                // console.log(password);

                checkCredentials(username, password);
            }

            function checkCredentials(username, password) {
                $.ajax({
                    type: "POST",
                    url: "http://localhost:44362/CleaningService.svc/AuthenticateAdmin",
                    data: JSON.stringify({
                        "rEF_Admin": {
                            USERNAME: username,
                            PASSWORD: password
                        }
                    }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {


                        var obj = JSON.parse(data.AuthenticateAdminResult);
                        console.log(obj);

                        if (obj.dataTable.length > 0) {
                            const adminName = obj.dataTable[0].username;
                            const adminId = obj.dataTable[0].id;

                            sessionStorage.setItem("admin_name", adminName);
                            sessionStorage.setItem("admin_id", adminId);

                            window.alert("Welcome " + adminName);
                            window.location.replace("https://localhost:44361/wm_adminHome");
                        } else {
                            window.alert("Username and Password is incorrect");
                        }
                    },
                    error: function (xhr, status, error) {
                        console.log(error);
                    }
                })
            }
        </script>


    </section>
    <!-- page-wrapper end-->

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
</body>
</html>
