<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wm_adminArtical.aspx.cs" Inherits="WebMasterAdmin.wm_adminArtical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="viho admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords"
        content="admin template, viho admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon">
    <title>viho - Premium Admin Template</title>
    <!-- Google font-->
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

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <script>
        window.onload = function () {
            var sessionId = sessionStorage.getItem('admin_id');
            console.log(sessionId);


            if (sessionId == null) {
                window.location.replace("https://localhost:44361/wm_admin");
            }
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-body">

        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-6">
                        <h3>Add new Artcal </h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html" data-bs-original-title="" title="">Home</a></li>

                            <li class="breadcrumb-item active">Artical</li>
                        </ol>
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
                                                            <label>Select The Artcal Image</label>
                                                            <asp:FileUpload class="form-control" ID="imageUpload" runat="server" />
                                                            <asp:LinkButton ID="btnSave" runat="server" class="btn btn-secondary me-3" OnClick="SaveImage">Upload Image</asp:LinkButton>
                                                            <asp:HiddenField ID="pathName" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr />

                                                <label>Heading</label>
                                                <input type="text" class="form-control" id="article_heading" placeholder="Type The Hedding Of Artical.." />

                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label>Articale</label>
                                                            <textarea class="form-control" id="description" rows="4" cols="50"></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col">
                                                        <button type="button" class="btn btn-danger" onclick="AddArticle()">ADD</button>
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



        <script defer>

            
            
            function AddArticle() {
                var pathName = $('#<%= pathName.ClientID %>').val();    
                var article_heading = $('#article_heading').val();
                var description = $('#description').val();

                $.ajax({
                    type: "POST",
                    url: "http://localhost:44362/CleaningService.svc/AddArticle",
                    data: JSON.stringify({
                        "rEF_Article": {
                            HEADING: article_heading,
                            DESCRIPTION: description,
                            IMAGEPATH: pathName
                        }
                    }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {

                        var obj = JSON.parse(data.AddArticleResult);
                        console.log(obj);

                        if (obj.Success == true) {
                            window.alert("Article Added Successfully");
                        }
                    },
                    error: function (xhr, status, error) {
                        console.log(error);
                    }
                })

                // console.log(pathName);
            }
        </script>




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
    </div>
</asp:Content>
