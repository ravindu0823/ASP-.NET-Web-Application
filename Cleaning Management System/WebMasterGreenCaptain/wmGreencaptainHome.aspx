<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wmGreencaptainHome.aspx.cs" Inherits="WebMasterGreenCaptain.wmGreencaptainHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
    <!-- Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

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
                <table class="table" id="report_table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Place Name</th>
                            <th scope="col">Situation</th>
                            <th scope="col">GTF Member</th>
                            <th scope="col">Contact Number</th>
                            <th scope="col">Image</th>
                            <th scope="col">Flag</th>
                            <th>Approve Report</th>
                            <th>Deny Report</th>
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
            LoadAllPlaces();
        }

        function FlagPlace(id) {
            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/FlagPlace",
                data: JSON.stringify({
                    "rEF_Place": {
                        ID: id
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.FlagPlaceResult);
                    console.log(obj);

                    if (obj.Success == true) {
                        window.alert("Place Flaged Successfully");
                        location.reload();
                    }
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })

            // window.alert("This is Flag Function:" + id);
        }

        function ApprovePlace(id) {
            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/ApprovePlace",
                data: JSON.stringify({
                    "rEF_Place": {
                        ID: id
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.ApprovePlaceResult);
                    console.log(obj);

                    if (obj.Success == true) {
                        window.alert("Place Approved Successfully");
                        location.reload();
                    }
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })

            // window.alert("This is Approve Function:" + id);
        }

        function RejectPlace(id) {
            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/RejectPlace",
                data: JSON.stringify({
                    "rEF_Place": {
                        ID: id
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.RejectPlaceResult);
                    console.log(obj);

                    if (obj.Success == true) {
                        window.alert("Place Rejected Successfully");
                        location.reload();
                    }
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })

            // window.alert("This is Reject Function:" + id);
        }

        function LoadAllPlaces() {
            const table = $("#report_table");

            $.ajax({
                type: "GET",
                url: "http://localhost:44362/CleaningService.svc/LoadAllPlaces",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //console.log(data);
                    var obj = JSON.parse(data.LoadAllPlacesResult);
                    //console.log(obj);
                    var allPlaces = [];
                    allPlaces = obj;

                    console.log(allPlaces);

                    $.each(allPlaces, function (index, item) {
                        console.log(item);

                        console.log(item.place_name);

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
</asp:Content>
