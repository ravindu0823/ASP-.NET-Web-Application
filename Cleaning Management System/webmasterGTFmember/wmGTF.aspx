<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wmGTF.aspx.cs" Inherits="webmasterGTFmember.wmGTF" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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



            <div class="table-responsive">
                <table class="table" id="place_table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Place Name</th>
                            <th scope="col">Situation</th>
                            <th scope="col">Image</th>
                            <th scope="col">Response</th>
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
            LoadAllPlacesById();
        }

        function LoadAllPlacesById() {
            const table = $("#place_table");
            var memberId = sessionStorage.getItem("member_id");

            $.ajax({
                type: "POST",
                url: "http://localhost:44362/CleaningService.svc/LoadAllPlacesById",
                data: JSON.stringify({
                    "rEF_Place": {
                        ADDEDBY: memberId,
                    }
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data.LoadAllPlacesByIdResult);
                    // console.log(obj);

                    var allPlaces = [];
                    allPlaces = obj;

                    $.each(allPlaces, function (index, item) {
                        console.log(item);

                        const row = $("<tr></tr>");
                        const cell1 = $("<td></td>").text(item.id);
                        const cell2 = $("<td></td>").text(item.place_name);
                        const cell3 = $("<td></td>").text(item.situation);
                        const cell4 = $("<td></td>");
                        const image = $("<img width='200' height='200'>").attr("src", "https://localhost:44369/assets/user_images/" + item.image_path);
                        const cell5 = $("<td></td>").text(item.status == 0 ? "Pending..." : "Approved");
                        cell4.append(image);
                        row.append(cell1, cell2, cell3, cell4, cell5);
                        table.append(row);
                    });
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            })
        }
    </script>


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
</asp:Content>
