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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

        <!-- Plugin used-->

    <form  runat="server" >
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
        <style>
            td, th {
              text-align: center;
            }
        </style>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Topic</th>
            <th scope="col">Place Name</th>
            <th scope="col">Situation</th>
            <th scope="col">Image</th>
            <th scope="col">Flag</th>
            <th>Approve Report</th>
            <th>Deny Report</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>001</td>
            <td>Park, Glass Bottles</td>
            <td>Children's Park Pathway, Colombo</td>
            <td>Broken glass bottles found in the public square, posing a safety risk to pedestrians and park visitors.</td>
            <td>
              <img src="../assets/sample/img1.jpg" width="100" height="100">
            </td>
           <td>
              <button class="btn btn-pill btn-warning active">Flag</button>
            </td>
            <td>
              <button class="btn btn-pill btn-success active">Approve</button>
            </td>
            <td>
              <button class="btn btn-pill btn-danger active">Deny</button>
            </td>
          </tr>

        </tbody>
        </table>
    </div>

        </div>

        </form>
</asp:Content>
