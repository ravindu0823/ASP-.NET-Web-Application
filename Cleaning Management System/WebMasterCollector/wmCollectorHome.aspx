<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wmCollectorHome.aspx.cs" Inherits="WebMasterCollector.wmCollectorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cleaning Management System - Collector</title>
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
    <form runat="server">
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

            <div>
                <style>
                    td, th {
                        text-align: center;
                    }
                </style>
                <table class="table" id="place_table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Place Name</th>
                            <th scope="col">Situation</th>
                            <th scope="col">GTF Member</th>
                            <th scope="col">Contact Number</th>
                            <th scope="col">Image</th>
                            <th scope="col">View Location</th>
                            <th scope="col">Situation Level</th>
                        </tr>
                    </thead>
                    <tbody>
                        

                    </tbody>
                </table>
            </div>

        </div>

    </form>

    <script defer>
        window.onload = function () {
            LoadAllApprovedPlaces();
        }

        function LoadAllApprovedPlaces() {
            const table = $("#place_table");

            $.ajax({
                type: "GET",
                url: "http://localhost:44362/CleaningService.svc/LoadAllApprovedPlaces",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //console.log(data);
                    var obj = JSON.parse(data.LoadAllApprovedPlacesResult);
                    //console.log(obj);
                    var allPlaces = [];
                    allPlaces = obj;

                    console.log(allPlaces);

                    $.each(allPlaces, function (index, item) {
                        console.log(item);

                        const row = $("<tr></tr>");
                        const cell1 = $("<td></td>").text(item.id);
                        const cell2 = $("<td></td>").text(item.place_name);
                        const cell3 = $("<td></td>").text(item.situation);
                        const cell6 = $("<td></td>").text(item.GTF_Member_name);
                        const cell7 = $("<td></td>").text(item.contact_number);
                        const cell4 = $("<td></td>");
                        const image = $("<img width='200' height='200'>").attr("src", "https://localhost:44369/assets/user_images/" + item.image_path);
                        const cell5 = $("<td></td>");
                        var a = $("<a></a>").attr("href", "wmCollectorViewPlace.aspx?place_id=" + item.id);
                        var button = $("<button class='btn btn-pill btn-success active' type='button'>View Location</button>")

                        if (item.status == 3) {
                            var flag = $("<td class='text-danger'>Warning !!!!!</td>");
                        }

                        a.append(button);
                        cell5.append(a);
                        cell4.append(image);
                        row.append(cell1, cell2, cell3, cell6, cell7, cell4, cell5, flag);
                        table.append(row);


                    });
                },
                error: function (xhr, status, error) {
                    //alert('errr');
                    toastr.warning('Server Error', "Warning");
                }
            })
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
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
    <!-- login js-->
    <!-- Plugin used-->
</asp:Content>
